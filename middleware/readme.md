---
title: Graphics Libraries
has_children: true
has_toc: false
nav_order: 3
---

# Graphics Libraries

Graphics rendering is made available through a graphic library. The graphic libraries in Microchip Harmony Graphics Suite are 2-Dimensional (2D) raster paint engines which support the drawing of a complete UI design on display modules using specific display controllers. The libraries are specifically built to run in low-powered low-resource environments. Each library contains some or more of the following components: 

* Images - The graphics library may support reading, decompression, and rendering of JPEG, PNG, and RAW, image formats.
* Internationalization- The graphics library may support Unicode for the encoding of displayable text strings. The library may support the adaptation of text to different language using an internal translation method not requiring re-engineering.
* Layers - The graphics library may support multi-layer hardware platforms. The graphics library may contain infrastructure that help separate UI components onto individual layers of a display controller.
* Acceleration - The graphics library may support an interface to a Graphics Processor Unit (GPU) peripheral on supported platforms. The graphics library may employ a hardware abstraction layer that helps to integrate hardware acceleration into applications.


## Legato
* [Legato API Reference and Overview](./legato/docs/readme.md) - Legato is the free 2D graphics library integrated with MPLAB Harmony Graphics Suite which provides common APIs that work across a variety of Microchip 32bit hardware.

