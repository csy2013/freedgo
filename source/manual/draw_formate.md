---
title: Format panel
---

 ![Online Diagram Drawing](/public/themes/freedgo/draw_formate.png "Format panel") 
 
## Format panel
 
###	Background 

You can add a background-`picture image`,`solid background`, or both to the chart. The first step is to enable this option by checking the `checkbox`, because it is turned off by default. 
If you want the `picture background`, click the `image` button. If you want a  `solid color background`, click the `white block button`. 
When the image button is pressed, a new background appears Drag the image or type a valid image URL in the Image URL field, and then press Apply to cause the image to be used as the chart background.  
If you like, you can set values for width and height, although it is usually easier to adjust when you see an image on a chart. 
 Now let's look at the process of applying a solid color background. 
 After pressing the white block button, a color chart screen will appear.

![Online Diagram Drawing](/public/themes/freedgo/draw_formate1.png "Format panel") 


You can select the background color using a finely graded color chart or a coarser color chart below it. 
If you use a finely graded color chart, please note that once you have made a selection, you can adjust the color very accurately using the slider to the right of the main chart.  
The text field displays the hexadecimal representation of the three primary color components (red, green, and blue) of the currently selected color. The default choice is white. Once you are satisfied with your choice, press `Apply` to set the background to this color. 
Below we chose a dark green background.
 ![Online Diagram Drawing](/public/themes/freedgo/draw_formate2.png "BackGround") 

###	Mathematical typesetting

This option allows mathematical typesetting in document properties and allows users to create mathematical formulas and equations using AsciiMath or LaTeX. MathJax is used for rendering. 
By default, mathematical typesetting is disabled and should only be enabled if the chart contains mathematical typesetting, as it affects rendering performance and exported image quality. 
Supports all export formats except SVG. 
To illustrate how this works, here is an example of a mathematical formula, the example being LaTeX format: \ (\ sqrt {3x-1}+(1+x) 2 \)

 ![Online Diagram Drawing](/public/themes/freedgo/draw_formate3.png "Mathematical typesetting") 
  
###	Page size setting

You can use the drop-down menu to select a different `paper size`. In most cases, you can also choose `portrait` or `landscape`.
The exception is if you select Custom from the drop-down menu; 
In this case, you will get the fields (in pixels) that specify the paper height and width.

###	Clear global style

 

You can set a single global style for a new shape that you drag from the `Label Library` menu. As long as this global style is valid, the new shapes will conform to the style settings.
The exception is that copying an existing shape will result in an exceptional clone of the original shape.
