local Petal = require 'Petal'
local Petals = Class('Petals')

function Petals:initialize(count, rgba) -- types of petal?
    self.count = count
    self.angle = (2 * math.pi)/self.count
    self.rotation = math.random() * 2 * math.pi
    self.petals = {}
    for i = 0, self.count do
        table.insert(self.petals, Petal:new(rgba))
    end
end

function Petals:draw(x,y,r,radius)
    love.graphics.circle('fill',x, y, radius)
    for i, petal in pairs(self.petals) do
        petal:draw(x + (radius * math.cos(self.angle * i + self.rotation)), y + (radius * math.sin(self.angle * i + self.rotation)), self.angle * i, radius)
    end
end

return Petals
