local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Arceus-X-UI-Library/main/source.lua"))()
lib:SetTitle("Blazersnake Hub | Start")
lib:SetIcon("http://www.roblox.com/asset/?id=9178187770")
local a = workspace.Gravity

lib:SetTheme("Default")
lib:AddButton("Start Hub", function()
            print('Hub is Loaded!')
    local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("Blazersnake Hub", "Default")

local tab = DrRayLibrary.newTab("My Tab", "ImageIdHere")

tab.newButton("Button", "Prints Hello!", function()
    print('Hello!')
end)

tab.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    if toggleState then
        print("On")
    else
        print("Off")
    end
end)

tab.newInput("Input", "Prints your input.", function(text)
    print("Entered text: " .. text)
end)

tab.newKeybind("Input Key", "Press the key to start; it will be printed out.", function(key)
    print(key)
end)

tab.newSlider("Slider", "Epic slider", 1000, false, function(num)
    print(num)
end)
end)

lib:AddToggle("Reset Character", function(state)
    if state then
    game.Players.LocalPlayer.Character.Head:Destroy()
    end
end, false)
