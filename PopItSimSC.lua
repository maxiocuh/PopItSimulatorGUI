local Luminosity = loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavoc101/Genesis-Studios/main/UserInterface/Luminosity.lua", true))()


function antiafk()
     local vv = game:GetService("VirtualUser")
        vv:CaptureController()
        vv:ClickButton2(Vector2.new())
end

local Window = Luminosity.new("Pop It Simulator GUI maxio#2558", "v1.0.0 ", 4370345701)
local Tab1 = Window.Tab("Main", 6026568198)
local Tab2 = Window.Tab("Teleports", 6022668945)


local Folder = Tab1.Folder("Scripts", "A bunch of scripts you can use")
local Folder2 = Tab2.Folder("Teleports", "Teleports For All Areas")

local humanoidrootpart = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

function pickup()
    local Event = game:GetService("ReplicatedStorage").Remotes.pickUpCash
Event:FireServer("cash4" , "cash5" , "cash6" , "cash1" , "cash2" , "cash3")
end

function Farm()
     local Event = game:GetService("ReplicatedStorage").Remotes.addCash
    Event:FireServer()    
end

function FarmG()
    local Event = game:GetService("ReplicatedStorage").Remotes.addGems
Event:FireServer("gem18")
end


Folder.Button("Farm Money", "Farm", function()
    game:GetService('RunService').Stepped:connect(function()
    Farm()
    end)
end)

Folder.Button("Farm  Gems" , "Farm" , function()
    game:GetService('RunService').Stepped:connect(function()
    FarmG()
    end)
end)

Folder.Button("Anti AFK ", "Run" , function()
    antiafk()
end)

Folder.Button("Pick Up Cash" , "Pick Up" , function()
        game:GetService('RunService').Stepped:connect(function()
            pickup()
            end)
end)


Folder2.Button("Starter Area" , "Teleport" , function()
    humanoidrootpart.CFrame = CFrame.new(-470.250793, 28.8699989, -92.6179199, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Folder2.Button("Beach" , "Teleport" , function()
    humanoidrootpart.CFrame = CFrame.new(-470.250793, 28.8699989, 189.13208, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Folder2.Button("Ice" , "Teleport" , function()
    humanoidrootpart.CFrame = CFrame.new(-470.250793, 28.8699989, 504.38208, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Folder2.Button("Desert" , "Teleport" , function()
    humanoidrootpart.CFrame = CFrame.new(-470.250793, 28.8699989, 895.88208, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Folder2.Button("Jungle" , "Teleport" , function()
    humanoidrootpart.CFrame = CFrame.new(-470.250793, 28.8699989, 1177.38208, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Folder2.Button("City" , "Teleport" , function()
    humanoidrootpart.CFrame = CFrame.new(-470.250793, 28.8699989, 1510.63208, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)