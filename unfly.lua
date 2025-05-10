
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

local velocityHandlerName = "VelocityHandler"
local gyroHandlerName = "GyroHandler"
local mfly1
local mfly2

local function disableFlying()
    pcall(function()
        FLYING = false
        local root = HumanoidRootPart
        if root:FindFirstChild(velocityHandlerName) then root:FindFirstChild(velocityHandlerName):Destroy() end
        if root:FindFirstChild(gyroHandlerName) then root:FindFirstChild(gyroHandlerName):Destroy() end
        LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
        if mfly1 then mfly1:Disconnect() end
        if mfly2 then mfly2:Disconnect() end
    end)
end

disableFlying() -- Automatically disables flying when executed
