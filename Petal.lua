local Petal = Class('Petal')

function Petal:initialize(rgba)
    self.rgba = rgba--{rgba[1], rgba[2], rgba[3], rgba[4]}
    self.r = 0
    self.v = 0
    self.model = nil
end

function Petal:draw(x, y, r, radius)
    love.graphics.setColor(self.rgba)
    love.graphics.circle('fill',x, y, radius/2)
    love.graphics.setColor(0.3,0.3,0.3)
    love.graphics.circle('line',x, y, radius/2)
    love.graphics.setColor(1,1,1)
end

return Petal
