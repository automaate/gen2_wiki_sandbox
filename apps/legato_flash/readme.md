---
parent: Examples and Demonstrations
title: Legato Flash Applications
has_children: true
has_toc: false
nav_order: 3

family: SAMRH71
market:
  - graphics
---

# Legato Flash Applications

![microchip](https://microchip-mplab-harmony.github.io/gfx/legato_fl_e54_cult_cpro_parallel.X_ui1.png)

The legato_flash demonstration application serves as an external memory programmer to flash the off-chip non-volatile memory with the resources held on an Memory Storage Device (MSD), such as a USB or a SD card, which can then be accessed by other applications saving on-chip memory for other programs and resources. 

The application legato_quickstart_external_resources in MPLAB Harmony needs to use preloaded images/fonts from QSPI flash external non-volatile memory. This would require legato_flash to flash the required image and font resources onto the QSPI flash. Refer to legato_quickstart_external_resources for usage model information. 

The legato_flash application flashes the .hex file containing the binary data of the external graphics resources, in this case QSPI.hex, into the external non-volatile memory. The resource file is copied from the computer to a USB Flash drive, which has a FAT32 file system installed. The USB Flash drive is then plugged into SAM E54 Curiosity Ultra development board and the application scans the MSD for the resource file. The legato_flash application copies the resource file sector by sector and flashes the binary resource content onto the QSPI Flash external memory.

## Configurations

* [legato_fl_e54_cult_cpro_parallel](legato_fl_e54_cult_cpro_parallel/readme.md)  This application runs on the SAM E54 Curiosity Ultra Development Board using external ILI9488 controller to drive the maXTouch® Curiosity Pro Board via the GFX multi-purpose interface card.


