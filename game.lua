local Game = {}

--local map
--local players
--local dice
--local turns

function Game:new(map, players, dice)
  Game = {
    map: map
    dice: dice
    players: players
  }
  map.generate();
  playOrder()
end

function playOrder()
end;

function Game:move(player)
  return player.move(dice.roll())
end

return Game