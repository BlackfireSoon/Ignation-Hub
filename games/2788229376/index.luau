local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/BlackfireSoon/Ignation-Hub/refs/heads/main/modules/UILib.lua'))()

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")

-- Variables
local Camera = Workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

-- Configuration State
local Config = {
    CamLock = false,
    AimPart = "UpperTorso",
    Target = nil,
    SpeedWalk = false,
    SpeedAmount = 1,
    ESP = false
}

-------------------------------------------------------------------
-- UTILITY FUNCTIONS
-------------------------------------------------------------------
-- Find nearest player to mouse cursor (Standard for Da Hood Aimlocks)
local function GetNearestPlayerToMouse()
    local nearest = nil
    local shortestDistance = math.huge

    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("Humanoid") and p.Character.Humanoid.Health > 0 then
            local pos = Camera:WorldToViewportPoint(p.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude

            if magnitude < shortestDistance then
                nearest = p
                shortestDistance = magnitude
            end
        end
    end
    return nearest
end

-------------------------------------------------------------------
-- WINDOW 1: COMBAT
-------------------------------------------------------------------
local CombatWin = Library:CreateWindow("Combat", Color3.fromRGB(255, 65, 65))

Library:CreateToggle(CombatWin, "Enable CamLock", false, function(state)
    Config.CamLock = state
    if state then
        Config.Target = GetNearestPlayerToMouse()
    else
        Config.Target = nil
    end
end)

Library:CreateTextBox(CombatWin, "Aim Part", "UpperTorso", {Large = false, Placeholder = "Head or UpperTorso", Code = false}, function() end, function(text)
    Config.AimPart = text
end)

Library:CreateToggle(CombatWin, "Auto-Block", false, function(state)
    _G.AutoBlock = state
    while _G.AutoBlock do
        task.wait(0.1)
        -- Triggers the block animation/remote if someone gets too close
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            local args = { [1] = "Block", [2] = true }
            local combatEvent = game:GetService("ReplicatedStorage"):FindFirstChild("MainEvent")
            if combatEvent then combatEvent:FireServer(unpack(args)) end
        end
    end
end)

-- CamLock RenderStepped Loop
RunService.RenderStepped:Connect(function()
    if Config.CamLock and Config.Target and Config.Target.Character and Config.Target.Character:FindFirstChild(Config.AimPart) then
        local targetPart = Config.Target.Character[Config.AimPart]
        -- Locks the camera to the target smoothly
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPart.Position)
    elseif Config.CamLock and not Config.Target then
        Config.CamLock = false -- Auto turn off if target dies/leaves
    end
end)

-------------------------------------------------------------------
-- WINDOW 2: MOVEMENT (ANTI-CHEAT BYPASS)
-------------------------------------------------------------------
local MoveWin = Library:CreateWindow("Movement", Color3.fromRGB(65, 150, 255))

Library:CreateToggle(MoveWin, "CFrame Speed", false, function(state)
    Config.SpeedWalk = state
end)

Library:CreateSlider(MoveWin, "Speed Multiplier", 1, {Min = 1, Max = 5, Step = 0.5}, function(v)
    Config.SpeedAmount = v
end)

Library:CreateButton(MoveWin, "Anti-Stomp (Delete Character)", nil, function()
    -- Da Hood specific: deletes your character's lower torso joints when downed to prevent getting stomped
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("LowerTorso") then
        LocalPlayer.Character.LowerTorso:Destroy()
    end
end)

-- CFrame Speed Loop (Bypasses Da Hood's standard WalkSpeed checks)
RunService.Heartbeat:Connect(function()
    if Config.SpeedWalk and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character:FindFirstChild("Humanoid") then
        local root = LocalPlayer.Character.HumanoidRootPart
        local hum = LocalPlayer.Character.Humanoid
        if hum.MoveDirection.Magnitude > 0 then
            root.CFrame = root.CFrame + (hum.MoveDirection * Config.SpeedAmount)
        end
    end
end)

-------------------------------------------------------------------
-- WINDOW 3: VISUALS
-------------------------------------------------------------------
local VisWin = Library:CreateWindow("Visuals", Color3.fromRGB(150, 255, 100))

Library:CreateToggle(VisWin, "Player Highlight ESP", false, function(state)
    Config.ESP = state
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character then
            if state then
                if not p.Character:FindFirstChild("ApexESP") then
                    local hl = Instance.new("Highlight", p.Character)
                    hl.Name = "ApexESP"
                    hl.FillColor = Color3.fromRGB(255, 50, 50)
                    hl.FillTransparency = 0.5
                    hl.OutlineColor = Color3.fromRGB(255, 255, 255)
                end
            else
                if p.Character:FindFirstChild("ApexESP") then
                    p.Character.ApexESP:Destroy()
                end
            end
        end
    end
end)

Library:CreateSlider(VisWin, "Field of View (FOV)", 70, {Min = 70, Max = 120, Step = 1}, function(v)
    Camera.FieldOfView = v
end)

-- Keep ESP updated for new spawns
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(char)
        if Config.ESP then
            task.wait(1) -- Wait for character to fully load
            local hl = Instance.new("Highlight", char)
            hl.Name = "ApexESP"
            hl.FillColor = Color3.fromRGB(255, 50, 50)
            hl.FillTransparency = 0.5
        end
    end)
end)
