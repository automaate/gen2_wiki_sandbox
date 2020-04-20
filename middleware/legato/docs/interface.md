---
grand_parent: Graphics Libraries
parent: Graphics Library
title: Legato Graphics Library Interface
has_toc: true
nav_order: 2
---

# Legato Graphics Library Interface
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---
 
## Common API
### Color
### Common
### Error
### Math
### PixelBuffer
### Rect
### RTOS
### Utils
## Core API
## DataStructure API
## Font API
## Image API
## Memory API
## Renderer API
## String API
## Widget API

```c
// *****************************************************************************
/* Enumeration:
    leResult

  Summary:
    legato results (success and failure codes).

  Description:
    Various definitions for success and failure codes.

  Remarks:
    None.
*/
typedef enum leResult
{
    LE_FAILURE = -1,
    LE_SUCCESS = 0
} leResult;

// *****************************************************************************
/* Enumeration:
    leBool

  Summary:
    legato bool values

  Description:
    legato bool values

  Remarks:
    None.
*/
typedef enum leBool
{
    LE_FALSE = 0,
    LE_TRUE
} leBool;

// *****************************************************************************
/* Enumeration:
    leVAlignment

  Summary:
    legato vertical alignment values

  Description:
    legato vertical alignment values

  Remarks:
    None.
*/
typedef enum
{
    LE_VALIGN_TOP,
    LE_VALIGN_MIDDLE,
    LE_VALIGN_BOTTOM
} leVAlignment;

// *****************************************************************************
/* Enumeration:
    leHAlignment

  Summary:
    legato horizontal alignment values

  Description:
    legato horizontal alignment values

  Remarks:
    None.
*/
typedef enum
{
    LE_HALIGN_LEFT,
    LE_HALIGN_CENTER,
    LE_HALIGN_RIGHT
} leHAlignment;

// *****************************************************************************
/* Enumeration:
    leMargin

  Summary:
    legato margin values

  Description:
    legato margin values

  Remarks:
    None.
*/
typedef struct leMargin
{
    uint8_t left;
    uint8_t top;
    uint8_t right;
    uint8_t bottom;
} leMargin;

static const leMargin leMargin_Zero = {0, 0, 0, 0};

// *****************************************************************************
/* Enumeration:
    leDirection

  Summary:
    legato direction values

  Description:
    legato direction values

  Remarks:
    None.
*/
typedef enum leDirection
{
  LE_DIRECTION_RIGHT,
  LE_DIRECTION_DOWN,
  LE_DIRECTION_LEFT,
  LE_DIRECTION_UP
} leDirection;

// *****************************************************************************
/* Structure:
    leRotationDirection

  Summary:
    Describes rotational direction

  Description:
    Describes rotational direction

  Remarks:
    None.
*/
typedef enum leRotationDirection
{
    LE_COUNTER_CLOCKWISE,
    LE_CLOCKWISE,
} leRotationDirection;

// *****************************************************************************
/* Enumeration:
    leRelativePosition

  Summary:
    legato relative position values

  Description:
    legato relative position values

  Remarks:
    None.
*/
typedef enum leRelativePosition
{
    LE_RELATIVE_POSITION_LEFTOF,
    LE_RELATIVE_POSITION_ABOVE,
    LE_RELATIVE_POSITION_RIGHTOF,
    LE_RELATIVE_POSITION_BELOW,
    LE_RELATIVE_POSITION_BEHIND
} leRelativePosition;

// *****************************************************************************
/* Enumeration:
    leOrientation

  Summary:
    legato orientation values

  Description:
    legato orientation values

  Remarks:
    None.
*/
typedef enum leOrientation
{
  LE_ORIENTATION_HORIZONTAL,
  LE_ORIENTATION_VERTICAL,
} leOrientation;

// *****************************************************************************
/* Structure:
    lePoint

  Summary:
    A two dimensional Cartesian point.
*/
typedef struct lePoint
{
    int32_t x;
    int32_t y;
} lePoint;

static const lePoint lePoint_Zero = {0, 0};

// *****************************************************************************
/* Structure:
    leSize

  Summary:
    A two dimensional indication of size.  Values are signed but should never be
    negative.
*/
typedef struct leSize
{
    int32_t width;
    int32_t height;
} leSize;

static const leSize leSize_Zero = {0, 0};

// *****************************************************************************
/* Structure:
    leRect

  Summary:
    A rectangle definition.  
*/
typedef struct leRect
{
    int16_t x;
    int16_t y;
    int16_t width;
    int16_t height;
} leRect;

typedef void* leBuffer;

/* library configuration flags */
typedef uint16_t leChar;
#define LE_UNKNOWN_GLYPH  0xFFFF

```


---


