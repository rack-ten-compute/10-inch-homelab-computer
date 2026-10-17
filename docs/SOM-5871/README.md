## Advantech SOM-5871VC-U0A1

**COM Express Basic Type 6** — вычислительный модуль на базе AMD Ryzen Embedded V1605B.

| Параметр                | Характеристика                               |
| ----------------------- | -------------------------------------------- |
| **Процессор**           | AMD Ryzen Embedded V1605B                    |
| **Ядер / потоков**      | 4 / 8                                        |
| **Частота**             | 2.0 ГГц, Boost до 3.6 ГГц                    |
| **Кэш L3**              | 2 МБ                                         |
| **TDP**                 | 12–25 Вт                                     |
| **ОЗУ**                 | 2× DDR4, до 32 ГБ, ECC / Non-ECC, до 2400MT/s             |
| **Ethernet**            | Intel i210AT, 10/100/1000 Мбит/с             |
| **SATA**                | 2× SATA III (6 Гбит/с)                       |
| **USB**                 | 2× USB 3.1 Gen2, 1× USB 3.1 Gen1, 8× USB 2.0 |
| **PCIe**                | 16 лэйнов PCIe Gen3                                 |
| **COM**                 | 2× COM                                       |
| **GPIO**                | 8-bit                                        |
| **CAN**                 | Опционально                                  |
| **SPI / I²C**           | Есть                                         |
| **TPM**                 | TPM 2.0                                      |
| **Видео**               | До 4 независимых 4K-дисплеев                 |
| **Питание**             | Vin: 8.5–20 В; VSB: 4.75–5.25 В              |
| **Рабочая температура** | 0…+60 °C                                     |
| **Габариты**            | 125 × 95 мм                                  |
| **Интерфейс подключения**         | COM Express Basic Type 6                     |

## Отладка / референсная плата — SOM-DB5830-00A1

Отладка SOM-5871 выполняется на отладочной плате
**Advantech SOM-DB5830-00A1** (COM Express Type 6/10 development board,
ATX 304,8 × 244 мм, PICMG COM R3.0 Rev. 3.0). Спецификация:
[SOM-DB5830_specification.pdf](SOM-DB5830_specification.pdf),
схема: [som-db5830_sch.pdf](som-db5830_sch.pdf).

| Параметр | Характеристика (A1) |
| --- | --- |
| Совместимость | COM Express Basic/Compact/Mini, Type 6 (Type 10 — N/A для A1) |
| COMe-разъём | 5 мм высота (под SOM-5871) |
| PCIe | x16 (Gen3) + 2× x4 (Gen3), LPC |
| Видео | VGA (D-SUB 15P), LVDS 18/24-bit single/dual channel, HDMI ×1, DisplayPort ×2 |
| Ethernet | 1× RJ45 (Gigabit) |
| SATA | 4× SATA 3.0 (Gen3) |
| USB | 4× USB 3.2 Gen2 (Type-A), USB 2.0 (порты 0–7) |
| COM | 2× COM (box header 5×2P) |
| Служебные | GPIO (pin header 10P), SMBus/I2C (wafer box 4P), SPI socket SOP8, CAN (mux с SER1), Port 80, HD Audio (Realtek ALC888), MicroSD (SDIO, mux с GPIO) |
| Фан | 2 (1 smart fan с модуля + 1 fixed-voltage) |
| Питание | ATX: Vin 4,75–20 В, VSB 4,75–5,25 В |
| Температура | 0…+60 °C |

**Средства отладки:**

- **Visible Debug Utility** — индикация BIOS Port 80 и power state на плате;
- **Port 80** (A1) / I2C (A2) — трассировка POST-кодов;
- **SPI BIOS socket** — перепрошивка/отладка UEFI;
- **SMBus / I2C / GPIO / CAN** — доступ к системным шинам модуля;
- **LPC/eSPI** — отладка southbridge-сообщения;
- **2× фан** — проверка управления охлаждением (smart fan с модуля).

Ограничения A1 по сравнению с A2/A3: PCIe Gen3 (не Gen4), нет поддержки
Type 10, нет TPM на плате (TPM 2.0 — опция A1), один Gigabit Ethernet.

