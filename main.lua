--[[
  Dice2Step game
--]]

-- Load some default values for our rectangle.
function love.load(arg)
  utils = require("Utils");
  local splash = require("Splash")
  splash.show()
  if arg[#arg] == "-debug" then 
    require("mobdebug").start()
  end
  x, y, w, h = 20, 20, 80, 60
  delay = 0;
  maxDelay = .5;
  colors = utils.getRandColors()
  width, height = utils.getScreenSize()
  blue = 0
end

-- Increase the size of the rectangle every frame.
function love.update(t)
  delay = delay + t;
  if delay > maxDelay then
    delay = 0;
    colors = utils.getRandColors()
    blue = blue+10;
--    print (colors.red, colors.green, colors.blue)
--    print (colors.red, colors.green, colors.blue)
  end

  if (h <= height-40) then
    h = h + 3*t*5
--  else
--    h = height - 40
  end
  if (w <= width-40 ) then
    w = w + 4*t*5
--  else 
--    w = width - 40
  end
end

-- Draw a coloured rectangle.
function love.draw()
--  love.graphics.setColor(love.math.colorFromBytes(colors.red, colors.green, colors.blue))
  love.graphics.setColor(love.math.colorFromBytes(128, 255-blue, blue))
  love.graphics.rectangle("fill", x, y, w, h)
--    love.graphics.setColor(255, 0, 0)
--    love.graphics.print("Hello World", 400, 300)
end