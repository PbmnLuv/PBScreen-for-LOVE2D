# PBScreen-for-LOVE2D
Library for LÖVE that draws your canvas fully to the screen, stretch proof.

How to use it:

First off you'll need to require the lib file to a variable in your main or in any other module you gonna use it.
Suggested variable name would be a global PBScreen like this:

PBScreen =  require "path/PBScreen"

===========================================================

Then you will need to set the canvas like you normally do.

After setting the canvas, you can call the method drawCanvas from the lib inside your draw function 
in order for the game canvas to fit the entire screen 
without any distortion and fully, and it should be stretch proof and support resizing.

game_canvas is the canvas you'd like to draw
game_width is your game canvas screen width
game_height is your game canvas screen height

===========================================================
Example
Let's say you have your game canvas resolution set to 852x420 and you want to exhibit it in a 1080p screen
you'd need to just call this after having set your canvas:


PBScreen.drawCanvas(canvas, 852, 420)


And it will do what it's supposed to do. Even if you resize the screen it will keep it's shape and be centered in the middle of the window.


===========================================================

Thank you for trying it out! I hope it helps!
