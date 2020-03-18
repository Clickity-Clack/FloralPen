local Bloom = Class('Bloom')

function Bloom:initialize(time, startRadius, endRadius)
    self.timePassed = 0
    self.bloomTime = time
    self.startRadius = startRadius
    self.endRadius = endRadius
    self.radius = self.startRadius
end

function Bloom:update(dt)
    self.timePassed = self.timePassed + dt
    if self.timePassed < self.bloomTime then
        self.radius = lerp(self.startRadius, self.endRadius, math.min(self.timePassed/self.bloomTime, 1))
    end
end

function lerp(v0, v1, t)
    return (1 - t) * v0 + t * v1
end

return Bloom
