# Генерация pinout XLS из comexpress-abcd.md (правило pinout-rules-xls)
# Вкладки A/B/C/D (стороны разъёма), порядок пинов 1..110 не нарушается,
# Side: A/C = LEFT, B/D = RIGHT.
$ErrorActionPreference = 'Stop'

$src = Join-Path $PSScriptRoot 'comexpress-abcd.md'
$dst = Join-Path $PSScriptRoot 'comexpress-abcd-pinout.xlsx'

$lines = Get-Content -LiteralPath $src -Encoding UTF8

$pin    = @{}   # row letter -> { position -> signal }
$pinNum = @{}   # row letter -> list of position numbers in file order
foreach ($l in $lines) {
    if ($l -match '^\s*([A-D])(\d+)\s*-\s*(.+?)\s*$') {
        $letter = $Matches[1]; $n = [int]$Matches[2]; $sig = $Matches[3]
        if (-not $pin.ContainsKey($letter)) { $pin[$letter] = @{}; $pinNum[$letter] = @() }
        $pin[$letter][$n]  = $sig
        $pinNum[$letter] += $n
    }
}

function Get-Type([string]$sig) {
    if ($sig -match '^GND') { return 'GND' }
    if ($sig -eq '+VIN') { return 'PWR' }
    if ($sig -eq 'Reserved') { return 'GND' }  # COM Express: reserved = GND
    return 'BIDIR'
}

$excel = New-Object -ComObject Excel.Application
$excel.Visible = $false
$excel.DisplayAlerts = $false
$wb = $excel.Workbooks.Add()

$letters = @('A','B','C','D')
$firstSheet = $true
foreach ($letter in $letters) {
    $sig = $pin[$letter]; $nums = $pinNum[$letter]
    if ($firstSheet) { $ws = $wb.Worksheets.Item(1); $firstSheet = $false }
    else { $ws = $wb.Worksheets.Add([Type]::Missing, $wb.Worksheets.Item($wb.Worksheets.Count)) }
    $ws.Name = $letter

    # заголовок (единственная строка-заголовок на листе, далее только данные)
    $hdr = @('Pin','Ball','Type','Side')
    for ($c = 1; $c -le $hdr.Count; $c++) { $ws.Cells.Item(1, $c).Value2 = $hdr[$c-1] }

    $side = if ($letter -eq 'A' -or $letter -eq 'C') { 'LEFT' } else { 'RIGHT' }
    $r = 2
    foreach ($n in $nums) {   # порядок из файла: 1..110, 110 - сверху (последняя строка)
        $name = "$letter$n"
        $s = $sig[$n]
        $ws.Cells.Item($r, 1).Value2 = $s
        $ws.Cells.Item($r, 2).Value2 = $name
        $ws.Cells.Item($r, 3).Value2 = (Get-Type $s)
        $ws.Cells.Item($r, 4).Value2 = $side
        $r++
    }
    $used = $ws.UsedRange
    $used.HorizontalAlignment = -4131   # xlLeft
    $used.VerticalAlignment   = -4108   # xlTop
}

# удалить лишние пустые листы
while ($wb.Worksheets.Count -gt 4) { $wb.Worksheets.Item($wb.Worksheets.Count).Delete() }

$wb.SaveAs($dst, 51)   # 51 = xlOpenXMLWorkbook (.xlsx)
$wb.Close($false)
$excel.Quit()
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($excel) | Out-Null
[System.GC]::Collect(); [System.GC]::WaitForPendingFinalizers()

Write-Host "OK: $dst"
foreach ($letter in $letters) { Write-Host ("{0}: {1} pins" -f $letter, $pinNum[$letter].Count) }
