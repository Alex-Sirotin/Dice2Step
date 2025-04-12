local Map = {}

function Map:new(tiles = 64)
  o = {
    tiles: tiles
  }
  self.__index = self
  return setmetatable(o, self)
end

function Map.generate()
  print("Generate map")
end

return Map