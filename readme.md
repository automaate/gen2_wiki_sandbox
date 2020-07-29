---
title: Harmony 3 Graphics Package
nav_order: 1
---

# ![Microchip Technology](docs/images/mhgs.png) MPLAB® Harmony 3 Graphics Support Package

MPLAB® Harmony 3 is an extension of the MPLAB® ecosystem for creating
embedded firmware solutions for Microchip 32-bit SAM and PIC microcontroller
and microprocessor devices.  Refer to the following links for more information:
 - [Microchip 32-bit MCUs](https://www.microchip.com/design-centers/32-bit)
 - [Microchip 32-bit MPUs](https://www.microchip.com/design-centers/32-bit-mpus)
 - [Microchip MPLAB® X IDE](https://www.microchip.com/mplab/mplab-x-ide)
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
 - [MPLAB® Harmony 3 Graphics Suite Documentation](https://automaate.github.io/gen2_wiki_sandbox)

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
| Legato graphics        | Legato graphics library, drivers, applications, and tools. |
| Aria graphics      | Aria graphics library, drivers, applications, and tools |
| Blank graphics interface   | Blank graphics interface |

## Legato graphics

The performance improved graphics for MPLAB Harmony Graphics Suite. Supports Microchip PIC32 and SAM microcontrollers.

| Category | Item | Description | Release Type |
| --- | --- | ---- |---- |
|  apps | legato_flash | Legato UI library quickstart flash writer example | ![app-beta](https://img.shields.io/badge/application-beta-orange?style=plastic) |
|    | legato_quickstart | Legato UI library quickstart example | ![app-beta](https://img.shields.io/badge/application-beta-orange?style=plastic) |
|      |  legato_quickstart_ext_res | Legato UI library external resource example | ![app-beta](https://img.shields.io/badge/application-beta-orange?style=plastic)|
| drivers|  external_controller | User generate-able external display driver | ![app-beta](https://img.shields.io/badge/driver-beta-orange?style=plastic) |
|      |   GLCD | Driver for the GLCD display controller peripheral | ![app-beta](https://img.shields.io/badge/driver-beta-orange?style=plastic) |
|      |   2DGPU | Driver for the 2DGPU graphics processor |![app-beta](https://img.shields.io/badge/driver-beta-orange?style=plastic) |
|      |   LCC | Display Driver for the LCC software Controller| ![app-beta](https://img.shields.io/badge/driver-beta-orange?style=plastic) |
|      |   GFX2D | Driver for the GFX2D graphics processor| ![app-beta](https://img.shields.io/badge/driver-beta-orange?style=plastic) |
|      |   LCDC | Display Driver for the LCDC display controller peripheral | ![app-beta](https://img.shields.io/badge/driver-beta-orange?style=plastic) |
|      |   external controller | Display Driver for the ssd1963 Controller | ![app-beta](https://img.shields.io/badge/driver-beta-orange?style=plastic) |
|      |   parallel_ebi | Interface to the parallel EBI registers | ![app-beta](https://img.shields.io/badge/driver-beta-orange?style=plastic) |
|      |   parallel_portgroup | Inteface to the parallel portgroup registers | ![app-beta](https://img.shields.io/badge/driver-beta-orange?style=plastic) |
|      |   parallel_smc | Interface to the parallel smc registers | ![app-beta](https://img.shields.io/badge/driver-beta-orange?style=plastic) |
|      |   spi | Interface to the spi registers | ![app-beta](https://img.shields.io/badge/driver-beta-orange?style=plastic) |
| library    | legato | Graphics Library | ![app-beta](https://img.shields.io/badge/library-beta-orange?style=plastic) |
| designer | legato MHGC |Harmony Graphics Composer for Legato| ![app-beta](https://img.shields.io/badge/tool-beta-orange?style=plastic) |


## Aria graphics

The legacy graphics facilities for MPLAB Harmony Graphics Suite. Supports Microchip PIC32 and SAM microcontrollers.

| Category | Item | Description | Release Type |
| --- | --- | ---- |---- |
|  apps | aria_flash | Aria UI library quickstart flash writer example | ![app-production](https://img.shields.io/badge/application-production-blue?style=plastic) |
|       | aria_quickstart | Aria UI library quickstart example | ![app-production](https://img.shields.io/badge/application-production-blue?style=plastic) |
|       | aria_quickstart_ext_res | Aria UI library external resource example | ![app-production](https://img.shields.io/badge/application-production-blue?style=plastic)|
| drivers|  external_controller | User generate-able external display driver | ![app-production](https://img.shields.io/badge/driver-production-blue?style=plastic) |
|      |   glcd | Driver for the GLCD display controller peripheral | ![app-production](https://img.shields.io/badge/driver-production-blue?style=plastic) |
|      |   2dgpu | Driver for the 2DGPU graphics processor |![app-production](https://img.shields.io/badge/driver-production-blue?style=plastic) |
|      |   lcc | Display Driver for the LCC software Controller| ![app-beproductionta](https://img.shields.io/badge/driver-production-blue?style=plastic) |
|      |   gfx2d | Driver for the GFX2D graphics processor| ![app-production](https://img.shields.io/badge/driver-production-blue?style=plastic) |
|      |   lcdc | Display Driver for the LCDC display controller peripheral | ![app-production](https://img.shields.io/badge/driver-production-blue?style=plastic) |
|      |   external controller | Display Driver for the ssd1963 Controller | ![app-production](https://img.shields.io/badge/driver-production-blue?style=plastic) |
|      |   parallel_ebi | Interface to the parallel EBI registers | ![app-production](https://img.shields.io/badge/driver-production-blue?style=plastic) |
|      |   parallel_portgroup | Inteface to the parallel portgroup registers | ![app-production](https://img.shields.io/badge/driver-production-blue?style=plastic) |
|      |   parallel_smc | Interface to the parallel smc registers | ![app-production](https://img.shields.io/badge/driver-production-blue?style=plastic) |
|      |   spi | Interface to the spi registers | ![app-production](https://img.shields.io/badge/driver-production-blue?style=plastic) |
| hal     | hal | Aria Hardware Abstraction Layer | ![app-production](https://img.shields.io/badge/driver-production-blue?style=plastic) |
| library    | legato | Graphics Library | ![app-production](https://img.shields.io/badge/library-production-blue?style=plastic) |
| designer | legato MHGC |Harmony Graphics Composer for Legato| ![app-production](https://img.shields.io/badge/tool-production-blue?style=plastic) |


## Blank library interface

**Blank library interface** - the library interface which easily allows a third-party graphics library direct access to the display framebuffer.

| Category | Item | Description | Release Type |
| --- | --- | ---- |---- |
| apps | blank_quickstart | Blank UI-less library quickstart example | ![app-beta](https://img.shields.io/badge/application-beta-orange?style=plastic) |


____

[![License](https://img.shields.io/badge/license-Harmony%20license-orange.svg)](https://github.com/Microchip-MPLAB-Harmony/gfx/blob/master/mplab_harmony_license.md)
![Latest release](https://img.shields.io/badge/release-v3.7.0-orange?style=plastic)
![Latest release date](https://img.shields.io/badge/date-may-orange?style=plastic)
![Commit activity](https://img.shields.io/badge/activity-43-orange?style=plastic)
![Contributors](https://img.shields.io/badge/contributors-3-orange?style=plastic)

____

[![Follow us on Youtube](https://img.shields.io/badge/Youtube-Follow%20us%20on%20Youtube-red.svg)](https://www.youtube.com/user/MicrochipTechnology)
[![Follow us on LinkedIn](https://img.shields.io/badge/LinkedIn-Follow%20us%20on%20LinkedIn-blue.svg)](https://www.linkedin.com/company/microchip-technology)
[![Follow us on Facebook](https://img.shields.io/badge/Facebook-Follow%20us%20on%20Facebook-blue.svg)](https://www.facebook.com/microchiptechnology/)
[![Follow us on Twitter](https://img.shields.io/twitter/follow/MicrochipTech.svg?style=social)](https://twitter.com/MicrochipTech)

[![](https://img.shields.io/github/stars/Microchip-MPLAB-Harmony/aerospace.svg?style=social)]()
[![](https://img.shields.io/github/watchers/Microchip-MPLAB-Harmony/aerospace.svg?style=social)]()
