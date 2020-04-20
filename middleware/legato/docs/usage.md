---
grand_parent: Graphics Libraries
parent: Graphics Library
title: Legato Graphics Library Usage
has_toc: true
nav_order: 1
---

# Legato Graphics Library Usage

## Configuring the library

All settings are managed through the Graphics Composer (Legato) Tool. This tool can be lanuched through the MHC->Tools->Legato Graphics Composer menu selection. Once launched, select Project->Project Settings.

* Assets
* Display
* Library
* Memory
* Renderer
* Widget

## Using the library

If estrings are to be set, use the setString function:

```c
    char charBuff[16] = {0};
    int length = 5;
    leDynamicString text;
    sprintf(charBuff, "The Length is: %d", length);
    text.fn->setFromCStr(&text, charBuff);
    aStringWidget->fn->setString(aStringWidget, (leString*)&text);
```

When an ECC error is detected and an interrupt occurs, the fail address must be read before the status in order to avoid multiple interrupts:

```c
   /* event handler */
   void ImageSizeDownButton_OnPressed(leButtonWidget* btn)
   {
      if(screenState == SCREEN_DO_NOTHING)
      {
         screenState = SCREEN_IMAGE_SIZE_DOWN;
      }
   }
```
