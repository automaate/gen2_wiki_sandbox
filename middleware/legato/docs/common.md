
# Module <!-- group --> `common`

The `common` module contains Common integrations.

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`namespace `[`common::color`](#namespacescy_1_1wrtc)    |  
`namespace `[`common::common`](#namespacescy_1_1wrtc)    | 
`namespace `[`common::error`](#namespacescy_1_1wrtc)    | 
`namespace `[`common::math`](#namespacescy_1_1wrtc)    | 
`namespace `[`common::pixelbuffer`](#namespacescy_1_1wrtc)    | 
`namespace `[`common::rect`](#namespacescy_1_1wrtc)    | 
`namespace `[`common::rtos`](#namespacescy_1_1wrtc)    | 
`namespace `[`common::utils`](#namespacescy_1_1wrtc)    | 

# namespace `common::color` 



## Data Types and Constants

 Contants                        | Descriptions                                
--------------------------------|---------------------------------------------
`typedef uint32_t leColor;`    | 
`#define LE_COLOR_MAX_SIZE      4`  | This class implements a fake `AudioDeviceModule` that does absolutely nothing.
`#define RGB_8_BITS             255`<br/> `#define RGB_6_BITS             63`<br/> `#define RGB_5_BITS             31`<br/>`#define RGB_3_BITS             7`<br/> `#define RGB_2_BITS             2`    | 
`#define RGB_332_RED_MASK       0xE0<br/>
 #define RGB_332_GREEN_MASK     0x1C<br/>
 #define RGB_332_BLUE_MASK      0x3`   | 
`#define RGB_565_RED_MASK       0xF800 <br/> 
 #define RGB_565_GREEN_MASK     0x7E0 <br/> 
 #define RGB_565_BLUE_MASK      0x1F` |
`#define RGBA_5551_RED_MASK     0xF800<br/>
 #define RGBA_5551_GREEN_MASK   0x7C0<br/>
 #define RGBA_5551_BLUE_MASK    0x3E<br/>
 #define RGBA_5551_ALPHA_MASK   0x1` |
`#define RGB_888_RED_MASK       0xFF0000<br/>
 #define RGB_888_GREEN_MASK     0xFF00<br/>
 #define RGB_888_BLUE_MASK      0xFF` |
`#define RGBA_8888_RED_MASK     0xFF000000<br/>
 #define RGBA_8888_GREEN_MASK   0xFF0000<br/>
 #define RGBA_8888_BLUE_MASK    0xFF00<br/>
 #define RGBA_8888_ALPHA_MASK   0xFF |
`#define ARGB_8888_RED_MASK     0xFF0000<br/>
 #define ARGB_8888_GREEN_MASK   0xFF00<br/>
 #define ARGB_8888_BLUE_MASK    0xFF<br/>
 #define ARGB_8888_ALPHA_MASK   0xFF000000` |
 
## Summary

 Functions                        | Descriptions                                
--------------------------------|---------------------------------------------
[`LIB_EXPORT leColor leColorValue(leColorMode mode, leColorName name)`](#leColorValue)    | 
[`LIB_EXPORT uint32_t leColorChannelRed(leColor clr, leColorMode mode)`](#leColorChannelRed)    | 
[`LIB_EXPORT uint32_t leColorChannelGreen(leColor clr, leColorMode mode)`](#leColorChannelGreen)    | 
[`LIB_EXPORT uint32_t leColorChannelBlue(leColor clr, leColorMode mode)`](#leColorChannelBlue)    | 
[`LIB_EXPORT uint32_t leColorChannelAlpha(leColor clr, leColorMode mode))`](#leColorChannelAlpha)    | 
[`LIB_EXPORT leColor leColorConvert(leColorMode mode_in,leColorMode mode_out, leColor color)`](#leColorConvert)    | 
[`LIB_EXPORT leColor leColorBlend_ARGB_8888(leColorMode mode_in,leColorMode mode_out, leColor color)`](#leColorBlend_ARGB_8888)    | 
[`LIB_EXPORT leColor leColorLerp(leColor l, leColor r, uint32_t percent, leColorMode mode)`](#leColorLerp)    | 
[`LIB_EXPORT leColor leColorLerp(leColor l, leColor r, uint32_t percent, leColorMode mode)`](#leColorLerp)    | 
[`LIB_EXPORT leColor leColorBilerp(leColor c00, leColor c01, leColor c10,leColor c11, uint32_t xper,uint32_t yper, leColorMode mode)`](#leColorBilerp)    |

# function `leColorValue` 

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
LIB_EXPORT leColor leColorValue(leColorMode mode, leColorName name);
```  





