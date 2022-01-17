--PBScreen Library created by Thiago Avidos "Pbmn01"
--You can use it in non-commercial projects and even in commercial projects
--You may alter it to fit your project better
--Thanks for trying it out!


--[[
How to use it:

First off you'll need to require the file in your main or in any file you gonna use it

After setting the canvas, you can call the method drawCanvas in order for the game canvas to fit the entire screen without any distortion and fully, it should be stretch proof

game_canvas is the canvas you'd like to draw
game_width is your game canvas screen width
game_height is your game canvas screen height

]]


PBScreen = {}

function PBScreen.drawCanvas(game_canvas, game_width, game_height)
  
  local swidth = love.graphics.getWidth()
  local sheight = love.graphics.getHeight()
  local smult = sheight / game_height
  
  local dif = 0

  local maxSmult = swidth/game_width
  local needToGoDown = false
  
  if smult > maxSmult then
    smult = maxSmult
    needToGoDown = true
  end
  
  if needToGoDown == true then
    dif = sheight - game_height*smult
  end
  
  love.graphics.setColor(255/255, 255/255, 255/255, 255/255)
  
  love.graphics.draw(game_canvas, swidth/2 - (game_width*smult)/2, 0+dif/2, 0, smult, smult)
  
  
end

return PBScreen