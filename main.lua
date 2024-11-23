
--[[
  Dice2Step game
--]]

-- Load some default values for our rectangle.
function love.load(arg)
  if arg[#arg] == "-debug" then 
    require("mobdebug").start()
  end
  x, y, w, h = 20, 20, 60, 20
end

-- Increase the size of the rectangle every frame.
function love.update(dt)
  if (h <= 600-20) then
    h = h + 1
  end
  if (w <= 800-20 ) then
    w = w + 1
  end
end

-- Draw a coloured rectangle.
function love.draw()
    -- In versions prior to 11.0, color component values are (0, 102, 102)
    love.graphics.setColor(0, 255*0.4, 255*0.4)
    love.graphics.rectangle("fill", x, y, w, h)
    love.graphics.setColor(255, 0, 0)
    love.graphics.print("Hello World", 400, 300)
end