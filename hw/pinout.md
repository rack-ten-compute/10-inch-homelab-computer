# SOM-5871 — Pinout разъёма COM Express (Basic Module, 440 pin)

Источник: вкладки `Row A`/`Row B`/`Row C`/`Row D` (колонка *SOM-5871 A101-3*) из [`docs/SOM-5871/design/SOM-5871 A101-3 COME Layout Checklist V1.01 20200604.xlsx`](../docs/SOM-5871/design/SOM-5871%20A101-3%20COME%20Layout%20Checklist%20V1.01%2020200604.xlsx).

Pinout Type 6 Rev 3.0, 2 × 220-pin (A/B и C/D), шаг 0,5 мм. Сигналы в колонке модуля; **N/A / RSVD** — не используются модулем.


## Row A

| Пин | Сигнал | Группа |
|:----|:-------|:-------|
| A1 | GND (FIXED) | Питание / GND |
| A2 | GBE0_MDI3- | GbE (I210-AT) |
| A3 | GBE0_MDI3+ | GbE (I210-AT) |
| A4 | GBE0_LINK100# | GbE (I210-AT) |
| A5 | GBE0_LINK1000# | GbE (I210-AT) |
| A6 | GBE0_MDI2- | GbE (I210-AT) |
| A7 | GBE0_MDI2+ | GbE (I210-AT) |
| A8 | GBE0_LINK# | GbE (I210-AT) |
| A9 | GBE0_MDI1- | GbE (I210-AT) |
| A10 | GBE0_MDI1+ | GbE (I210-AT) |
| A11 | GND (FIXED) | Питание / GND |
| A12 | GBE0_MDI0- | GbE (I210-AT) |
| A13 | GBE0_MDI0+ | GbE (I210-AT) |
| A14 | N/A | GbE (I210-AT) |
| A15 | SUS_S3# | PSM (управление) |
| A16 | SATA0_TX+ | SATA 0 |
| A17 | SATA0_TX- | SATA 0 |
| A18 | SUS_S5# | PSM (управление) |
| A19 | SATA0_RX+ | SATA 0 |
| A20 | SATA0_RX- | SATA 0 |
| A21 | GND (FIXED) | Питание / GND |
| A22 | N/A | SATA 2 |
| A23 | N/A | SATA 2 |
| A24 | SUS_S5# | PSM (управление) |
| A25 | N/A | SATA 2 |
| A26 | N/A | SATA 2 |
| A27 | BATLOW# | PSM (управление) |
| A28 | (S)ATA_ACT# | SATA (общие) |
| A29 | HDA_SYNC | HD Audio (AC'97/HDA) |
| A30 | HDA_RST# | HD Audio (AC'97/HDA) |
| A31 | GND (FIXED) | Питание / GND |
| A32 | HDA_BITCLK | HD Audio (AC'97/HDA) |
| A33 | HDA_SDOUT | HD Audio (AC'97/HDA) |
| A34 | BIOS_DIS0# | Разное |
| A35 | THRMTRIP# | PSM (управление) |
| A36 | USB6- | USB 2.0 |
| A37 | USB6+ | USB 2.0 |
| A38 | USB_6_7_OC# | USB 2.0 (OC) |
| A39 | USB4- | USB 2.0 |
| A40 | USB4+ | USB 2.0 |
| A41 | GND (FIXED) | Питание / GND |
| A42 | USB2- | USB 2.0 |
| A43 | USB2+ | USB 2.0 |
| A44 | USB_2_3_OC# | USB 2.0 (OC) |
| A45 | USB0- | USB 2.0 |
| A46 | USB0+ | USB 2.0 |
| A47 | VCC_RTC | Питание / GND |
| A48 | N/A | RSVD |
| A49 | GBE0_SDP | GbE (I210-AT) |
| A50 | LPC_SERIRQ | LPC |
| A51 | GND (FIXED) | Питание / GND |
| A52 | PCIE_TX5+ (Optional) | PCIe |
| A53 | PCIE_TX5- (Optional) | PCIe |
| A54 | GPI0 | GPIO |
| A55 | PCIE_TX4+ | PCIe |
| A56 | PCIE_TX4- | PCIe |
| A57 | GND | Питание / GND |
| A58 | PCIE_TX3+ | PCIe |
| A59 | PCIE_TX3- | PCIe |
| A60 | GND (FIXED) | Питание / GND |
| A61 | PCIE_TX2+ | PCIe |
| A62 | PCIE_TX2- | PCIe |
| A63 | GPI1 | GPIO |
| A64 | PCIE_TX1+ | PCIe |
| A65 | PCIE_TX1- | PCIe |
| A66 | GND | Питание / GND |
| A67 | GPI2 | GPIO |
| A68 | PCIE_TX0+ | PCIe |
| A69 | PCIE_TX0- | PCIe |
| A70 | GND (FIXED) | Питание / GND |
| A71 | LVDS_A0+ | LVDS |
| A72 | LVDS_A0- | LVDS |
| A73 | LVDS_A1+ | LVDS |
| A74 | LVDS_A1- | LVDS |
| A75 | LVDS_A2+ | LVDS |
| A76 | LVDS_A2- | LVDS |
| A77 | LVDS_VDD_EN | LVDS |
| A78 | LVDS_A3+ | LVDS |
| A79 | LVDS_A3- | LVDS |
| A80 | GND (FIXED) | Питание / GND |
| A81 | LVDS_A_CK+ | LVDS |
| A82 | LVDS_A_CK- | LVDS |
| A83 | LVDS_I2C_CK | LVDS |
| A84 | LVDS_I2C_DAT | LVDS |
| A85 | GPI3 | GPIO |
| A86 | N/A | RSVD |
| A87 | eDP_HPD(Optional) | RSVD |
| A88 | PCIE0_CLK_REF+ | PCIe |
| A89 | PCIE0_CLK_REF- | PCIe |
| A90 | GND (FIXED) | Питание / GND |
| A91 | SPI_POWER | SPI |
| A92 | SPI_MISO | SPI |
| A93 | GPO0 | GPIO |
| A94 | SPI_CLK | SPI |
| A95 | SPI_MOSI | SPI |
| A96 | TPM_PP | Разное |
| A97 | N/C | MTD/TPM |
| A98 | SER0_TX | RS-232 |
| A99 | SER0_RX | RS-232 |
| A100 | GND (FIXED) | Питание / GND |
| A101 | SER1_TX | RS-232 |
| A102 | SER1_RX | RS-232 |
| A103 | LID# | PSM (управление) |
| A104 | VCC_12V | Питание / GND |
| A105 | VCC_12V | Питание / GND |
| A106 | VCC_12V | Питание / GND |
| A107 | VCC_12V | Питание / GND |
| A108 | VCC_12V | Питание / GND |
| A109 | VCC_12V | Питание / GND |
| A110 | GND (FIXED) | Питание / GND |

## Row B

| Пин | Сигнал | Группа |
|:----|:-------|:-------|
| B1 | GND (FIXED) | Питание / GND |
| B2 | GBE0_ACT# | GbE (I210-AT) |
| B3 | LPC_FRAME# | LPC |
| B4 | LPC_AD0 | LPC |
| B5 | LPC_AD1 | LPC |
| B6 | LPC_AD2 | LPC |
| B7 | LPC_AD3 | LPC |
| B8 | N/A | LPC |
| B9 | N/A | LPC |
| B10 | LPC_CLK | LPC |
| B11 | GND (FIXED) | Питание / GND |
| B12 | PWRBTN# | PSM (управление) |
| B13 | SMB_CK | PSM (управление) |
| B14 | SMB_DAT | PSM (управление) |
| B15 | SMB_ALERT# | PSM (управление) |
| B16 | SATA1_TX+ | SATA 1 |
| B17 | SATA1_TX- | SATA 1 |
| B18 | SUS_STAT# | PSM (управление) |
| B19 | SATA1_RX+ | SATA 1 |
| B20 | SATA1_RX- | SATA 1 |
| B21 | GND (FIXED) | Питание / GND |
| B22 | N/A | SATA 3 |
| B23 | N/A | SATA 3 |
| B24 | PWR_OK | PSM (управление) |
| B25 | N/A | SATA 3 |
| B26 | N/A | SATA 3 |
| B27 | WDT | Разное |
| B28 | HDA_SDIN2 | HD Audio (AC'97/HDA) |
| B29 | HDA_SDIN1 | HD Audio (AC'97/HDA) |
| B30 | HDA_SDIN0 | HD Audio (AC'97/HDA) |
| B31 | GND (FIXED) | Питание / GND |
| B32 | SPKR | Разное |
| B33 | I2C_CK | Разное |
| B34 | I2C_DAT | Разное |
| B35 | THRM# | PSM (управление) |
| B36 | USB7- | USB 2.0 |
| B37 | USB7+ | USB 2.0 |
| B38 | USB_4_5_OC# | USB 2.0 (OC) |
| B39 | USB5- | USB 2.0 |
| B40 | USB5+ | USB 2.0 |
| B41 | GND (FIXED) | Питание / GND |
| B42 | USB3- | USB 2.0 |
| B43 | USB3+ | USB 2.0 |
| B44 | USB_0_1_OC# | USB 2.0 (OC) |
| B45 | USB1- | USB 2.0 |
| B46 | USB1+ | USB 2.0 |
| B47 | N/A | SPI |
| B48 | N/A | USB 3.1 |
| B49 | SYS_RESET# | PSM (управление) |
| B50 | CB_RESET# | PSM (управление) |
| B51 | GND (FIXED) | Питание / GND |
| B52 | PCIE_RX5+ (Optional) | PCIe |
| B53 | PCIE_RX5- (Optional) | PCIe |
| B54 | GPO1 | GPIO |
| B55 | PCIE_RX4+ | PCIe |
| B56 | PCIE_RX4- | PCIe |
| B57 | GPO2 | GPIO |
| B58 | PCIE_RX3+ | PCIe |
| B59 | PCIE_RX3- | PCIe |
| B60 | GND (FIXED) | Питание / GND |
| B61 | PCIE_RX2+ | PCIe |
| B62 | PCIE_RX2- | PCIe |
| B63 | GPO3 | GPIO |
| B64 | PCIE_RX1+ | PCIe |
| B65 | PCIE_RX1- | PCIe |
| B66 | WAKE0# | PSM (управление) |
| B67 | WAKE1# | PSM (управление) |
| B68 | PCIE_RX0+ | PCIe |
| B69 | PCIE_RX0- | PCIe |
| B70 | GND (FIXED) | Питание / GND |
| B71 | LVDS_B0+ | LVDS (DDI0) |
| B72 | LVDS_B0- | LVDS (DDI0) |
| B73 | LVDS_B1+ | LVDS (DDI0) |
| B74 | LVDS_B1- | LVDS (DDI0) |
| B75 | LVDS_B2+ | LVDS (DDI0) |
| B76 | LVDS_B2- | LVDS (DDI0) |
| B77 | LVDS_B3+ | LVDS (DDI0) |
| B78 | LVDS_B3- | LVDS (DDI0) |
| B79 | LVDS_BKLT_EN | LVDS |
| B80 | GND (FIXED) | Питание / GND |
| B81 | LVDS_B_CK+ | LVDS (DDI0) |
| B82 | LVDS_B_CK- | LVDS (DDI0) |
| B83 | LVDS_BKLT_CTRL | LVDS |
| B84 | VCC_5V_SBY | Питание / GND |
| B85 | VCC_5V_SBY | Питание / GND |
| B86 | VCC_5V_SBY | Питание / GND |
| B87 | VCC_5V_SBY | Питание / GND |
| B88 | BIOS_DIS1# | Разное |
| B89 | VGA_RED | VGA (DDI0) |
| B90 | GND (FIXED) | Питание / GND |
| B91 | VGA_GRN | VGA (DDI0) |
| B92 | VGA_BLU | VGA (DDI0) |
| B93 | VGA_HSYNC | VGA (DDI0) |
| B94 | VGA_VSYNC | VGA (DDI0) |
| B95 | VGA_I2C_CK | VGA (DDI0) |
| B96 | VGA_I2C_DAT | VGA (DDI0) |
| B97 | SPI_CS# | SPI |
| B98 | RSVD | DDI0 |
| B99 | RSVD | DDI0 |
| B100 | GND (FIXED) | Питание / GND |
| B101 | FAN_PWMOUT | PSM (управление) |
| B102 | FAN_TACHIN | PSM (управление) |
| B103 | SLEEP# | PSM (управление) |
| B104 | VCC_12V | Питание / GND |
| B105 | VCC_12V | Питание / GND |
| B106 | VCC_12V | Питание / GND |
| B107 | VCC_12V | Питание / GND |
| B108 | VCC_12V | Питание / GND |
| B109 | VCC_12V | Питание / GND |
| B110 | GND (FIXED) | Питание / GND |

## Row C

| Пин | Сигнал | Группа |
|:----|:-------|:-------|
| C1 | GND (FIXED) | Питание / GND |
| C2 | GND | Питание / GND |
| C3 | USB_SSRX0- | USB 3.1 |
| C4 | USB_SSRX0+ | USB 3.1 |
| C5 | GND | Питание / GND |
| C6 | USB_SSRX1- | USB 3.1 |
| C7 | USB_SSRX1+ | USB 3.1 |
| C8 | GND | Питание / GND |
| C9 | USB_SSRX2- | USB 3.1 |
| C10 | USB_SSRX2+ | USB 3.1 |
| C11 | GND (FIXED) | Питание / GND |
| C12 | N/A | USB 3.1 |
| C13 | N/A | USB 3.1 |
| C14 | GND | Питание / GND |
| C15 | N/A | DDI1 (DisplayPort) |
| C16 | N/A | DDI1 (DisplayPort) |
| C17 | RSVD | RSVD |
| C18 | RSVD | RSVD |
| C19 | PCIE_RX6+ | PCIe |
| C20 | PCIE_RX6- | PCIe |
| C21 | GND (FIXED) | Питание / GND |
| C22 | PCIE_RX7+  (optional) | PCIe |
| C23 | PCIE_RX7-   (optional) | PCIe |
| C24 | DDI1_HPD | DDI1 (DisplayPort) |
| C25 | N/A | DDI1 (DisplayPort) |
| C26 | N/A | DDI1 (DisplayPort) |
| C27 | RSVD | RSVD |
| C28 | RSVD | RSVD |
| C29 | N/A | DDI1 (DisplayPort) |
| C30 | N/A | DDI1 (DisplayPort) |
| C31 | GND (FIXED) | Питание / GND |
| C32 | DDI2_CTRLCLK_AUX+ | DDI2 (DisplayPort) |
| C33 | DDI2_CTRLDATA_AUX- | DDI2 (DisplayPort) |
| C34 | DDI2_DDC_AUX_SEL | DDI2 (DisplayPort) |
| C35 | RSVD | RSVD |
| C36 | DDI3_CTRLCLK_AUX+ (optional) | DDI3 (DisplayPort) |
| C37 | DDI3_CTRLDATA_AUX- (optional) | DDI3 (DisplayPort) |
| C38 | DDI3_DDC_AUX_SEL | DDI3 (DisplayPort) |
| C39 | DDI3_PAIR0+(optional) | DDI3 (DisplayPort) |
| C40 | DDI3_PAIR0- (optional) | DDI3 (DisplayPort) |
| C41 | GND (FIXED) | Питание / GND |
| C42 | DDI3_PAIR1+(optional) | DDI3 (DisplayPort) |
| C43 | DDI3_PAIR1-(optional) | DDI3 (DisplayPort) |
| C44 | DDI3_HPD(optional) | DDI3 (DisplayPort) |
| C45 | RSVD | RSVD |
| C46 | DDI3_PAIR2+(optional) | DDI3 (DisplayPort) |
| C47 | DDI3_PAIR2-(optional) | DDI3 (DisplayPort) |
| C48 | RSVD | RSVD |
| C49 | DDI3_PAIR3+(optional) | DDI3 (DisplayPort) |
| C50 | DDI3_PAIR3-(optional) | DDI3 (DisplayPort) |
| C51 | GND (FIXED) | Питание / GND |
| C52 | PEG_RX0+ | PCIe |
| C53 | PEG_RX0- | PCIe |
| C54 | N/C | MTD/TPM |
| C55 | PEG_RX1+ | PCIe |
| C56 | PEG_RX1- | PCIe |
| C57 | N/C | MTD/TPM |
| C58 | PEG_RX2+ | PCIe |
| C59 | PEG_RX2- | PCIe |
| C60 | GND (FIXED) | Питание / GND |
| C61 | PEG_RX3+ | PCIe |
| C62 | PEG_RX3- | PCIe |
| C63 | RSVD | RSVD |
| C64 | RSVD | RSVD |
| C65 | PEG_RX4+ | PCIe |
| C66 | PEG_RX4- | PCIe |
| C67 | RAPID_SHUTDOWN | RSVD |
| C68 | PEG_RX5+ | PCIe |
| C69 | PEG_RX5- | PCIe |
| C70 | GND (FIXED) | Питание / GND |
| C71 | PEG_RX6+ | PCIe |
| C72 | PEG_RX6- | PCIe |
| C73 | GND | Питание / GND |
| C74 | PEG_RX7+ | PCIe |
| C75 | PEG_RX7- | PCIe |
| C76 | GND | Питание / GND |
| C77 | RSVD | RSVD |
| C78 | N/A | PCIe |
| C79 | N/A | PCIe |
| C80 | GND (FIXED) | Питание / GND |
| C81 | N/A | PCIe |
| C82 | N/A | PCIe |
| C83 | RSVD | RSVD |
| C84 | GND | Питание / GND |
| C85 | N/A | PCIe |
| C86 | N/A | PCIe |
| C87 | GND | Питание / GND |
| C88 | N/A | PCIe |
| C89 | N/A | PCIe |
| C90 | GND (FIXED) | Питание / GND |
| C91 | N/A | PCIe |
| C92 | N/A | PCIe |
| C93 | GND | Питание / GND |
| C94 | N/A | PCIe |
| C95 | N/A | PCIe |
| C96 | GND | Питание / GND |
| C97 | RSVD | RSVD |
| C98 | N/A | PCIe |
| C99 | N/A | PCIe |
| C100 | GND (FIXED) | Питание / GND |
| C101 | N/A | PCIe |
| C102 | N/A | PCIe |
| C103 | GND | Питание / GND |
| C104 | VCC_12V | Питание / GND |
| C105 | VCC_12V | Питание / GND |
| C106 | VCC_12V | Питание / GND |
| C107 | VCC_12V | Питание / GND |
| C108 | VCC_12V | Питание / GND |
| C109 | VCC_12V | Питание / GND |
| C110 | GND (FIXED) | Питание / GND |

## Row D

| Пин | Сигнал | Группа |
|:----|:-------|:-------|
| D1 | GND (FIXED) | Питание / GND |
| D2 | GND | Питание / GND |
| D3 | USB_SSTX0- | USB 3.1 |
| D4 | USB_SSTX0+ | USB 3.1 |
| D5 | GND | Питание / GND |
| D6 | USB_SSTX1- | USB 3.1 |
| D7 | USB_SSTX1+ | USB 3.1 |
| D8 | GND | Питание / GND |
| D9 | USB_SSTX2- | USB 3.1 |
| D10 | USB_SSTX2+ | USB 3.1 |
| D11 | GND (FIXED) | Питание / GND |
| D12 | N/A | USB 3.1 |
| D13 | N/A | USB 3.1 |
| D14 | GND | Питание / GND |
| D15 | DDI1_CTRLCLK_AUX+ | DDI1 (DisplayPort) |
| D16 | DDI1_CTRLDATA_AUX- | DDI1 (DisplayPort) |
| D17 | RSVD | RSVD |
| D18 | RSVD | RSVD |
| D19 | PCIE_TX6+ | PCIe |
| D20 | PCIE_TX6- | PCIe |
| D21 | GND (FIXED) | Питание / GND |
| D22 | PCIE_TX7+ | PCIe |
| D23 | PCIE_TX7- | PCIe |
| D24 | RSVD | RSVD |
| D25 | RSVD | RSVD |
| D26 | DDI1_PAIR0+ | DDI1 (DisplayPort) |
| D27 | DDI1_PAIR0- | DDI1 (DisplayPort) |
| D28 | RSVD | RSVD |
| D29 | DDI1_PAIR1+ | DDI1 (DisplayPort) |
| D30 | DDI1_PAIR1- | DDI1 (DisplayPort) |
| D31 | GND (FIXED) | Питание / GND |
| D32 | DDI1_PAIR2+ | DDI1 (DisplayPort) |
| D33 | DDI1_PAIR2- | DDI1 (DisplayPort) |
| D34 | DDI1_DDC_AUX_SEL | DDI1 (DisplayPort) |
| D35 | RSVD | RSVD |
| D36 | DDI1_PAIR3+ | DDI1 (DisplayPort) |
| D37 | DDI1_PAIR3- | DDI1 (DisplayPort) |
| D38 | RSVD | RSVD |
| D39 | DDI2_PAIR0+ | DDI2 (DisplayPort) |
| D40 | DDI2_PAIR0- | DDI2 (DisplayPort) |
| D41 | GND (FIXED) | Питание / GND |
| D42 | DDI2_PAIR1+ | DDI2 (DisplayPort) |
| D43 | DDI2_PAIR1- | DDI2 (DisplayPort) |
| D44 | DDI2_HPD | DDI2 (DisplayPort) |
| D45 | RSVD | RSVD |
| D46 | DDI2_PAIR2+ | DDI2 (DisplayPort) |
| D47 | DDI2_PAIR2- | DDI2 (DisplayPort) |
| D48 | RSVD | RSVD |
| D49 | DDI2_PAIR3+ | DDI2 (DisplayPort) |
| D50 | DDI2_PAIR3- | DDI2 (DisplayPort) |
| D51 | GND (FIXED) | Питание / GND |
| D52 | PEG_TX0+ | PCIe |
| D53 | PEG_TX0- | PCIe |
| D54 | PEG_LANE_RV# | PCIe |
| D55 | PEG_TX1+ | PCIe |
| D56 | PEG_TX1- | PCIe |
| D57 | GND | MTD/TPM |
| D58 | PEG_TX2+ | PCIe |
| D59 | PEG_TX2- | PCIe |
| D60 | GND (FIXED) | Питание / GND |
| D61 | PEG_TX3+ | PCIe |
| D62 | PEG_TX3- | PCIe |
| D63 | RSVD | RSVD |
| D64 | RSVD | RSVD |
| D65 | PEG_TX4+ | PCIe |
| D66 | PEG_TX4- | PCIe |
| D67 | GND | Питание / GND |
| D68 | PEG_TX5+ | PCIe |
| D69 | PEG_TX5- | PCIe |
| D70 | GND (FIXED) | Питание / GND |
| D71 | PEG_TX6+ | PCIe |
| D72 | PEG_TX6- | PCIe |
| D73 | GND | Питание / GND |
| D74 | PEG_TX7+ | PCIe |
| D75 | PEG_TX7- | PCIe |
| D76 | GND | Питание / GND |
| D77 | RSVD | RSVD |
| D78 | N/A | PCIe |
| D79 | N/A | PCIe |
| D80 | GND (FIXED) | Питание / GND |
| D81 | N/A | PCIe |
| D82 | N/A | PCIe |
| D83 | RSVD | RSVD |
| D84 | GND | Питание / GND |
| D85 | N/A | PCIe |
| D86 | N/A | PCIe |
| D87 | GND | Питание / GND |
| D88 | N/A | PCIe |
| D89 | N/A | PCIe |
| D90 | GND (FIXED) | Питание / GND |
| D91 | N/A | PCIe |
| D92 | N/A | PCIe |
| D93 | GND | Питание / GND |
| D94 | N/A | PCIe |
| D95 | N/A | PCIe |
| D96 | GND | Питание / GND |
| D97 | PEG_ENABLE# | PCIe |
| D98 | N/A | PCIe |
| D99 | N/A | PCIe |
| D100 | GND (FIXED) | Питание / GND |
| D101 | N/A | PCIe |
| D102 | N/A | PCIe |
| D103 | GND | Питание / GND |
| D104 | VCC_12V | Питание / GND |
| D105 | VCC_12V | Питание / GND |
| D106 | VCC_12V | Питание / GND |
| D107 | VCC_12V | Питание / GND |
| D108 | VCC_12V | Питание / GND |
| D109 | VCC_12V | Питание / GND |
| D110 | GND (FIXED) | Питание / GND |

## Сводка по группам (для несущей платы)

| Группа | Пины A/B | Пины C/D | Примечание |
|:-------|:---------|:---------|:-----------|
| GbE (I210-AT) | GBE0: MDI0-3±, LINK#, LINK100#, LINK1000#, ACT#, SDP (A2-A14, B2) | — | RJ45 |
| HD Audio | HDA_SYNC/RST#/BITCLK/SDOUT (A29-A33), SDIN0-2 (B28-B30) | — | пин-хедер |
| SATA 0 | A16-A20 (TX/RX) | — | M.2 2280 Key B |
| SATA 1 | B16-B20 (TX/RX) | — | U.2 (общий) |
| SATA 2/3 | A22-A26, B22-B26 — N/A | — | не используются |
| USB 2.0 (CPU) | USB0/1 (B45-B46, B44), USB2/3 (A42-A44), USB4/5 (A39-A40, B39-B40), USB6/7 (A36-A38, B36-B37) | — | 4 порта CPU → 2 хедера |
| USB 3.1 | — | SSRX0-2/SSTX0-2 (C3-C13, D3-D13), SSRX3/SSTX3 — N/A | 2× Gen2 + 1× Gen1 |
| PCIe GPP #0-4 | TX0-4 (A52-A69), RX0-4 (B52-B69), REF CLK PCIE0_CLK_REF± (A88-A89) | — | x4 → U.2, x1 → M.2 M-Key; линия #5 (A52-A53/B52-B53) — только ревизии до ECOM-165390 (с PCIe-мостом PEX8605, 6 линий GPP); после ECOM-165390 — 5 линий, см. [ECOM-165390](../docs/SOM-5871/product-change/Advantech_Corporation_13256_ECOM_165390__SOM_5871_PCIe_Bridge_EOL_v1.0_20200810_1.pdf) |
| PCIe PEG #0-7 | — | PEG_TX0-7 / PEG_RX0-7 (C19-C75, D19-D75) + PEG_LANE_RV# (D54), PEG_ENABLE# (D97) | MCIO (x8) |
| LVDS (dual ch) | CH-A: A71-A84, CH-B: B71-B83 (+BKLT) | — | 2× FPC-40 |
| VGA | B89-B96 (DDI0) | — | не поддерживается |
| DDI1 (DP1) | — | PAIR0-3 (D26-D37), AUX (D15-D16, D32-D34), HPD (C24) | DisplayPort |
| DDI2 (DP2) | — | PAIR0-3 (D39-D50), AUX (C32-C34), HPD (D44) | не поддерживается |
| DDI3 (DP3) | — | PAIR0-3 (C39-C50), AUX (C36-C38), HPD (C44) | не поддерживается |
| SPI | A91-A95 (CLK, MOSI, MISO, POWER), B97 (CS#) | — | GPIO-хедер |
| SMBus | B13-B15 (SMB_CK/DAT/ALERT#) | — | Molex 4-pin |
| I2C | B33-B34 (I2C_CK/DAT) | — | GPIO-хедер |
| PSM/управление | PWRBTN# (B12), SYS_RESET#/CB_RESET# (B49-B50), WDT (B27), FAN (B101-B102), SUS/THRM/SLEEP/SHUTDOWN, LID# (A103), SPKR (B32) | RAPID_SHUTDOWN (C67) | GPIO-хедер |
| RS-232 / GPSI | SER0 (A98-A99), SER1 (A101-A102) | — | COM1/COM2 (CAN — опция) |
| LPC | A50 (SERIRQ), B3-B10 | — | LPC от SoC |
| GPIO | GPI0-3 (A54/A63/A67/A85), GPO0-3 (A93/B54/B57/B63), BIOS_DIS (A34/B88) | — | GPIO-хедер |
| Питание | VCC_12V (A104-A109, B104-B109, C104-C109, D104-D109), VCC_5V_SBY (B84-B87), VCC_RTC (A47) | — | ATX: Vin + VSB |
| TPM/MTD | A96 (TPM_PP), A97 (N/C) | C54/C57 (N/C) | TPM 2.0 (опция) |
| RSVD | разбросаны | разбросаны | no-connect |

## PCIe GPP — детали из Layout Checklist

Источник: вкладка *PCI Express Lanes (PCIE)* из
[`docs/SOM-5871/design/SOM-5871 A101-3 COME Layout Checklist V1.01 20200604.xlsx`](../docs/SOM-5871/design/SOM-5871%20A101-3%20COME%20Layout%20Checklist%20V1.01%2020200604.xlsx)
(раздел *General Purpose*, колонка SOM-5871 A101-3). «—» в столбце
Optional = в xlsx пометки нет.

| Порт | Направление | Контакты (COMe) | Optional | Примечание |
|:----:|:-----------|:----------------|:--------:|:-----------|
| GPP #0 | TX | A68 / A69 | — | Gen3, L < 9000 mils |
| GPP #0 | RX | B68 / B69 | — | Gen3, L < 9000 mils |
| GPP #1 | TX | A64 / A65 | — | Gen3, L < 9000 mils |
| GPP #1 | RX | B64 / B65 | — | Gen3, L < 9000 mils |
| GPP #2 | TX | A61 / A62 | — | Gen3, L < 9000 mils |
| GPP #2 | RX | B61 / B62 | — | Gen3, L < 9000 mils |
| GPP #3 | TX | A58 / A59 | — | Gen3, L < 9000 mils |
| GPP #3 | RX | B58 / B59 | — | Gen3, L < 9000 mils |
| GPP #4 | TX | A55 / A56 | — | **Gen2 only** (L > 4000 mils) |
| GPP #4 | RX | B55 / B56 | — | **Gen2 only** (L > 4000 mils) |
| GPP #5 | TX | A52 / A53 | **да** | Gen3; только ревизии до ECOM-165390 (с мостом PEX8605, 6 линий GPP); пометка Optional — из датасита |
| GPP #5 | RX | B52 / B53 | **да** | Gen3; после ECOM-165390 — 5 линий, см. [ECOM-165390](../docs/SOM-5871/product-change/Advantech_Corporation_13256_ECOM_165390__SOM_5871_PCIe_Bridge_EOL_v1.0_20200810_1.pdf) |
| GPP #6 | TX | D19 / D20 | — | **Gen2 only**; часть x8-буфера PEG (на A101-3 — GPP) |
| GPP #6 | RX | C19 / C20 | — | **Gen2 only**; то же |
| GPP #7 | TX | D22 / D23 | — | **Gen2 only**; то же |
| GPP #7 | RX | C22 / C23 | — | **Gen2 only**; то же |
| REF CLK | — | A88 / A89 | — | `PCIE0_CLK_REF±`, 1000 < L < 12000 mils |

> Примечания:
> - в xlsx **нет** пометки «Optional» у GPP-линий — пометка у линии #5 взята
>   из датасита (GPP #5 — option);
> - линии #4–#7 — «PCIe Gen2 only» (из xlsx, L > 4000 mils — до PCIe-моста);
> - x16-буфер PEG (D54 `PEG_LANE_RV#`, D97 `PEG_ENABLE#`) на A101-3 не
>   используется как x16 — см. раздел *x16 Graphics* той же вкладки.
