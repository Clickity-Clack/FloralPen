local Bloom = require 'Bloom'
local Petals = require 'Petals'
local Flower = Class('Flower')

function Flower:initialize(x, y, rgba)
    self.bloom = Bloom:new(1, 3, 10)
    self.petals = Petals:new(7, rgba)
    self.rgba = rgba -- or {1, 0.4, 0.5, 1}
    self.x = x
    self.y = y
end

function Flower:update(dt)
    self.bloom:update(dt)
end

function Flower:draw()
    self.petals:draw(self.x, self.y, 0, self.bloom.radius)
end

return Flower
