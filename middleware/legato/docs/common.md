
# Module <!-- group --> `common`

The `common` module contains the common macros, definitions, and functions used by MPLAB Harmony Graphics Suite.

 Submodules                        | Descriptions                                
--------------------------------|---------------------------------------------
`submodule `[`color`](#submodule-color)    |  Contains functions for color information and manipulation operations
`submodule `[`common`](#submodule-common)    | This file defines the common macros and definitions used by the gfx definition and implementation headers
`submodule `[`error`](#submodule-error)    | Defines library assert macros.
`submodule `[`math`](#submodule-math)    | Contains some general purpose math functions
`submodule `[`pixelbuffer`](#submodule-pixelbuffer)    | Defines a general purpose pixel buffer construct
`submodule `[`rect`](#submodule-rect)    | Defines general purposes rectangle functions.
`submodule `[`rtos`](#submodule-rtos)    | This header file contains prototypes of the RTOS extensions of the aria library top level APIs
`submodule `[`utils`](#submodule-utils)    | General internal utilities for the library

## submodule `Color` 

### `Color` Data Types and Constants

 Contants                        | Descriptions                                
--------------------------------|---------------------------------------------
`typedef uint32_t leColor;`    | 
`#define LE_COLOR_MAX_SIZE      4`  | This class implements a fake `AudioDeviceModule` that does absolutely nothing.
`#define RGB_8_BITS             255`<br/> `#define RGB_6_BITS             63`<br/> `#define RGB_5_BITS             31`<br/>`#define RGB_3_BITS             7`<br/> `#define RGB_2_BITS             2`    | 
`#define RGB_332_RED_MASK       0xE0`<br/> `#define RGB_332_GREEN_MASK     0x1C`<br/> `#define RGB_332_BLUE_MASK      0x3`   | 
`#define RGB_565_RED_MASK       0xF800` <br/>  `#define RGB_565_GREEN_MASK     0x7E0` <br/>  `#define RGB_565_BLUE_MASK      0x1F` |
`#define RGBA_5551_RED_MASK     0xF800`<br/>`#define RGBA_5551_GREEN_MASK   0x7C0`<br/> `#define RGBA_5551_BLUE_MASK      0x3E`<br/>`#define RGBA_5551_ALPHA_MASK   0x1` |
`#define RGB_888_RED_MASK       0xFF0000`<br/>`#define RGB_888_GREEN_MASK     0xFF00`<br/> `#define RGB_888_BLUE_MASK      0xFF` |
`#define RGBA_8888_RED_MASK     0xFF000000`<br/>`#define RGBA_8888_GREEN_MASK   0xFF0000`<br/>`#define RGBA_8888_BLUE_MASK    0xFF00`<br/>`#define RGBA_8888_ALPHA_MASK   0xFF` |
`#define ARGB_8888_RED_MASK     0xFF0000`<br/> `#define ARGB_8888_GREEN_MASK   0xFF00`<br/>`#define ARGB_8888_BLUE_MASK    0xFF`<br/>`#define ARGB_8888_ALPHA_MASK   0xFF000000` |
 
 
## `Color` Data Types
### 

 Data Types                     | Descriptions                                
--------------------------------|---------------------------------------------
[`leColorMask`](#leColorMask) |     Maskable list of color valies.
[`leColorMode`](#leColorMode) | List of available color modes
[`leBitsPerPixel`](#leBitsPerPixel) | List of available bits-per-pixel sizes.    
[`leColorName`](#leColorName) | Color name reference table.    


## `Color` externs
### 

 Data Types                     | Descriptions                                
--------------------------------|---------------------------------------------
[`leColorModeInfo`](#leColorModeInfo) |  Color information reference table



#### leColorMask 

 Maskable list of color valies.
 
```
typedef enum leColorMask
{
    LE_COLOR_MASK_GS_8      = 0x1,
    LE_COLOR_MASK_PALETTE   = 0x1,
    LE_COLOR_MASK_RGB_332   = 0x4,
    LE_COLOR_MASK_RGB_565   = 0x8,
    LE_COLOR_MASK_RGBA_5551 = 0x10,
    LE_COLOR_MASK_RGB_888   = 0x20,
    LE_COLOR_MASK_RGBA_8888 = 0x40,
    LE_COLOR_MASK_ARGB_8888 = 0x80,
    LE_COLOR_MASK_ALL = LE_COLOR_MASK_GS_8      |
                        LE_COLOR_MASK_RGB_332   |
                        LE_COLOR_MASK_RGB_565   |
                        LE_COLOR_MASK_RGBA_5551 |
                        LE_COLOR_MASK_RGB_888   | 
                        LE_COLOR_MASK_RGBA_8888 |
                        LE_COLOR_MASK_ARGB_8888
} leColorMask;
```

#### leColorMode 

 List of available color modes
 
```
typedef enum leColorMode
{
    LE_COLOR_MODE_GS_8       = 0x0,
    LE_COLOR_MODE_PALETTE    = LE_COLOR_MODE_GS_8,
    LE_COLOR_MODE_RGB_332    = 0x1,
    LE_COLOR_MODE_RGB_565    = 0x2,
    LE_COLOR_MODE_RGBA_5551  = 0x3,
    LE_COLOR_MODE_RGB_888    = 0x4,
    LE_COLOR_MODE_RGBA_8888  = 0x5,
    LE_COLOR_MODE_ARGB_8888  = 0x6,
    LE_COLOR_MODE_INDEX_1    = 0x7,
    LE_COLOR_MODE_INDEX_4    = 0x8,
    LE_COLOR_MODE_INDEX_8    = 0x9,
    LE_COLOR_MODE_LAST = LE_COLOR_MODE_INDEX_8
} leColorMode;
```


#### leBitsPerPixel 

 List of available bits-per-pixel sizes
 
```
typedef enum leBitsPerPixel
{
    LE_BPP1,
    LE_BPP4,
    LE_BPP8,
    LE_BPP16,
    LE_BPP24,
    LE_BPP32
} leBitsPerPixel;
```


#### leColorModeInfo 

 Struct that provides information about a color mode
 
```
typedef struct leColorModeInfo
{
    uint32_t size;
    uint32_t bpp;
    leBitsPerPixel bppOrdinal;

    struct
    {
        uint32_t red;
        uint32_t green;
        uint32_t blue;
        uint32_t alpha;
    } mask;
    
    struct
    {
        uint8_t red;
        uint8_t green;
        uint8_t blue;
        uint8_t alpha;
    } shift;
    
} leColorModeInfo;
```

#### leColorInfoTable 

 Color information reference table
 
```
extern const leColorModeInfo leColorInfoTable[];

```

#### leColorName 

 Color name reference table
 
```
typedef enum leColorName
{
    LE_COLOR_BLACK,
    LE_COLOR_WHITE,
    LE_COLOR_RED,
    LE_COLOR_LIME,
    LE_COLOR_BLUE,
    LE_COLOR_YELLOW,
    LE_COLOR_CYAN,
    LE_COLOR_MAGENTA,
    LE_COLOR_SILVER,
    LE_COLOR_DARKGRAY,
    LE_COLOR_GRAY,
    LE_COLOR_LIGHTGRAY,
    LE_COLOR_MAROON,
    LE_COLOR_OLIVE,
    LE_COLOR_GREEN,
    LE_COLOR_PURPLE,
    LE_COLOR_TEAL,
    LE_COLOR_NAVY,
    LE_COLOR_LAST
} leColorName;
```



 Functions                        | Descriptions                                
--------------------------------|---------------------------------------------
`LIB_EXPORT leColor `[`leColorValue`](#function-leColorValue)`(`[`leColorMode`](#leColorMode)` mode, leColorName name)`   | 
`LIB_EXPORT uint32_t `[`leColorChannelRed`](#function-leColorValue)`(leColor clr,`[`leColorMode`](#leColorMode)` mode)`   | 
`LIB_EXPORT uint32_t `[`leColorChannelGreen`](#function-leColorValue)`(leColor clr,`[`leColorMode`](#leColorMode)` mode)`   | 
`LIB_EXPORT uint32_t `[`leColorChannelBlue`](#function-leColorValue)`(leColor clr,`[`leColorMode`](#leColorMode)` mode)`   | 
`LIB_EXPORT uint32_t `[`leColorChannelAlpha`](#function-leColorValue)`(leColor clr,`[`leColorMode`](#leColorMode)` mode)`   | 
`LIB_EXPORT leColor `[`leColorConvert`](#function-leColorValue)`(leColorMode mode_in,`[`leColorMode`](#leColorMode)` mode, leColor color)`   | 
`LIB_EXPORT leColor `[`leColorBlend_ARGB_8888`](#function-leColorValue)`(`[`leColorMode`](#leColorMode)` mode_in, [`leColorMode`](#leColorMode)` mode_out, leColor color)`   | 
`LIB_EXPORT leColor `[`leColorLerp`](#function-leColorValue)`(leColor l, leColor r, uint32_t percent,`[`leColorMode`](#leColorMode)` mode)`   | 
`LIB_EXPORT leColor `[`leColorBilerp`](#function-leColorValue)`(leColor c00, leColor c01, leColor c10,leColor c11, uint32_t xper,uint32_t yper,`[`leColorMode`](#leColorMode)` mode)`   | 

## `Color` Function Details

### function `leColorValue` 

```
/* Function:
    leColor leColorValue(leColorMode mode, leColorName name)

  Summary:
    Used for getting a color value by name.

  Parameters:
    leColorMode - the color mode for the return type
    leColorName - the name of the color to retrieve
    
  Returns:
    leColor - the color value of the given name in the specified format
    
  Remarks:
    
*/
```
`LIB_EXPORT leColor leColorValue(`[`leColorMode`](#leColorMode)` mode, leColorName name`);






