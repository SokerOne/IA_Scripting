-- Escribe codigo
require "library"
prepareWindow()

creature = drawCreature(layer, "griphon", 256, 256)
mousePositionX = 0
mousePositionY = 0
changeDirection = false

function onUpdate(seconds)
    creaturePositionX, creaturePositionY = getPropPosition(creature)
    
    -- Empieza tu c?digo para mover a la criatura
    if onClickLeft(down) == true then
        creaturePositionX = creaturePositionX + 10 * seconds
    else
        creaturePositionX = creaturePositionX - 10 * seconds
    end
    -- Termina tu c?digo

    setPropPosition(creature, creaturePositionX, creaturePositionY)
end

function onClickLeft(down)
    if down then
        print("Clicked Left")
        creatureSizeX, creatureSizeY = getCreatureSize("griphon")
        creaturePositionX, creaturePositionY = getPropPosition(creature)
        
        -- Escribe tu c?digo aqui para bot?n izquierdo rat?n
        if changeDirection == false then
            changeDirection = true
        else
            changeDirection = false
        end
        -- Termina tu c?digo
        
    end
    return changeDirection
end

function onClickRight(down)
    print("Clicked Right")
end

function onMouseMove(posX, posY)
    mousePositionX = posX
    mousePositionY = posY
    --print("Mouse Moved to " .. posX .. ","..posY)
end

function onKeyPress(key, down)
    print("Key pressed: "..key)
end



callbackConfiguration(onClickLeft, onClickRight, onMouseMove, onKeyPress)
mainLoop()

