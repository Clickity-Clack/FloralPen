local Flower = Class('Flower')

function Flower:initialize(x,y)
    self.timePassed = 0
    self.bloomTime = 1
    self.startRadius = 10
    self.endRadius = 30
    self.radius = self.startRadius
    self.rgba = {1, 0.4, 0.5, 1}
    self.x = x
    self.y = y
end

function Flower:update(dt)
    self.timePassed = self.timePassed + dt
    if self.timePassed < self.bloomTime then
        self.radius = lerp(self.startRadius, self.endRadius, math.min(self.timePassed/self.bloomTime, 1))
    end
end

function lerp(v0, v1, t)
    return (1 - t) * v0 + t * v1
end

function Flower:draw()
    love.graphics.setColor(self.rgba)
    love.graphics.circle('fill',self.x, self.y, self.radius)
    love.graphics.setColor(0.3,0.3,0.3)
    love.graphics.circle('line',self.x, self.y, self.radius)
    love.graphics.setColor(1,1,1)
end

return Flower
