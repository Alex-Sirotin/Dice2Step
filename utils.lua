local Utils = {}

function Utils.getScreenSize()
--  local x1, y1, displayindex = love.window.getPosition()
  local width, height, flags = love.window.getMode()
  return width, height 
end

function Utils.getRandColors()
  local colors = {
    red = love.math.random(1, 255),
    green = love.math.random(1, 255), 
    blue = love.math.random(1, 255)
  }
  
  return colors
end

return Utils