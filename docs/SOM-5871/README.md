## Advantech SOM-5871VC-U0A1

**COM Express Basic Type 6** — вычислительный модуль на базе AMD Ryzen Embedded V1605B.
Официальная страница серии (все артикулы SOM-5871):
[SOM-5871 — Advantech](https://www.advantech.com/emt/products/9b97accf-0a5b-4166-bf75-38159d579dec/som-5871/mod_3417358f-efd6-4ff9-bef6-76e3ce54c674).

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
| **PCIe**                | 1× PEG x8 + GPP: 6 линий (до 6 устройств) — ревизии до ECOM-165390 (с PCIe-мостом PLX PEX8605); 5 линий (до 4 устройств) — после ECOM-165390 (мост снят с производства, линии напрямую от chipset) |
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

## Документация по модулю

- **Спецификация (датасит)** — [SOM_5871_specification.pdf](datasheet/SOM_5871_specification.pdf)
- **COM Express Type 6 Design Guide Rev 1.10** —
  [design/SOM-5871 COM Express Type 6 Design Guide Rev110_220708.pdf](design/SOM-5871%20COM%20Express%20Type%206%20Design%20Guide%20Rev110_220708.pdf)
- **COME Layout Checklist A101-3** —
  [design/SOM-5871 A101-3 COME Layout Checklist V1.01 20200604.xlsx](design/SOM-5871%20A101-3%20COME%20Layout%20Checklist%20V1.01%2020200604.xlsx)
- **User Manual** — [user-manual/SOM-5871_User_Manual_Ed.2_FINAL.pdf](user-manual/SOM-5871_User_Manual_Ed.2_FINAL.pdf)
  (Ed.1: [user-manual/SOM-5871_User_Manual_Ed.1-FINAL.pdf](user-manual/SOM-5871_User_Manual_Ed.1-FINAL.pdf))
- **Application Note** — [user-manual/SOM-5871 Application Note20190226.pdf](user-manual/SOM-5871%20Application%20Note20190226.pdf)
- **Драйверы Windows 10** — [win10-driver/cloud-mail-link.md](win10-driver/cloud-mail-link.md)
  (ссылки на архив с cloud.mail.ru и страницу драйверов Advantech)
- **3D-модели / CAD** — [3d/](3d) (STEP, PDF, EXE, DXF)
- **Product Change Notification (ECOM-165390, окт. 2020)** —
  [product-change/Advantech_Corporation_13256_ECOM_165390__SOM_5871_PCIe_Bridge_EOL_v1.0_20200810_1.pdf](product-change/Advantech_Corporation_13256_ECOM_165390__SOM_5871_PCIe_Bridge_EOL_v1.0_20200810_1.pdf):
  PCIe-мост PLX PEX8605-AB50TQI снят с производства без замены — все x1-линии
  GPP теперь подключены напрямую от chipset. До: I210 + 6 линий GPP (до 6
  устройств); после: I210 + **5 линий GPP (до 4 устройств)**. Требуется новая
  BIOS (1420050267, 0060V111). **Какой вариант — зависит от ревизии модуля:
  существующие/складские платы могут быть с мостом (6 линий), новые — без
  него (5 линий).**

## Отладка / референсная плата — SOM-DB5830-00A1

Отладка SOM-5871 выполняется на отладочной плате
**Advantech SOM-DB5830-00A1** (COM Express Type 6/10 development board,
ATX 304,8 × 244 мм, PICMG COM R3.0 Rev. 3.0). Спецификация:
[som-db5830/SOM-DB5830_specification.pdf](som-db5830/SOM-DB5830_specification.pdf),
схема: [som-db5830/som-db5830_sch.pdf](som-db5830/som-db5830_sch.pdf).

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

### Разводка USB-интерфейсов

По схеме [som-db5830/som-db5830_sch.pdf](som-db5830/som-db5830_sch.pdf) (листы 4–10). Все USB-порты
модуля выведены на три внешних разъёма:

| № | Интерфейс | Порты модуля (пины COMe) | Промежуточные компоненты | Разъём (парт) | Пины разъёма |
|:-:|:----------|:-------------------------|:-------------------------|:--------------|:-------------|
| 1 | USB 3.1 Port 0-1 (SuperSpeed) | `USB_SSTX0/1±` (C3-C10, D3-D10), `USB_SSRX0/1±` | **U44 — PI3EQX1004B1ZHEX** (redriver Gen2), CMC, ESD TPD4E02B04DQAR | **LAN0_USB1A** (RJ45 + USB×2, dual-stacked Type-A) | 14-19 / 214-219 (SS TX/RX ±) |
| 2 | USB 2.0 Port 0-1 | `USB0/1_P±` (A45-A46, B45-B46) | CMC B1/B2, ESD D1/D2 | **LAN0_USB1A** (тот же) | 11-13 / 210-212 (VBUS, D-, D+) |
| 3 | USB 3.1 Port 2-3 (SuperSpeed) | `USB_SSTX2/3±` (C9-C13, D9-D13), `USB_SSRX2/3±` | **U45 — PI3EQX1004B1ZHEX** (redriver Gen2), CMC, ESD TPD4E02B04DQAR | **USB3.2_1** (dual-stacked Type-A, «USB3.1x2_9H») | 14-19 / 214-219 (SS TX/RX ±) |
| 4 | USB 2.0 Port 2-3 | `USB2/3_P±` (A42-A43, B42-B43) | CMC B10/B12, ESD D4/D5 | **USB3.2_1** (тот же) | 11-13 / 210-212 (VBUS, D-, D+) |
| 5 | USB 2.0 Port 4-7 | `USB4/5/6/7_P±` (A39-A46, B39-B46) | CMC B24-B28, ESD D7/D8, LDO RT9742CGJ5F (U40/U41) | **USB2.0_1** (quad-stacked Type-A, парт 1654009643) | 1-16 (4× VCC/USB-/USB+/GND) |

**VBUS / защита от перегрузки:**

| Разъём | VBUS | OC-сигнал (пин модуля) |
|:-------|:-----|:-----------------------|
| LAN0_USB1A (Port 0-1) | +V5_USB3.1_Y_01 (RT9742AGJ5F, U39), +V5_DUAL | `USB_OC#01` (B44) |
| USB3.2_1 (Port 2-3) | +V5_USB3.2_Z_23 (RT9742AGJ5F, U43), +V5_DUAL | `USB_OC#23` (A44) |
| USB2.0_1 (Port 4-7) | +V5_USB2.0_Z_45 / +V5_USB2.0_Z_67 (RT9742CGJ5F, U40/U41) | `USB_OC#45` (B38), `USB_OC#67` (A38, через джампер J1) |

> **Примечания:**
> - схема в PDF — рева A3; для референса SOM-DB5830-00A1 парт-номера
>   redriver/CMC/коннекторов могут отличаться (см. Revision History),
>   топология разводки одинакова;
> - USB 3.1 Port 0-1 физически сидит в RJ45-стеке LAN0 (Gigabit Ethernet
>   + 2× USB); Port 3 (`USB_SSTX3/3`, C12-C13/D12-D13) модулем не
>   используется (N/A в [pinout](../../hw/pinout.md));
> - USB 2.0 Port 0-7 — порты CPU (не через хабы модуля).


