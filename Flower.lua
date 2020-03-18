local Bloom = require 'Bloom'
local Petals = require 'Petals'
local Flower = Class('Flower')

function Flower:initialize(x,y)
    self.bloom = Bloom:new(1, 10, 30)
    self.petals = Petals:new(7)
    self.rgba = {1, 0.4, 0.5, 1}
    self.x = x
    self.y = y
end

function Flower:update(dt)
    self.bloom:update(dt)
end

function Flower:draw()
    self.petals:draw(self.x, self.y, 0, self.bloom.radius)
    -- love.graphics.setColor(self.rgba)
    -- love.graphics.circle('fill',self.x, self.y, self.bloom.radius)
    -- love.graphics.setColor(0.3,0.3,0.3)
    -- love.graphics.circle('line',self.x, self.y, self.bloom.radius)
    -- love.graphics.setColor(1,1,1)
end

return Flower
