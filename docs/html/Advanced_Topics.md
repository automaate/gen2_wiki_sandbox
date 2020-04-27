# Advanced Topics

MHGS communicates advanced topic documentation written to introduce more complex concepts and features supported with the suite.

## Speed and Performance of Different Image Decode Formats in MHGC 

MHGC supports various image formats and the MHGC Image Assets Manager provides the ability to convert and store a source image into to the following formats

* Bitmap RAW
* Bitmap Raw Run-Length Encoded (RLE)
* JPEG
* PNG
* Predecoded RAW Bitmap in DDR (PIC32MZ DA)

The following table shows the relative rendering time and Flash memory requirements of the different image formats in the MPLAB Harmony Graphics Library. The rendering time includes decoding the image and drawing it to the screen. This information is helpful when optimizing a MPLAB Harmony graphics project for performance and Flash memory space. For example, as shown by the red highlighted text in the table, a 40x40 pixel 16-bit RAW image renders 2.38 times faster and uses 2.59 times more Flash space than a JPEG image. 

![](https://microchip-mplab-harmony.github.io/gfx/MHGC%20UG%20Decode%20Table.png)

### Predecoded Images in DDR (RAW)

For PIC32MZ DA devices with DDR, the MHGC Image Asset Manager provides an option to predecode images from Flash and store them into DDR as RAW images. The GPU is used to render the decoded image from DDR to the frame buffer. This provides a faster render time than an equivalent RAW image in Flash memory, specifically for large images (up to 10 times faster for a 200x200 image). Conversely, predecoding small images 40x40 pixels or smaller in DDR may not render faster due to the additional overhead of setting up the GPU. 

Recommendations: 

    If there is adequate DDR memory available, consider predecoding images to DDR for best performance
    Using JPEG images and predecoding them into DDR can provide the best rendering performance and most Flash memory savings.

Note: 
	
The images are decoded from Flash to DDR memory by the Graphics Library during initialization and may introduce delay at boot-up, depending on the number and size of the images. 


### RAW Images

RAW images provide fast rendering time, as there is no decoding needed. However, depending on image content, it can be two times larger than a Run-Length Encoded (RLE) image and about 3 to 10 times larger than a JPEG. 

Recommendation: 

For small images that are to be rendered frequently, consider using a RAW image for better performance


### JPEG Images

JPEG images provide the most Flash space savings, but are slower to render compared to RAW and RAW RLE. 

Recommendations: 

    If images are large and not used frequently, consider using the JPEG image format to save flash memory space
    If DDR memory is available, consider predecoding JPEG images in DDR for better rendering performance

### Run-Length Encoded RAW Images

In terms of rendering speed and size, RAW RLE images are in between RAW and other compressed formats like JPEG or PNG. Depending on the image contents, RAW RLE can be approximately 1.5 times faster than JPEG, but could be significantly larger in size for large images. Again, depending on the image content, RAW RLE can be about half the size and performance of a RAW image. 

Recommendation: 

If optimizing your application for both speed and flash size consider using RAW RLE images
PNG Images

Among the image formats, PNG is slowest to render and requires more memory to decode. 

Recommendations: 

    Unless fine levels of alpha-blending are needed, it is better to use other image formats to achieve the best performance. Use the MHGC Asset Manager to convert the source PNG image and store it in a different image format.
    If you would like to use an image with a transparent background, it may be better to use a RAW RLE image with background color masking to achieve the same effect with better performance than a PNG. Color masking is supported in the MHGC Image Asset Manager.

## Using a Third-Party Display Module

This tutorial aims to demonstrate how to run MPLAB Harmony Graphics Suite with a third-party capacitive touch display module. For this tutorial, we will use a Mikroe TFT Proto 5” Capacitive display module that is connected to a PIC3MZ EF Starter Kit. The display module has an 800x480 resolution display with an SSD1963 display controller, and a FT5306 capacitive touch controller. 

This tutorial requires knowledge of how to create an MPLAB Harmony project and using MPLAB Harmony Graphics Composer to design a screen. These processes won’t be covered in this tutorial. 


## Custom Event Handling and Dynamic Widget Creation 

This example is based on the Quick Start Guide “Adding an Event to the Aria Quickstart Demonstration” found in the Graphics Library documentation. 

This example has a target configuration for the SAM E7 Xplained Ultra Board with a 4.3” WQVGA Diaplay. For setting up these boards see the instructions for the Aria Quickstart demonstration under Graphics Demonstrations. 

This project demonstrates the following events/macros: 


## Enabling RTOS with Aria Graphics 

In an RTOS-based system, the Aria Graphics Library can be configured to run as a stand-alone task that blocks and waits for external events from the input/touch task or the application task. This offers a couple of advantages: (1) this allows the Aria Graphics library to run efficiently by relinquishing CPU time to other tasks when the UI is idle, (2) the Aria Graphics library can be run as a high priority task and be more responsive to user input since it can preempt lower priority tasks. 

To create a Harmony Graphics project with RTOS, the initial configuration is similar to a bare-metal Graphics project. The following Harmony components must be added to the project: 

1. Display 

2. Display controller interface peripheral and driver 

3. Touch interface peripheral and driver 

4. GFX Core (Hardware Abstraction Layer) 

5. Input System Service 

6. Harmony Core 

7. Aria Graphics Library 

The project graph for this initial (bare-metal) configuration would look something like the one below: 


## Porting Aria Applications to Legato 

Microchip Harmony Graphics Suite Legato graphics library is a result of an on going effort to make graphics applications and development more easy to use and high performance.. 

When porting Aria-related code to Legato library, application developers should be aware that the graphics development infrastructure has undergone considerable changes in Legato. 

The table below details items to consider and the impact they have when porting an application using the Aria graphics library to the Legato graphics library. 

### Project Graph Component Changes
There are a few changes in MHC that affect the Aria applications. These are:

|----------|----------|
Aria | Legato | Discussion 
-----|--------|-----------
Aria Graphics Library component | Legato Graphics Library component  | The Aria component should be removed from the project graph. Select Legato instead. 
Aria Display Driver components | LE Display Driver components | The Aria display driver component should be removed. Select an LE display driver component instead. 
GFX Core Hardware Abstraction Layer component | GFX Core LE component for display management purposes | The HAL is no longer needed. The GFX Core LE is enabled on selection of a LE display driver.


### Middleware Folder Changes

There are a few folder changes which affect Aria applications. These are: 

|----------|----------|
Aria | Legato | Discussion 
-----|--------|-----------
middleware/aria | middleware/legato | The aria folder is not used for Legato applications. All related support files will exist in the legato folder. This includes library and drivers and templates. 

### Generated GFX File Changes

There are a few changes which effect the content of generated files. These are:

|----------|----------|
| Aria | Legato | Discussion |
|-----|--------|-----------|
|Application specific files are scattered under the config folder in various locations.  | Application specific files are located in the config/<your config>/gfx/legato/generate  | All Legato applications will generate fonts, images, screen and app support files to a single folder named "generate". |
| The UI design is hidden in the harmony.prj file | The UI design is stored in a single zip file named: <your_config>_design.zip.
| This file is selected when invoking Graphics Designer  |


###  Generated Harmony File Changes

There are a few changes to the content of generated files that should be noted. These are: 


### Driver Interface Changes

There are a few changes which effect Aria driver interface. These are: 


### Widgets and Screen Changes

Widgets and screens have a new declaration and calling mechanism. More facilities for speciality in Legato: These ar


### Memory Use Changes


Memory use was found to be problematic in Aria during heavy heap usage and debugging. Legato addresses heap allocation and dynamic memory as follows:


## Improved Touch Performance with Phantom Buttons 

### aria_coffeemaker Demonstration Example 
	
Provides image examples with buttons in the aria_coffeemaker demonstration. 

 Small buttons are hard to activate on the screen. The use of phantom (invisible) buttons can improve touch performance without increasing the size of the visible footprint of the button on the display. 

The aria_coffee_maker has a sliding tray on each side of the display. Sliding a tray in, or out, is accomplished by a phantom (invisible) button. Looking at the left tray, we see the three parts of this phantom button.

1. LeftTrayLid: An invisible button widget, whose outline is shown in blue. This area is the touch field.

2. ImageWidget5: An image widget containing a hand icon, providing a visual clue as to how to manipulate the tray.

3. The Release Image and Pressed Image: These are defined as part of the button widget properties. The Pressed Image has a darker coloring than the Released Image. This difference is what shows the user that the button has been pressed.

The drawing hierarchy for this part of the design is shows that ImageWidget5 is a daughter widget to the LeftTrayLid button widget. 


![](https://microchip-mplab-harmony.github.io/gfx/MHGC%20UG%20Lefttraylid.png)

The drawing hierarchy for this part of the design is shows that ImageWidget5 is a daughter widget to the LeftTrayLid button widget. 


![](https://microchip-mplab-harmony.github.io/gfx/MHGC%20UG%20Lefttray%20widget.png)

 Examining the properties of the LeftTrayLid button widget reveals more about how this works. The following figure demonstrates these three properties. 

1. The Border is defined as None. 

2. Background Type is defined as None. 

3. The different images used will show when the button is Pressed or Released. 

![](https://microchip-mplab-harmony.github.io/gfx/MHGC%20UG%20Left%20tray%20lid%20properties%20editor.png)

By setting the border and background to None, the button is invisible. Only by providing different images for Released versus Pressed does the user know when the button has been pressed. 

The actual touch region defined by the button is much larger than the images shown on the display. This extra area increases the touch response of the display.



### Small Buttons Controlled by Phantom Buttons 
	
Provides information on phantom button control of small buttons. 



## Draw Pipeline Options 

## Dynamic Graphics 