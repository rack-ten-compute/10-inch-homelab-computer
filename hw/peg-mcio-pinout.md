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
| 3V3_AUX (deassert) | B18 | A8 | 3V3_AUX_MGMT | несущая → модуль |
| SMBus SCL | B13 (SMB_CK) | B8 | SMBUS_SCL, PU 4,7 кОм к 3.3V | обе стороны |
| FLEXIO0 | — (NC) | A9 | FLEXIO0, pull-down 42,2 Ом к GND | — |
| SMBus SDA | B14 (SMB_DAT) | B9 | SMBUS_SDA, PU 4,7 кОм к 3.3V | обе стороны |
| GND | все пины GND модуля | A10 / B10 | GND | — |
| REFCLK+ (100 МГц) | D33 | A11 | REFCLK_A_Dp, диф. пара 85 Ом | несущая → модуль |
| PERST# | B10 | B11 | PERST_A_N | несущая → модуль |
| REFCLK− (100 МГц) | D34 | A12 | REFCLK_A_Dn, диф. пара 85 Ом | несущая → модуль |
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

- **REFCLK**: на SOM-5871 D33/D34 — `DDI1_PAIR2+/−` (не REFCLK); REFCLK
  PCIe на модуле — `PCIE_CK_REF±` (A88/A89). В таблице D33/D34 оставлены
  по согласованной схеме; фактический источник 100 МГц на несущей — по
  электрической схеме.
- **PERST#**: на SOM-5871 B10 — `LPC_CLK/ESPI_CK`; SYS_RESET#/CB_RESET# —
  B49/B50. B10 оставлен по согласованной схеме; направление — несущая →
  модуль (PERST# генерирует host).
- **B18**: на SOM-5871 — `SUS_STAT#/ESPI_RESET#` (не 3V3_AUX); дежурное
  питание 3.3V на несущей подаётся со своей схемы питания.
- **WAKE# / CLKREQ#**: на модуле WAKE0#/WAKE1# — B66/B67; CLKREQ# на
  SOM-5871 не выведен — NC.
- **PEG_ENABLE# (D97) / PEG_LANE_RV# (D54)**: не в таблице; PEG_ENABLE#
  оставить по схеме модуля (NC/по умолчанию).
