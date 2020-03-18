local Flower = require 'Flower'
local Arrangement = Class('Arrangement')

function Arrangement:initialize()
    self.colors = {{0.5, 0.4, 1, 1}, {0.9, 0, 0.6, 1}, {1, 0.4, 0.5, 1}, {0, 0, 0, 1}}--{{0.5, 0.4, 1, 1}}
end

function Arrangement:newFlower(x, y)
    return Flower:new(x, y, self.colors[RandomTo(#self.colors)])
end

function RandomTo(b)
    local a = math.ceil(math.random() * b)
    return (a % b) + 1
end
-- collection of flower types
-- determine when to place flowers (spacing) + which flower type to place

--move sufficientDistance here

return Arrangement
