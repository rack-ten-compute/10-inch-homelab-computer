# PEG x8 → MCIO x8 (74-pin) — mapping для несущей платы

Вывод шины PEG x8 (PCIe x8) с разъёма COM Express (Rows C/D) SOM-5871 на разъём
MCIO x8 (74-pin, SFF-TA-1016, MCIO 8i) несущей платы. Направление: модуль —
endpoint (device), несущая плата — host. Передача от модуля (PEG_TX, ряд D)
заходит на MCIO как **PER** (host-RX), приём на модуле (PEG_RX, ряд C) —
**PET** (host-TX).

Источники:
- Пины модуля: [`pinout.md`](../pinout.md) / [`comexpress-abcd.md`](pinout/comexpress-abcd.md)
  (SOM-5871 A101-3, Layout Checklist).
- Пины MCIO: таблица коммутации, согласованная с пользователем (MCIO 8i,
  host view).

## Таблица трассировки

| Сигнал | Пин COM Express (модуль) | Пин MCIO (несущая) | Имя MCIO (host view) | Направление |
|:-------|:-------------------------|:-------------------|:---------------------|:------------|
| GND | все пины GND модуля | A1 / B1 | GND | — |
| Lane 0 TX | D52 (+) / D53 (−) | B2 / B3 | PERp0 / PERn0 | модуль → несущая |
| Lane 0 RX | C52 (+) / C53 (−) | A2 / A3 | PETp0 / PETn0 | несущая → модуль |
| GND | все пины GND модуля | A4 / B4 | GND | — |
| Lane 1 TX | D55 (+) / D56 (−) | B5 / B6 | PERp1 / PERn1 | модуль → несущая |
| Lane 1 RX | C55 (+) / C56 (−) | A5 / A6 | PETp1 / PETn1 | несущая → модуль |
| GND | все пины GND модуля | A7 / B7 | GND | — |
| 3V3_AUX (deassert) | — (NC, на модуле нет) | A8 | 3V3_AUX_MGMT | несущая → разъём MCIO |
| SMBus SCL | B13 (SMB_CK) | B8 | SMBUS_SCL, PU 4,7 кОм к 3.3V | обе стороны |
| FLEXIO0 | — (NC) | A9 | FLEXIO0, pull-down 42,2 Ом к GND | — |
| SMBus SDA | B14 (SMB_DAT) | B9 | SMBUS_SDA, PU 4,7 кОм к 3.3V | обе стороны |
| GND | все пины GND модуля | A10 / B10 | GND | — |
| REFCLK+ (100 МГц) | A88 (PCIE_CK_REF+) | A11 | REFCLK_A_Dp, диф. пара 85 Ом | несущая → модуль |
| PERST# | B50 (CB_RESET#) | B11 | PERST_A_N | несущая → модуль |
| REFCLK− (100 МГц) | A89 (PCIE_CK_REF−) | A12 | REFCLK_A_Dn, диф. пара 85 Ом | несущая → модуль |
| Cable Presence | — (NC) | B12 | CBL_PRES_A# | — |
| GND | все пины GND модуля | A13 / B13 | GND | — |
| Lane 2 TX | D58 (+) / D59 (−) | B14 / B15 | PERp2 / PERn2 | модуль → несущая |
| Lane 2 RX | C58 (+) / C59 (−) | A14 / A15 | PETp2 / PETn2 | несущая → модуль |
| GND | все пины GND модуля | A16 / B16 | GND | — |
| Lane 3 TX | D61 (+) / D62 (−) | B17 / B18 | PERp3 / PERn3 | модуль → несущая |
| Lane 3 RX | C61 (+) / C62 (−) | A17 / A18 | PETp3 / PETn3 | несущая → модуль |
| GND | все пины GND модуля | A19 / B19 | GND | — |
| Lane 4 TX | D64 (+) / D65 (−) | B20 / B21 | PERp4 / PERn4 | модуль → несущая |
| Lane 4 RX | C64 (+) / C65 (−) | A20 / A21 | PETp4 / PETn4 | несущая → модуль |
| GND | все пины GND модуля | A22 / B22 | GND | — |
| Lane 5 TX | D68 (+) / D69 (−) | B23 / B24 | PERp5 / PERn5 | модуль → несущая |
| Lane 5 RX | C68 (+) / C69 (−) | A23 / A24 | PETp5 / PETn5 | несущая → модуль |
| GND | все пины GND модуля | A25 / B25 | GND | — |
| Lane 6 TX | D71 (+) / D72 (−) | B26 / B27 | PERp6 / PERn6 | модуль → несущая |
| Lane 6 RX | C71 (+) / C72 (−) | A26 / A27 | PETp6 / PETn6 | несущая → модуль |
| GND | все пины GND модуля | A28 / B28 | GND | — |
| Lane 7 TX | D74 (+) / D75 (−) | B29 / B30 | PERp7 / PERn7 | модуль → несущая |
| Lane 7 RX | C74 (+) / C75 (−) | A29 / A30 | PETp7 / PETn7 | несущая → модуль |
| GND (хвост) | — | A31..A37 / B31..B37 | GND | — |

## Примечания

- **PERST# (B50, CB_RESET#)**: на референсной плате SOM-DB5830 (лист 4)
  цепь PERST# выполнена как: `CB_A_RESET#` (PCH) → **R410 33 Ом 1% 0402** →
  **U17 (TI SN74AHC1G125DBVR, SOT-23-5)** → `CB_RESET#` → B50. На нашей
  несущей плате MCIO B11 (PERST_A_N) подключается к B50 через аналогичный
  буфер/резистор (или напрямую — по решению схемотехнике). B49 (SYS_RESET#)
  — отдельная цепь, к MCIO не подключается.
- **REFCLK (A88/A89, PCIE_CK_REF±)**: на DB5830 референсный тактовый PCIe
  выведен на COM Express (A88/A89) с буфера (лист 15: «PCIE Clock Buffer
  support»). На MCIO A11/A12 — диф. пара 85 Ом, источник 100 МГц — по
  электрической схеме несущей платы.
- **3V3_AUX**: на SOM-5871 нет отдельного пина 3.3V AUX — дежурное питание
  на разъём MCIO подаётся со схемы питания несущей платы (MCIO A8 —
  источник, не приёмник).
- **WAKE#**: не выведен в таблицу; на модуле WAKE0#/WAKE1# — B66/B67
  (при необходимости подключить к MCIO A10 или отдельному пину).
- **CLKREQ#**: на SOM-5871 не выведен — NC (B13 на MCIO не используется).
- **PEG_ENABLE# (D97) / PEG_LANE_RV# (D54)**: не в таблице; PEG_ENABLE#
  оставить по схеме модуля (NC/по умолчанию).