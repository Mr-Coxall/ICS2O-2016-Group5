-- ICS2O-2016-Group5
-- WorldSelect

-- Created by: Nicolas Doyon Lesarge
-- Created on: Dec-2016
-- Created for: ICS2O
local world1
local world2
local butttonToMainMenu

WorldSelect = class()

function WorldSelect:init()
    -- you can accept and set parameters here
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    sprite("Project:Blue Info Button")
    world1 = Button ("Dropbox:Blue Forward Circle Button", vec2(WIDTH/4, HEIGHT/2))
    world2 = Button ("Dropbox:Blue Info Button", vec2(WIDTH/1.4, HEIGHT/2))
    buttonToMainMenu = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/10, HEIGHT/1.1))
end

function WorldSelect:draw()
    -- Codea does not automatically call this method
    world1:draw()
    world2:draw()
    buttonToMainMenu:draw()
end

function WorldSelect:touched(touch)
    -- Codea does not automatically call this method
    world1:touched(touch)
    world2:touched(touch)
    buttonToMainMenu:touched(touch)
    
    if (buttonToMainMenu.selected == true) then
        Scene.Change("mainMenu")
        end
    if (world1.selected == true) then
        Scene.Change("levelsWorld1")  
        end
    if (world2.selected == true) then
        Scene.Change("levelsWorld2")  
        end
    
end