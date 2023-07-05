# EBAZ4205

## Description

This repository contains v2021.1, v2022.2 and v2023.1 Vivado and PetaLinux projects for the Zynq EBAZ4205 board.  It is based on the EBAZ4205 git repository by KeitetsuWorks, updated for v2021.1, v2022.2 and v2023.1 of the Xilinx tools and with fixes for the operation of the tactile switches S2 and S3.  The default build of PetaLinux in this repository includes the package management tools so that additional components may be installed with the dnf command after booting.

Branch '2021.1' contains files for v2021.1 of Vivado/PetaLinux.  Branch '2022.2' contains files for v2022.2.  Branch 'main' contains files for v2023.1.

## Requirement

### Hardware

* Zynq EBAZ4205 Board (cost-reduced version)
  * **No** 25MHz crystal (Y3) is required. The Ethernet transceiver (U24) clock is supplied by the ZYNQ (U31). However, it also works on a board on which a crystal is mounted
  * microSD card slot (U7) required
  * SD card boot support is required. Short the resistor (R2577)
  * Short the diode (D24) to supply power from the power connector (J4) (Optional)
  * Mount the tactile switch (S3), the capacitor (C2410) and the resistor (R2649) (Optional).

### Software

* Xilinx Vivado 2023.1
* Xilinx PetaLinux 2023.1

## How to Build 

* [How to Build](./docs/how-to-build.md)

## Demo Application

* GPIO Demo, Peek and Poke applications are included in the Petalinux rootfs.

## References

### EBAZ4205

* [KeitetsuWorks/EBAZ4205: Vivado and PetaLinux (v2020.2) projects for the Zynq EBAZ4205 Board.](https://github.com/KeitetsuWorks/EBAZ4205)
* [xjtuecho/EBAZ4205: A 5$ Xilinx ZYNQ development board.](https://github.com/xjtuecho/EBAZ4205)
  * First setup
  * Schematics
  * Xilinx Design Constraints
  * mtd information
* [Leungfung/ebaz4205_hw](https://github.com/Leungfung/ebaz4205_hw)
  * Document (Block desgin)
* [kan573 - Qiita](https://qiita.com/kan573)
  * Articles in Japanese
* [blkf2016/ebaz4205: Some resources for the ebaz4205 board](https://github.com/blkf2016/ebaz4205)
  * Sample project
* [nightseas/ebit_z7010: The base reference design for EBIT EBAZ4205 Zynq7010 board.](https://github.com/nightseas/ebit_z7010)
  * Sample project

### Xilinx

* [UG585 - Zynq-7000 SoC Technical Reference Manual (v1.12.2)](https://www.xilinx.com/support/documentation/user_guides/ug585-Zynq-7000-TRM.pdf)
* [UG585 - Zynq-7000 SoC テクニカル リファレンス マニュアル (v1.10)](https://japan.xilinx.com/support/documentation/user_guides/j_ug585-Zynq-7000-TRM.pdf)
* [UG865 - Zynq-7000 SoC Packaging Guide (v1.8.1)](https://www.xilinx.com/support/documentation/user_guides/ug865-Zynq-7000-Pkg-Pinout.pdf)
* [UG865 - Zynq‐7000 SoC パッケージ ガイド (v1.8.1)](https://japan.xilinx.com/support/documentation/user_guides/j_ug865-Zynq-7000-Pkg-Pinout.pdf)
* [XC7Z010CLG400 ピン配置ファイル](https://japan.xilinx.com/support/packagefiles/z7packages/xc7z010clg400pkg.txt)
* [UG1144 - PetaLinux Tools Documentation Reference Guide (v2022.2)](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2022_2/ug1144-petalinux-tools-reference-guide.pdf)
* [LEDS-GPIO Driver - Linux GPIO Driver - Xilinx Wiki - Confluence](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18842398/Linux+GPIO+Driver#LinuxGPIODriver-LEDS-GPIODriver)
* [GPIO-Keys Driver - Linux GPIO Driver - Xilinx Wiki - Confluence](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18842398/Linux+GPIO+Driver#LinuxGPIODriver-GPIO-KeysDriver)
* [Vitis In-Depth Tutorials 2020.2 Platform Creation](https://xilinx.github.io/Vitis-Tutorials/master/docs/Vitis_Platform_Creation/README.html)
* [Vitis チュートリアル 2020.2 プラットフォームの作成](https://xilinx.github.io/Vitis-Tutorials/master/docs-jp/Vitis_Platform_Creation/README.html)

### Linux Kernel

* [LEDs connected to GPIO lines](https://www.kernel.org/doc/Documentation/devicetree/bindings/leds/leds-gpio.txt)
* [Common leds properties](https://www.kernel.org/doc/Documentation/devicetree/bindings/leds/common.yaml)
* [Device-Tree bindings for input/keyboard/gpio_keys.c keyboard driver](https://www.kernel.org/doc/Documentation/devicetree/bindings/input/gpio-keys.txt)

### Others

* [Vivadoでプロジェクトのエクスポートを極める - Qiita](https://qiita.com/nahitafu/items/de4b295ea60ce6173a83)
* [MII通信　～MACとPHYをつなぐインターフェース～ - 半導体事業 - マクニカ](https://www.macnica.co.jp/business/semiconductor/articles/microchip/134946/)
* [ARM PrimeCell Static Memory Controller (PL350 series) Revision: r2p1 Technical Reference Manual](https://developer.arm.com/documentation/ddi0380/g/?lang=en)
* [Winbond W29N01HVxINA Datasheet](https://www.winbond.com/resource-files/w29n01hvxina_revc.pdf)

