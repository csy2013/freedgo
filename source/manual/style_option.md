---
title: style option
---

 ![Online Diagram Drawing](/public/themes/freedgo/style_option.png "style option") 
 
 
The first part of the `Styles` tab handles shape colors. Clicking any color block will set the selected shape to the specified color. We can choose from a wider range of colors by clicking the color block button to the right of the fill check box. This will bring a color chart screen.

 ![Online Diagram Drawing](/public/themes/freedgo/style_option1.png "style option") 
 
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script><ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-9055212255210230" data-ad-slot="7941459222"></ins> <script>(adsbygoogle = window.adsbygoogle || []).push({});</script>
You can select the background color by using the color chart with fine gradation or the coarser color chart below it.
If you use a color chart with `fine grading`, please note that once you have made a selection, you can adjust the color very accurately using the slider to the right of the main chart.  
The text field will display the hexadecimal representation of the three primary color components (red, green, and blue) of the currently selected color, and the field background will also change to the selected color. 
The default choice is white. Once you are satisfied with your choice, press `Apply` to set the fill to this color. 
Below we chose a brown background. Please note that the `Fill Color Block` button will change color to reflect your selection.

![Online Diagram Drawing](/public/themes/freedgo/style_option2.png "Fill Color")  

If you want a shape without color, just uncheck the `Fill` checkbox to remove the color fill. 
 You don't have to fill it with a solid color. On the contrary, you can gradually change the color between the two colors.
 To do this, you need to check the `Gradient` check box. This will cause another color block button to appear, and you can perform the same process as if you were using a fill color.
  Once you choose two colors, you can decide the direction of the color gradient. Below we have retained the fill color and added a light yellow gradient color with a downward facing gradient.

![Online Diagram Drawing](/public/themes/freedgo/style_option3.png "Fill Color") 
 
By default, the shape has a black border around it. To change the line color, click the color block button to the right of the line scale box and follow the same color selection process again. Now we have chosen a red line.
 
 ![Online Diagram Drawing](/public/themes/freedgo/style_option4.png "Fill Color") 
 
 
还有其他自定义线条的选项:您可以选择`虚线`或`虚线、更改线条粗细`或完全删除`线条`。也可以在线周围设置一个周界空间，这将在形状和任何连接的连接器之间创建空白空间(这种效果纯粹是视觉效果--连接器将照常工作)。下一个style option允许您改变形状的不透明度，这与透明度相反。不透明度为100%的形状根本不透明而不透明度为0%的形状是完全透明的。这里显示的是和我们以前一样的形状，同样的白色背景，但是不透明度是30%。

There are also other options for customizing lines: you can select `dashed line` or `dashed line change line thickness` or delete `line` completely. 
You can also set a perimeter space around the line, which will create a blank space between the shape and any connected connectors (this effect is purely visual-the connectors will work as usual). 
The next style option allows you to change the opacity of the shape, which is the opposite of transparency. A shape with an opacity of 100% is completely opaque while a shape with an opacity of 0% is completely transparent. 
What is shown here is the same shape as before, the same white background, but the opacity is 30%.

 ![Online Diagram Drawing](/public/themes/freedgo/style_option5.png "Fill Color") 
 
 
The next style option applies various effects to the shape. How much effect depends on the shape. 
For rectangles, all three are available. 
They are as follows: 
1. fillet: this will fillet the corners of the shape 
2. Shadows: This applies shadows to shapes 
3. Glass: This increases the reflection effect of the shaped surface. 
4. Hand painting: increase the effect of hand painting.  
We can see all three effects in the order listed below. The middle effect, shadow, is very weak and difficult to see outside the painting.
    
 ![Online Diagram Drawing](/public/themes/freedgo/style_option6.png "Fill Color") 
 
 
 ##	编辑样式
 
 Let's start by selecting a rectangle and pressing the `Edit Style` button, which will pop up a window displaying XML information corresponding to the shape style.  
 Please note that we have set the perimeter spacing to 10 (the default is 1). This effect will become apparent in the future.
 
  ![Online Diagram Drawing](/public/themes/freedgo/style_option7.png "Edit Style") 
  
 It is very simple to associate different format statements with different attributes of shapes. 
 For example, shadow and glass effects are both off, while circular effects are on.  
 Hexadecimal representations of different colors are exactly the same as what we saw when we selected them. 
 We can change the value given here, then press `Apply`, and the shape will adjust its style (and thus its appearance). 
 The style tab control will also change to reflect any edits made here.  
 For example, let's change the fill color from the previous color to green. 
 The hexadecimal value 00FF00 will be displayed in green, so we will change `fillColor` to this value (see the highlighted section below). Click `Application` to see the effect
  
 ![Online Diagram Drawing](/public/themes/freedgo/style_option8.png "Edit Style")  
  
 We have seen that all colors in a style are optional. They can be closed if necessary. 
 Therefore, if we want to remove the color gradient from the style, we can do this by removing the part where the gradientColor is set, that is, deleting `gradient color`
  
 ![Online Diagram Drawing](/public/themes/freedgo/style_option9.png "gradientColor")  
 
 ##	Copy and paste style
 
 
 Now let's look at a way to convert style settings between shapes. Let's drag a cylinder from the General Symbol menu to our workspace.
 
 ![Online Diagram Drawing](/public/themes/freedgo/style_option10.png "Edit Style")
  
 
 Because we just added this shape, it only has the default style information. 
 If we want it to share the same style as the rectangle, then we follow the following procedure:  
 1. Click the rectangle and press the Copy Style button. 
 2. Click the cylinder and press the Paste Style button. 
 3. The cylinder now has the same style information as the rectangle.
  
  ![Online Diagram Drawing](/public/themes/freedgo/style_option11.png "Edit Style") 
  
 ##	Setting and Clearing Default Styles
 
 Let's delete this cylinder and replace it with the previous brown rectangle.
 
  ![Online Diagram Drawing](/public/themes/freedgo/style_option12.png "Edit Style") 
  
Now let's select a green rectangle and press the Set as Default Style button. 
This will cause any newly added shapes to automatically have the same style settings as the green rectangle. 
Now let's add a triangle from the General Symbol menu.
 
  ![Online Diagram Drawing](/public/themes/freedgo/style_option14.png "Edit Style") 
   
 As we expected, the triangle matches the pattern of the green rectangle.
  Now let's select a brown rectangle and copy on `connect` by clicking the blue `+symbol` to the right of the shape.  
  This new rectangle is an exact copy of the first brown rectangle and gets all the style settings from its parent rectangle instead of the currently set style settings. 
  Incidentally, the arrow does not seem to touch any one shape, even if it is connected to two shapes and will move with their movement. 
  This is because we set the perimeter spacing of the shape from the default value of 1 to 10. 
  Finally, we can deselect all shapes, which will cause the format panel to reappear on the right side of the screen.
   ![Online Diagram Drawing](/public/themes/freedgo/style_option13.png "Edit Style") 
 
 Press the Clear Default Style button at the bottom to clear all global style settings. Newly added shapes will no longer use the saved style settings (currently green rectangle), but will use the default settings.
 
  ![Online Diagram Drawing](/public/themes/freedgo/style_option15.png "Edit Style") 
