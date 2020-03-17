Class = require  'lib/middleclass'
local Flower = require 'Flower'

local flowers
local mouseDown = false
local lastposition = {X = nil, Y = nil}

function love.load()
    love.graphics.setBackgroundColor(0.294,0,0.51)
    flowers = {}
end

function love.draw()
    for i, flower in pairs(flowers) do
        flower:draw()
    end
end

function love.update(dt)
    for i, flower in pairs(flowers) do
        flower:update(dt)
    end
    local x,y = love.mouse.getPosition()
    if mouseDown and sufficientDistance(x, y) then
        table.insert(flowers, Flower:new(x, y))
        lastposition.x = x
        lastposition.y = y
    end
end

function sufficientDistance(x, y)
    if lastposition.x == nil then return true end
    local distance = math.sqrt(((x - lastposition.x)*(x - lastposition.x)) + ((y - lastposition.y)*(y - lastposition.y)))
    return distance > 25
end

function love.mousepressed(x,y)
    mouseDown = true
    lastposition.x = x
    lastposition.y = y
end

function love.mousereleased(x,y)
    mouseDown = false
end