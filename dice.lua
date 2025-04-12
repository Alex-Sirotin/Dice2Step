local Dice = {}

--local max = 6
--local min = 1

function Dice:new(max = 6, min = 1)
  o = {
    max: max
    min: min
  }
  self.__index = self
  return setmetatable(o, self)
end

function Dice.roll()
  return love.math.random(self.max, self.min)
end

return Dice