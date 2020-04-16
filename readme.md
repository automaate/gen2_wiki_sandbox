---
title: Harmony 3 Graphics Package
nav_order: 1
---

# ![Microchip Technology](images/mhgs.png) MPLAB® Harmony 3 Graphics

MPLAB® Harmony 3 is an extension of the MPLAB® ecosystem for creating embedded firmware solutions for Microchip 32-bit SAM and PIC microcontroller and microprocessor devices. Refer to the following links for more information:

- [Microchip 32-bit MCUs](https://www.microchip.com/design-centers/32-bit)
- [Microchip 32-bit MPUs](https://www.microchip.com/design-centers/32-bit-mpus)
- [Microchip MPLAB X IDE](https://www.microchip.com/mplab/mplab-x-ide)
- [Microchip MPLAB® Harmony](https://www.microchip.com/mplab/mplab-harmony)
- [Microchip MPLAB® Harmony Pages](https://microchip-mplab-harmony.github.io/)

This repository contains the MPLAB® Harmony Graphics Suite.  The
suite supports a free fast to market, graphics software development environment for Microchip MPLAB® 32-bit SAM and PIC microprocessor devices.  Refer to
the following graphics links for release notes, home page, training materials, framework and application help.
Find multiple graphics application examples in the [gfx_apps](https://github.com/Microchip-MPLAB-Harmony/gfx_apps/tree/master/apps) repository.

 - [Release Notes](./release_notes.md)
 - [MPLAB® Harmony License](mplab_harmony_license.md)
 - [MPLAB® Harmony 3 Graphics Wiki](https://github.com/Microchip-MPLAB-Harmony/gfx/wiki)
 - [MPLAB® Harmony 3 Graphics Videos](https://www.youtube.com/playlist?list=PL9B4edd-p2ag5xsIIHhja-caKYY7AKPxe)
 - [MPLAB® Harmony 3 Graphics User Guide](https://microchip-mplab-harmony.github.io/gfx)
 - [MPLAB® Harmony 3 Graphics Applications User Guide](https://microchip-mplab-harmony.github.io/gfx_apps)
 - [MPLAB® Harmony 3 Graphics Apps Repository](https://bitbucket.microchip.com/projects/MH3/repos/gfx_apps/browse)

# Features

The key features of the MPLAB® Harmony Graphics Suite are the following:

- Hardware optimized for use with Microchip 32-bit SAM and PIC devices
- Compatible component for use with Microchip Harmony 3 Configurator (MHC)
- Written in C with MISRA C (Mandatory) compliancy
- RTOS and non-RTOS support
- Configurable widget building blocks buttons, labels, lists, sliders, and images
- Rich tool set: Heap Estimator, Event Manager, Palette generator, Asset Manager, String and Font interface, DDR memory organizer
- Hardware integrated for Microchip GPU and display controller peripherals
- Support for single and double frame buffers
- Multi-language font support
- External input support for use with capacitive, resistive and other devices
- UI design editor for what-you-see-what-you-get (WYSWYG) graphics layouts
- Fluid-UI support for alpha-blending, animations, scaling
- Pixel format support for RGBA8888, RGB888, RGB565, RGB5551, RGB332, GS8
- Multi-image support for industry standard formats, compression choices, external memory accessibility
- Fully functional demonstrations and quick-starts to enable new development
- Low memory and low power configurable

# Contents Summary

| Folder     | Description                                  |
|------------|----------------------------------------------|
| apps       | Example quickstart and utility applications |
| display    | Supported displays |
| doc        | Microsoft Compiled (CHM) help documentation |
| docs       | HTML Help documentation                   |
| input      | Input System and its associated drivers and services |
| middleware | Supported User Interface (UI) libraries |
| driver     | Display controller and graphics processor unit drivers |

## Code Examples

The following applications are provided to demonstrate the typical or interesting usage models of one or more Peripheral libraries.

| Legato Examples | Status |
| --- | :---: |
| [legato_flash](apps/ip1553/ip1553_bc_operation_interrupt/readme.md) | ![app-beta](https://img.shields.io/badge/application-beta-orange?style=plastic) |
| [legato_quickstart](apps/ip1553/ip1553_bc_operation_interrupt/readme.md) | ![app-beta](https://img.shields.io/badge/application-beta-orange?style=plastic) |
| [legato_quickstart_ext_res](apps/ip1553/ip1553_rt_operation_blocking/readme.md) | ![app-beta](https://img.shields.io/badge/application-beta-orange?style=plastic) |

| Blank Examples | Status |
| --- | :---: |
| [blank_quickstart](apps/ip1553/ip1553_bc_operation_blocking/readme.md) | ![app-beta](https://img.shields.io/badge/application-beta-orange?style=plastic) |


## Graphics Libraries

### Legato

| Library | Status |
| --- | :---: |
| [Legato](peripheral/ip1553_44127/docs/readme.md) | ![app-beta](https://img.shields.io/badge/plib-beta-orange?style=plastic) |

## Graphics Drivers

### Display Drivers

| Driver | Status |
| --- | :---: |
| [external_controller](peripheral/ip1553_44127/docs/readme.md) | ![app-beta](https://img.shields.io/badge/plib-beta-orange?style=plastic) |
| [glcd](peripheral/ip1553_44127/docs/readme.md) | ![app-beta](https://img.shields.io/badge/plib-beta-orange?style=plastic) |
| [ili9488](peripheral/ip1553_44127/docs/readme.md) | ![app-beta](https://img.shields.io/badge/plib-beta-orange?style=plastic) |
| [lcc](peripheral/ip1553_44127/docs/readme.md) | ![app-beta](https://img.shields.io/badge/plib-beta-orange?style=plastic) |
| [ssd1963](peripheral/ip1553_44127/docs/readme.md) | ![app-beta](https://img.shields.io/badge/plib-beta-orange?style=plastic) |

### Touch Drivers

| Driver | Status |
| --- | :---: |
| [maXTouch](peripheral/ip1553_44127/docs/readme.md) | ![app-beta](https://img.shields.io/badge/plib-beta-orange?style=plastic) |
| [ptc](peripheral/ip1553_44127/docs/readme.md) | ![app-beta](https://img.shields.io/badge/plib-beta-orange?style=plastic) |
| [generic_touch](peripheral/ip1553_44127/docs/readme.md) | ![app-beta](https://img.shields.io/badge/plib-beta-orange?style=plastic) |

____

[![License](https://img.shields.io/badge/license-Harmony%20license-orange.svg)](https://github.com/Microchip-MPLAB-Harmony/aerospace/blob/master/mplab_harmony_license.md)
[![Latest release](https://img.shields.io/github/release/Microchip-MPLAB-Harmony/aerospace.svg)](https://github.com/Microchip-MPLAB-Harmony/aerospace/releases/latest)
[![Latest release date](https://img.shields.io/github/release-date/Microchip-MPLAB-Harmony/aerospace.svg)](https://github.com/Microchip-MPLAB-Harmony/aerospace/releases/latest)
[![Commit activity](https://img.shields.io/github/commit-activity/y/Microchip-MPLAB-Harmony/aerospace.svg)](https://github.com/Microchip-MPLAB-Harmony/aerospace/graphs/commit-activity)
[![Contributors](https://img.shields.io/github/contributors-anon/Microchip-MPLAB-Harmony/aerospace.svg)]()

____

[![Follow us on Youtube](https://img.shields.io/badge/Youtube-Follow%20us%20on%20Youtube-red.svg)](https://www.youtube.com/user/MicrochipTechnology)
[![Follow us on LinkedIn](https://img.shields.io/badge/LinkedIn-Follow%20us%20on%20LinkedIn-blue.svg)](https://www.linkedin.com/company/microchip-technology)
[![Follow us on Facebook](https://img.shields.io/badge/Facebook-Follow%20us%20on%20Facebook-blue.svg)](https://www.facebook.com/microchiptechnology/)
[![Follow us on Twitter](https://img.shields.io/twitter/follow/MicrochipTech.svg?style=social)](https://twitter.com/MicrochipTech)

[![](https://img.shields.io/github/stars/Microchip-MPLAB-Harmony/aerospace.svg?style=social)]()
[![](https://img.shields.io/github/watchers/Microchip-MPLAB-Harmony/aerospace.svg?style=social)]()