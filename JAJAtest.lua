--[[
  ____ _____ _   _ ____   ___  ____  
 / ___| ____| \ | / ___| / _ \|  _ \ 
| |   |  _| |  \| \___ \| | | | |_) |
| |___| |___| |\  |___) | |_| |  _ < 
 \____|_____|_| \_|____/ \___/|_| \_\
]]

if not game:IsLoaded() then
    game.Loaded:Wait()
end
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local uiParent = player:WaitForChild("PlayerGui")

local function runPrerequisite(url, name)
    local ok, result = pcall(function()
        local source = game:HttpGet(url)
        local runner = loadstring(source)
        assert(type(runner) == "function", name .. " source did not return executable code")
        return runner()
    end)
    if not ok then
        warn("[JAJAturok] " .. name .. " failed to initialize: " .. tostring(result))
    end
    return ok
end

do
    local ANTI_KICK_URL = "https://raw.githubusercontent.com/SUUUUUS00000/MEGGD-Anti-kick/refs/heads/main/MEGGD%20Best%20Anti-kick.lua"
    runPrerequisite(ANTI_KICK_URL, "Anti-kick")
end

-- Custom "Tanginamo cheater ampt" Prompt Screen
do
    local promptGui = Instance.new("ScreenGui")
    promptGui.Name = "JAJAturokCheaterPrompt"
    promptGui.ResetOnSpawn = false
    promptGui.IgnoreGuiInset = true
    promptGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    promptGui.Parent = uiParent

    local overlay = Instance.new("Frame")
    overlay.Size = UDim2.fromScale(1, 1)
    overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    overlay.BackgroundTransparency = 0.45
    overlay.BorderSizePixel = 0
    overlay.Parent = promptGui

    local box = Instance.new("Frame")
    box.AnchorPoint = Vector2.new(0.5, 0.5)
    box.Position = UDim2.fromScale(0.5, 0.5)
    box.Size = UDim2.fromOffset(350, 180)
    box.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
    box.BorderSizePixel = 0
    box.Parent = overlay

    Instance.new("UICorner", box).CornerRadius = UDim.new(0, 14)
    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(160, 90, 255)
    stroke.Thickness = 1.5
    stroke.Transparency = 0.25
    stroke.Parent = box

    local title = Instance.new("TextLabel")
    title.Position = UDim2.fromOffset(20, 20)
    title.Size = UDim2.new(1, -40, 0, 25)
    title.BackgroundTransparency = 1
    title.Text = "System Verification"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 16
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Parent = box

    local message = Instance.new("TextLabel")
    message.Position = UDim2.fromOffset(20, 55)
    message.Size = UDim2.new(1, -40, 0, 45)
    message.BackgroundTransparency = 1
    message.Text = "Tanginamo cheater ampt"
    message.TextColor3 = Color3.fromRGB(220, 100, 100)
    message.Font = Enum.Font.GothamBold
    message.TextSize = 14
    message.TextWrapped = true
    message.TextXAlignment = Enum.TextXAlignment.Left
    message.Parent = box

    local enterBtn = Instance.new("TextButton")
    enterBtn.Position = UDim2.fromOffset(20, 115)
    enterBtn.Size = UDim2.new(0.5, -25, 0, 42)
    enterBtn.BackgroundColor3 = Color3.fromRGB(160, 90, 255)
    enterBtn.BorderSizePixel = 0
    enterBtn.AutoButtonColor = false
    enterBtn.Text = "ENTER"
    enterBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    enterBtn.Font = Enum.Font.GothamBold
    enterBtn.TextSize = 12
    enterBtn.Parent = box
    Instance.new("UICorner", enterBtn).CornerRadius = UDim.new(0, 9)

    local cancelBtn = Instance.new("TextButton")
    cancelBtn.Position = UDim2.new(0.5, 5, 0, 115)
    cancelBtn.Size = UDim2.new(0.5, -25, 0, 42)
    cancelBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 42)
    cancelBtn.BorderSizePixel = 0
    cancelBtn.AutoButtonColor = false
    cancelBtn.Text = "CANCEL"
    cancelBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    cancelBtn.Font = Enum.Font.GothamBold
    cancelBtn.TextSize = 12
    cancelBtn.Parent = box
    Instance.new("UICorner", cancelBtn).CornerRadius = UDim.new(0, 9)

    local verified = nil
    enterBtn.MouseButton1Click:Connect(function() verified = true end)
    cancelBtn.MouseButton1Click:Connect(function() verified = false end)

    repeat task.wait() until verified ~= nil
    promptGui:Destroy()

    if not verified then
        return
    end
end

local KeyVerified = true
local showMainUI = function() end
local WHITE = Color3.fromRGB(255, 255, 255)
local GREY = Color3.fromRGB(150, 150, 170)
local DARK = Color3.fromRGB(10, 10, 15)
local PANEL = Color3.fromRGB(15, 15, 22)
local PANEL2 = Color3.fromRGB(22, 22, 32)
local BLUE = Color3.fromRGB(155, 90, 255)
local PURPLE = Color3.fromRGB(160, 90, 255)

do
    local promptGui = Instance.new("ScreenGui")
    promptGui.Name = "JAJAturokPCClientPrompt"
    promptGui.ResetOnSpawn = false
    promptGui.IgnoreGuiInset = true
    promptGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    promptGui.Parent = uiParent
    local overlay = Instance.new("Frame")
    overlay.Size = UDim2.fromScale(1, 1)
    overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    overlay.BackgroundTransparency = 0.35
    overlay.BorderSizePixel = 0
    overlay.Parent = promptGui
    local box = Instance.new("Frame")
    box.AnchorPoint = Vector2.new(0.5, 0.5)
    box.Position = UDim2.fromScale(0.5, 0.5)
    box.Size = UDim2.fromOffset(330, 190)
    box.BackgroundColor3 = PANEL
    box.BorderSizePixel = 0
    box.Parent = overlay
    Instance.new("UICorner", box).CornerRadius = UDim.new(0, 14)
    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(65, 65, 90)
    stroke.Thickness = 1.5
    stroke.Transparency = 0.25
    stroke.Parent = box
    local title = Instance.new("TextLabel")
    title.Position = UDim2.fromOffset(20, 18)
    title.Size = UDim2.new(1, -40, 0, 25)
    title.BackgroundTransparency = 1
    title.Text = "Fake PC Client"
    title.TextColor3 = WHITE
    title.Font = Enum.Font.GothamBold
    title.TextSize = 17
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Parent = box
    local message = Instance.new("TextLabel")
    message.Position = UDim2.fromOffset(20, 52)
    message.Size = UDim2.new(1, -40, 0, 48)
    message.BackgroundTransparency = 1
    message.Text = "Do you want to use the Fake PC Client?"
    message.TextColor3 = Color3.fromRGB(190, 195, 210)
    message.Font = Enum.Font.Gotham
    message.TextSize = 11
    message.TextWrapped = true
    message.TextXAlignment = Enum.TextXAlignment.Left
    message.Parent = box
    local yes = Instance.new("TextButton")
    yes.Position = UDim2.fromOffset(20, 122)
    yes.Size = UDim2.new(0.5, -25, 0, 42)
    yes.BackgroundColor3 = PURPLE
    yes.BorderSizePixel = 0
    yes.AutoButtonColor = false
    yes.Text = "YES"
    yes.TextColor3 = WHITE
    yes.Font = Enum.Font.GothamBold
    yes.TextSize = 12
    yes.Parent = box
    Instance.new("UICorner", yes).CornerRadius = UDim.new(0, 9)
    local no = Instance.new("TextButton")
    no.Position = UDim2.new(0.5, 5, 0, 122)
    no.Size = UDim2.new(0.5, -25, 0, 42)
    no.BackgroundColor3 = PANEL2
    no.BorderSizePixel = 0
    no.AutoButtonColor = false
    no.Text = "NO"
    no.TextColor3 = WHITE
    no.Font = Enum.Font.GothamBold
    no.TextSize = 12
    no.Parent = box
    Instance.new("UICorner", no).CornerRadius = UDim.new(0, 9)
    local choice = nil
    yes.MouseButton1Click:Connect(function() choice = true end)
    no.MouseButton1Click:Connect(function() choice = false end)
    repeat task.wait() until choice ~= nil
    promptGui:Destroy()
    if choice then
        local DEVICE_SPOOFER_URL = "https://raw.githubusercontent.com/yBloodz/Free-scripts/refs/heads/main/MVSD-DEVICE-SPOOFER"
        runPrerequisite(DEVICE_SPOOFER_URL, "Device Spoofer")
    end
end

local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local HttpService = game:GetService("HttpService")
local SoundService = game:GetService("SoundService")
local LocalPlayer = player
local Camera = Workspace.CurrentCamera

local Config = {
    TrackingEnabled = false,
    Smoothness = 0.25,
    AimPart = "Head",
    FOVEnabled = true,
    FOVSize = 20,
    ShowAimButton = false,
    ShowSilentAimButton = false,
    ShowTriggerbotButton = false,
    SilentAimButtonLocked = false,
    TriggerbotButtonLocked = false,
    ESPEnabled = true,
    BoxESP = true,
    NameTags = false,
    HealthBar = false,
    Distance = false,
    BoxColor = Color3.fromRGB(255, 80, 80),
    WallCheck = true,
    BigHead = false,
    BigHeadSize = 5,
    Fly = false,
    FlySpeed = 10,
    SpeedHack = false,
    WalkSpeedValue = 16,
    NoClip = false,
    InfiniteJump = false,
    HitboxExpander = false,
    HitboxSize = 10,
    TeleportEnabled = false,
    TrackingKey = Enum.KeyCode.Z,
    ViewCameraTP = false,
    CameraTPActive = false,
    CameraTPOriginalType = nil,
    CameraTPOriginalSubject = nil,
    CameraTPOriginalCFrame = nil,
    CameraTPSpeed = 140,
    CameraTPSensitivity = 0.40,
    CameraTPButtonLocked = false,
    SpectateEnabled = false,
    SpectateActive = false,
    SpectateTarget = nil,
    CustomSongId = "1837879006",
    SilentAimHK = false,
    SA2_TargetPart = "Head",
    SA2_TeamTarget = "Enemies",
    SA2_Wallcheck = false,
    SA2_Wallbang = false,
    SA2_BulletTeleport = false,
    SA2_HitChance = 100,
    SA2_HeadshotChance = 100,
    SA2_FovRadius = 100,
    SA2_FovVisible = true,
    SA2_FovTransparency = 0.90,
    SA2_FovColor = Color3.fromRGB(160, 90, 255),
    SA2_FovTargetColor = Color3.fromRGB(160, 90, 255),
    SA2_ThreeSixtyMode = false,
    SA2_TargetRange = 500,
    SA2_Prediction = 0,
    SA2_GetTarget = "Closest",
    SA2_AimMethods = {"Raycast"},
    SA2_RemoteNames = {"hit", "bullet", "projectile", "hitscan"},
    SA2_Key = Enum.KeyCode.R,
    Triggerbot = false,
    TriggerbotRate = 100,
    TriggerbotInterval = 0.01,
    TriggerbotFOV = 10,
    TriggerbotFOVVisible = false,
    TriggerbotFOVColor = Color3.fromRGB(160, 90, 255),
    TriggerbotFOVTargetColor = Color3.fromRGB(160, 90, 255),
    TriggerbotFOVTransparency = 0.90,
}

-- Background Music Object
local activeBackgroundSong = Instance.new("Sound")
activeBackgroundSong.Name = "JAJAturokCustomSong"
activeBackgroundSong.Looped = true
activeBackgroundSong.Volume = 1
activeBackgroundSong.Parent = SoundService

local Connections = {}
local ESP = {}
local ESPFolder = Workspace:FindFirstChild("JAJAturokESP")
if not ESPFolder then
    ESPFolder = Instance.new("Folder")
    ESPFolder.Name = "JAJAturokESP"
    ESPFolder.Parent = Workspace
end

local function connect(signal, callback)
    local c = signal:Connect(callback)
    table.insert(Connections, c)
    return c
end

local function notify(text)
    local gui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    if not gui then return end
    local holder = gui:FindFirstChild("PlayerToolNotifications")
    if not holder then return end
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0, 260, 0, 40)
    label.BackgroundColor3 = Color3.fromRGB(18, 20, 26)
    label.BackgroundTransparency = 0.05
    label.BorderSizePixel = 0
    label.TextColor3 = Color3.fromRGB(240, 243, 250)
    label.TextSize = 13
    label.Font = Enum.Font.GothamMedium
    label.Text = text
    label.Parent = holder
    Instance.new("UICorner", label).CornerRadius = UDim.new(0, 10)
    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(155, 90, 255)
    stroke.Transparency = 0.3
    stroke.Parent = label
    task.delay(2.5, function()
        if label.Parent then
            TweenService:Create(label, TweenInfo.new(0.25), {
                BackgroundTransparency = 1,
                TextTransparency = 1
            }):Play()
            task.wait(0.3)
            label:Destroy()
        end
    end)
end

local function getCharacter(player)
    if not player then return nil end
    local character = player.Character
    if not character or not character.Parent then return nil end
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local root = character:FindFirstChild("HumanoidRootPart")
    if not humanoid or humanoid.Health <= 0 or not root then
        return nil
    end
    return character, humanoid, root
end

local function getAimPart(character)
    if Config.AimPart == "Head" then
        return character:FindFirstChild("Head")
    elseif Config.AimPart == "Torso" then
        return character:FindFirstChild("UpperTorso")
            or character:FindFirstChild("Torso")
            or character:FindFirstChild("HumanoidRootPart")
    else
        return character:FindFirstChild("HumanoidRootPart")
    end
end

local function isEnemy(player)
    if not player or player == LocalPlayer then
        return false
    end
    return true
end

local function hasLineOfSight(character, targetPart)
    if not Config.WallCheck then
        return true
    end
    local origin = Camera.CFrame.Position
    local direction = targetPart.Position - origin
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.FilterDescendantsInstances = {
        LocalPlayer.Character,
        character
    }
    params.IgnoreWater = true
    local result = Workspace:Raycast(origin, direction, params)
    return result == nil
end

local function getTarget(fovRadius)
    local center = Camera.ViewportSize / 2
    local bestPlayer = nil
    local bestDistance = math.huge
    fovRadius = fovRadius or Config.FOVSize
    for _, player in ipairs(Players:GetPlayers()) do
        local character = getCharacter(player)
        if character and isEnemy(player) then
            local part = getAimPart(character)
            if part then
                local screenPosition, visible = Camera:WorldToViewportPoint(part.Position)
                if visible and screenPosition.Z > 0 then
                    local dx = screenPosition.X - center.X
                    local dy = screenPosition.Y - center.Y
                    local distance = math.sqrt(dx * dx + dy * dy)
                    if distance <= fovRadius and distance < bestDistance then
                        if hasLineOfSight(character, part) then
                            bestDistance = distance
                            bestPlayer = player
                        end
                    end
                end
            end
        end
    end
    return bestPlayer
end

local TriggerbotLastShot = 0
local TriggerbotFOVCircle = nil
local TriggerbotFOVStroke = nil
local function triggerbotShoot()
    local now = os.clock()
    if now - TriggerbotLastShot < Config.TriggerbotInterval then
        return
    end
    local character = LocalPlayer.Character
    if not character then return end
    local tool = character:FindFirstChildOfClass("Tool")
    if not tool then return end
    TriggerbotLastShot = now
    pcall(function()
        tool:Activate()
    end)
    task.delay(0.03, function()
        if tool and tool.Parent == character then
            pcall(function()
                tool:Deactivate()
            end)
        end
    end)
end

connect(RunService.Heartbeat, function()
    if not KeyVerified or not Config.Triggerbot then
        if TriggerbotFOVCircle then TriggerbotFOVCircle.Visible = false end
        return
    end
    local target = getTarget(Config.TriggerbotFOV)
    if TriggerbotFOVCircle and TriggerbotFOVStroke then
        local camera = Workspace.CurrentCamera
        if camera and Config.TriggerbotFOVVisible then
            local viewport = camera.ViewportSize
            TriggerbotFOVCircle.Position = UDim2.fromOffset(viewport.X / 2, viewport.Y / 2)
            TriggerbotFOVCircle.Size = UDim2.fromOffset(Config.TriggerbotFOV * 2, Config.TriggerbotFOV * 2)
            TriggerbotFOVCircle.Visible = true
            TriggerbotFOVStroke.Color = Config.TriggerbotFOVColor
            TriggerbotFOVStroke.Transparency = 1 - math.clamp(Config.TriggerbotFOVTransparency, 0, 1)
        else
            TriggerbotFOVCircle.Visible = false
        end
    end
    if target then
        triggerbotShoot()
    end
end)

local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local old = PlayerGui:FindFirstChild("PlayerVisualizationTool")
if old then
    old:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PlayerVisualizationTool"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Enabled = false
ScreenGui.Parent = PlayerGui

TriggerbotFOVCircle = Instance.new("Frame")
TriggerbotFOVCircle.Name = "TriggerbotFOV"
TriggerbotFOVCircle.AnchorPoint = Vector2.new(0.5, 0.5)
TriggerbotFOVCircle.BackgroundTransparency = 1
TriggerbotFOVCircle.BorderSizePixel = 0
TriggerbotFOVCircle.Size = UDim2.fromOffset(Config.TriggerbotFOV * 2, Config.TriggerbotFOV * 2)
TriggerbotFOVCircle.Visible = false
TriggerbotFOVCircle.Parent = ScreenGui
Instance.new("UICorner", TriggerbotFOVCircle).CornerRadius = UDim.new(1, 0)
TriggerbotFOVStroke = Instance.new("UIStroke")
TriggerbotFOVStroke.Thickness = 1
TriggerbotFOVStroke.Color = Config.TriggerbotFOVColor
TriggerbotFOVStroke.Transparency = 1 - Config.TriggerbotFOVTransparency
TriggerbotFOVStroke.Parent = TriggerbotFOVCircle

showMainUI = function()
    ScreenGui.Enabled = true
end

local NotificationHolder = Instance.new("Frame")
NotificationHolder.Name = "PlayerToolNotifications"
NotificationHolder.AnchorPoint = Vector2.new(1, 1)
NotificationHolder.Position = UDim2.new(1, -16, 1, -16)
NotificationHolder.Size = UDim2.new(0, 260, 0, 200)
NotificationHolder.BackgroundTransparency = 1
NotificationHolder.Parent = ScreenGui

local notificationLayout = Instance.new("UIListLayout")
notificationLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
notificationLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
notificationLayout.Padding = UDim.new(0, 8)
notificationLayout.Parent = NotificationHolder

local FOVCircle = Instance.new("Frame")
FOVCircle.Name = "FOVCircle"
FOVCircle.AnchorPoint = Vector2.new(0.5, 0.5)
FOVCircle.BackgroundTransparency = 1
FOVCircle.Size = UDim2.fromOffset(Config.FOVSize * 2, Config.FOVSize * 2)
FOVCircle.Parent = ScreenGui
local fovCorner = Instance.new("UICorner")
fovCorner.CornerRadius = UDim.new(1, 0)
fovCorner.Parent = FOVCircle
local fovStroke = Instance.new("UIStroke")
fovStroke.Thickness = 1.5
fovStroke.Color = Color3.fromRGB(155, 90, 255)
fovStroke.Transparency = 0.2
fovStroke.Parent = FOVCircle

local AimToggle = Instance.new("TextButton")
AimToggle.Name = "AimToggle"
AimToggle.AnchorPoint = Vector2.new(0, 1)
AimToggle.Position = UDim2.new(0, 75, 1, -15)
AimToggle.Size = UDim2.fromOffset(48, 48)
AimToggle.BackgroundColor3 = Config.TrackingEnabled
    and Color3.fromRGB(145, 75, 235)
    or Color3.fromRGB(235, 65, 65)
AimToggle.Text = "AIM"
AimToggle.TextColor3 = Color3.new(1, 1, 1)
AimToggle.TextSize = 11
AimToggle.Font = Enum.Font.GothamBold
AimToggle.AutoButtonColor = false
AimToggle.Visible = Config.ShowAimButton
AimToggle.Parent = ScreenGui
Instance.new("UICorner", AimToggle).CornerRadius = UDim.new(0, 12)

local aimButtonLocked = false
local lockPanelOpen = false
local aimDragging = false
local aimDragStart
local aimStartPosition
local aimMoved = false

connect(AimToggle.InputBegan, function(input)
    if aimButtonLocked then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
        aimDragging = true
        aimMoved = false
        aimDragStart = input.Position
        aimStartPosition = AimToggle.Position
        local changed
        changed = input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                aimDragging = false
                changed:Disconnect()
            end
        end)
    end
end)

connect(UserInputService.InputChanged, function(input)
    if not aimButtonLocked and aimDragging and (
        input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch
    ) then
        local delta = input.Position - aimDragStart
        if math.abs(delta.X) > 4 or math.abs(delta.Y) > 4 then
            aimMoved = true
        end
        local targetPosition = UDim2.new(
            aimStartPosition.X.Scale,
            aimStartPosition.X.Offset + delta.X,
            aimStartPosition.Y.Scale,
            aimStartPosition.Y.Offset + delta.Y
        )
        AimToggle.Position = AimToggle.Position:Lerp(targetPosition, 0.32)
    end
end)

local hideMainMenu
local Main = Instance.new("Frame")
Main.Name = "MainWindow"
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.Position = UDim2.fromScale(0.5, 0.5)
Main.Size = UDim2.fromOffset(410, 305)
Main.BackgroundColor3 = Color3.fromRGB(14, 16, 22)
Main.BorderSizePixel = 0
Main.Parent = ScreenGui
Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 14)
local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(50, 60, 85)
MainStroke.Thickness = 1.2
MainStroke.Parent = Main

local Header = Instance.new("Frame")
Header.Size = UDim2.new(1, 0, 0, 58)
Header.BackgroundColor3 = Color3.fromRGB(19, 22, 31)
Header.BorderSizePixel = 0
Header.Parent = Main
local headerCorner = Instance.new("UICorner")
headerCorner.CornerRadius = UDim.new(0, 14)
headerCorner.Parent = Header

local HeaderTitle = Instance.new("TextLabel")
HeaderTitle.BackgroundTransparency = 1
HeaderTitle.Position = UDim2.fromOffset(18, 9)
HeaderTitle.Size = UDim2.new(1, -80, 0, 24)
HeaderTitle.Font = Enum.Font.GothamBold
HeaderTitle.Text = "JAJAturok Hub"
HeaderTitle.TextColor3 = Color3.fromRGB(250, 252, 255)
HeaderTitle.TextSize = 18
HeaderTitle.TextXAlignment = Enum.TextXAlignment.Left
HeaderTitle.Parent = Header

local HeaderSub = Instance.new("TextLabel")
HeaderSub.BackgroundTransparency = 1
HeaderSub.Position = UDim2.fromOffset(19, 32)
HeaderSub.Size = UDim2.new(1, -80, 0, 16)
HeaderSub.Font = Enum.Font.Gotham
HeaderSub.Text = "developed by JAJAturok"
HeaderSub.TextColor3 = Color3.fromRGB(120, 130, 155)
HeaderSub.TextSize = 10
HeaderSub.TextXAlignment = Enum.TextXAlignment.Left
HeaderSub.Parent = Header

local HideButton = Instance.new("TextButton")
HideButton.Name = "HideButton"
HideButton.AnchorPoint = Vector2.new(1, 0.5)
HideButton.Position = UDim2.new(1, -14, 0.5, 0)
HideButton.Size = UDim2.fromOffset(34, 34)
HideButton.BackgroundColor3 = Color3.fromRGB(26, 30, 42)
HideButton.Text = "—"
HideButton.TextColor3 = Color3.fromRGB(220, 225, 240)
HideButton.TextSize = 16
HideButton.Font = Enum.Font.GothamBold
HideButton.AutoButtonColor = false
HideButton.Active = true
HideButton.ZIndex = 20
HideButton.Parent = Header
Instance.new("UICorner", HideButton).CornerRadius = UDim.new(0, 10)

connect(HideButton.Activated, function()
    hideMainMenu()
end)

local dragging = false
local dragStart
local startPosition
connect(Header.InputBegan, function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPosition = Main.Position
        local changed
        changed = input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
                changed:Disconnect()
            end
        end)
    end
end)

connect(UserInputService.InputChanged, function(input)
    if dragging and (
        input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch
    ) then
        local delta = input.Position - dragStart
        local targetPosition = UDim2.new(
            startPosition.X.Scale,
            startPosition.X.Offset + delta.X,
            startPosition.Y.Scale,
            startPosition.Y.Offset + delta.Y
        )
        Main.Position = Main.Position:Lerp(targetPosition, 0.28)
    end
end)

local Sidebar = Instance.new("Frame")
Sidebar.Position = UDim2.fromOffset(12, 68)
Sidebar.Size = UDim2.fromOffset(102, 225)
Sidebar.BackgroundTransparency = 1
Sidebar.Parent = Main

local TabLayout = Instance.new("UIListLayout")
TabLayout.Padding = UDim.new(0, 8)
TabLayout.Parent = Sidebar

local Content = Instance.new("ScrollingFrame")
Content.Position = UDim2.fromOffset(124, 68)
Content.Size = UDim2.new(1, -136, 1, -78)
Content.BackgroundColor3 = Color3.fromRGB(17, 20, 28)
Content.BorderSizePixel = 0
Content.ClipsDescendants = true
Content.CanvasSize = UDim2.fromOffset(0, 0)
Content.AutomaticCanvasSize = Enum.AutomaticSize.Y
Content.ScrollingDirection = Enum.ScrollingDirection.Y
Content.ScrollBarThickness = 4
Content.ScrollBarImageColor3 = Color3.fromRGB(155, 90, 255)
Content.Active = true
Content.Parent = Main
Instance.new("UICorner", Content).CornerRadius = UDim.new(0, 10)

local Tabs = {}
local CurrentTab
local function clearContent()
    for _, child in ipairs(Content:GetChildren()) do
        if not child:IsA("UICorner") then
            child:Destroy()
        end
    end
end

local function createTabButton(name, iconText)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 36)
    button.BackgroundColor3 = Color3.fromRGB(21, 25, 35)
    button.BorderSizePixel = 0
    button.AutoButtonColor = false
    button.Text = ""
    button.Parent = Sidebar
    Instance.new("UICorner", button).CornerRadius = UDim.new(0, 9)

    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "Label"
    textLabel.Position = UDim2.fromOffset(10, 0)
    textLabel.Size = UDim2.new(1, -10, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = name
    textLabel.TextColor3 = Color3.fromRGB(140, 150, 175)
    textLabel.TextSize = 11
    textLabel.Font = Enum.Font.GothamMedium
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.Parent = button

    Tabs[name] = button
    return button
end

local function selectTab(name, builder)
    CurrentTab = name
    for tabName, button in pairs(Tabs) do
        local active = tabName == name
        local textColor = active and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(140, 150, 175)
        button.BackgroundColor3 = active and Color3.fromRGB(125, 65, 205) or Color3.fromRGB(21, 25, 35)
        local label = button:FindFirstChild("Label")
        if label then
            label.TextColor3 = textColor
        end
    end
    clearContent()
    Content.CanvasPosition = Vector2.new(0, 0)
    builder()
end

local function addPadding(parent)
    local padding = Instance.new("UIPadding")
    padding.PaddingTop = UDim.new(0, 12)
    padding.PaddingBottom = UDim.new(0, 12)
    padding.PaddingLeft = UDim.new(0, 12)
    padding.PaddingRight = UDim.new(0, 12)
    padding.Parent = parent
end

local function createContentLayout()
    local list = Instance.new("UIListLayout")
    list.Padding = UDim.new(0, 8)
    list.SortOrder = Enum.SortOrder.LayoutOrder
    list.Parent = Content
    addPadding(Content)
    return list
end

local function createSection(text)
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 0, 24)
    label.BackgroundTransparency = 1
    label.Text = string.upper(text)
    label.TextColor3 = Color3.fromRGB(165, 90, 255)
    label.TextSize = 10
    label.Font = Enum.Font.GothamBold
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = Content
    return label
end

local function createSimpleToggle(text, value, callback)
    local holder = Instance.new("Frame")
    holder.Size = UDim2.new(1, 0, 0, 42)
    holder.BackgroundTransparency = 1
    holder.Parent = Content
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 42)
    button.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
    button.BorderSizePixel = 0
    button.AutoButtonColor = false
    button.Text = ""
    button.Parent = holder
    Instance.new("UICorner", button).CornerRadius = UDim.new(0, 8)
    local check = Instance.new("Frame")
    check.Position = UDim2.fromOffset(10, 12)
    check.Size = UDim2.fromOffset(18, 18)
    check.BackgroundColor3 = value and Color3.fromRGB(145, 75, 235) or Color3.fromRGB(38, 43, 56)
    check.BorderSizePixel = 0
    check.Parent = button
    Instance.new("UICorner", check).CornerRadius = UDim.new(0, 5)
    local checkText = Instance.new("TextLabel")
    checkText.Size = UDim2.fromScale(1, 1)
    checkText.BackgroundTransparency = 1
    checkText.Text = value and "✓" or ""
    checkText.TextColor3 = Color3.new(1, 1, 1)
    checkText.Font = Enum.Font.GothamBold
    checkText.TextSize = 12
    checkText.Parent = check
    local label = Instance.new("TextLabel")
    label.Position = UDim2.fromOffset(38, 0)
    label.Size = UDim2.new(1, -46, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = Color3.fromRGB(220, 225, 235)
    label.TextSize = 12
    label.Font = Enum.Font.GothamMedium
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = button
    local state = value
    connect(button.MouseButton1Click, function()
        state = not state
        check.BackgroundColor3 = state and Color3.fromRGB(145, 75, 235) or Color3.fromRGB(38, 43, 56)
        checkText.Text = state and "✓" or ""
        callback(state)
    end)
    return holder
end

local function createSlider(text, min, max, step, value, callback, formatter)
    local holder = Instance.new("Frame")
    holder.Size = UDim2.new(1, 0, 0, 64)
    holder.BackgroundTransparency = 1
    holder.Parent = Content
    local label = Instance.new("TextLabel")
    label.Position = UDim2.fromOffset(2, 0)
    label.Size = UDim2.new(1, -4, 0, 22)
    label.BackgroundTransparency = 1
    label.TextColor3 = Color3.fromRGB(225, 220, 240)
    label.TextSize = 12
    label.Font = Enum.Font.GothamMedium
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = holder
    local valueLabel = Instance.new("TextLabel")
    valueLabel.AnchorPoint = Vector2.new(1, 0)
    valueLabel.Position = UDim2.new(1, -2, 0, 0)
    valueLabel.Size = UDim2.fromOffset(70, 22)
    valueLabel.BackgroundTransparency = 1
    valueLabel.TextColor3 = Color3.fromRGB(180, 125, 255)
    valueLabel.TextSize = 11
    valueLabel.Font = Enum.Font.GothamBold
    valueLabel.TextXAlignment = Enum.TextXAlignment.Right
    valueLabel.Parent = holder
    local bar = Instance.new("Frame")
    bar.Position = UDim2.fromOffset(2, 31)
    bar.Size = UDim2.new(1, -4, 0, 7)
    bar.BackgroundColor3 = Color3.fromRGB(43, 35, 58)
    bar.BorderSizePixel = 0
    bar.Active = true
    bar.Parent = holder
    Instance.new("UICorner", bar).CornerRadius = UDim.new(1, 0)
    local fill = Instance.new("Frame")
    fill.Size = UDim2.new(0, 0, 1, 0)
    fill.BackgroundColor3 = Color3.fromRGB(155, 75, 245)
    fill.BorderSizePixel = 0
    fill.Parent = bar
    Instance.new("UICorner", fill).CornerRadius = UDim.new(1, 0)
    local knob = Instance.new("Frame")
    knob.AnchorPoint = Vector2.new(0.5, 0.5)
    knob.Size = UDim2.fromOffset(16, 16)
    knob.BackgroundColor3 = Color3.fromRGB(215, 180, 255)
    knob.BorderSizePixel = 0
    knob.Parent = bar
    Instance.new("UICorner", knob).CornerRadius = UDim.new(1, 0)
    local draggingSlider = false
    local function formatValue(v)
        if formatter then return formatter(v) end
        if step < 1 then return string.format("%.2f", v) end
        return tostring(math.floor(v + 0.5))
    end
    local function setValue(v)
        v = math.clamp(v, min, max)
        if step > 0 then
            v = min + math.floor((v - min) / step + 0.5) * step
            v = math.clamp(v, min, max)
        end
        local range = max - min
        local alpha = range == 0 and 0 or (v - min) / range
        fill.Size = UDim2.new(alpha, 0, 1, 0)
        knob.Position = UDim2.new(alpha, 0, 0.5, 0)
        label.Text = text
        valueLabel.Text = formatValue(v)
        callback(v)
    end
    local function fromInput(input)
        local width = math.max(bar.AbsoluteSize.X, 1)
        local x = math.clamp(input.Position.X - bar.AbsolutePosition.X, 0, width)
        setValue(min + (max - min) * (x / width))
    end
    connect(bar.InputBegan, function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
            draggingSlider = true
            fromInput(input)
        end
    end)
    connect(UserInputService.InputChanged, function(input)
        if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch) then
            fromInput(input)
        end
    end)
    connect(UserInputService.InputEnded, function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
            draggingSlider = false
        end
    end)
    setValue(value)
    return holder
end

-- Tabs creation
local MainTab = createTabButton("Main", "Main")
local VisualTab = createTabButton("ESP", "ESP")
local GarapalTab = createTabButton("Mics", "Mics")
local TeleportTab = createTabButton("Teleport", "Teleport")
local SongsTab = createTabButton("Songs", "Songs")

local refreshAimModeVisibility
local function updateAimButtonState(enabled)
    Config.TrackingEnabled = enabled
    if enabled then
        Config.Triggerbot = false
        AimToggle.Text = "ON"
        AimToggle.BackgroundColor3 = Color3.fromRGB(145, 75, 235)
        notify("Aimbot ON")
    else
        AimToggle.Text = "AIM"
        AimToggle.BackgroundColor3 = Color3.fromRGB(235, 65, 65)
        notify("Aimbot OFF")
    end
    FOVCircle.Visible = enabled and Config.FOVEnabled
end

local SA2 = { targetPart = nil, targetPlayer = nil }
local refreshMainUI

local function buildMain()
    createContentLayout()
    createSection("Aimbot & Triggerbot")
    createSimpleToggle("Aimbot", Config.TrackingEnabled, function(v)
        updateAimButtonState(v)
    end)
end

refreshMainUI = function()
    if CurrentTab == "Main" then
        selectTab("Main", buildMain)
    end
end

local function buildVisuals()
    createContentLayout()
    createSection("Visual Overlay")
    createSimpleToggle("Enable ESP", Config.ESPEnabled, function(v) Config.ESPEnabled = v end)
    createSimpleToggle("Box ESP", Config.BoxESP, function(v) Config.BoxESP = v end)
end

local function buildGarapal()
    createContentLayout()
    createSection("Movement")
    createSimpleToggle("Speed Hack", Config.SpeedHack, function(v)
        Config.SpeedHack = v
        notify(v and "Speed Hack enabled" or "Speed Hack disabled")
    end)
end

local function buildTeleport()
    createContentLayout()
    createSection("Teleport Utilities")
    createSimpleToggle("Teleport Enabled", Config.TeleportEnabled, function(v)
        Config.TeleportEnabled = v
    end)
end

-- Songs Customizer Tab
local function buildSongs()
    createContentLayout()
    createSection("Custom Song Player")

    local holder = Instance.new("Frame")
    holder.Size = UDim2.new(1, 0, 0, 110)
    holder.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
    holder.BorderSizePixel = 0
    holder.Parent = Content
    Instance.new("UICorner", holder).CornerRadius = UDim.new(0, 8)

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Position = UDim2.fromOffset(12, 10)
    titleLabel.Size = UDim2.new(1, -24, 0, 20)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = "Roblox Song ID Input"
    titleLabel.TextColor3 = Color3.fromRGB(230, 235, 245)
    titleLabel.TextSize = 12
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = holder

    local inputBox = Instance.new("TextBox")
    inputBox.Position = UDim2.fromOffset(12, 38)
    inputBox.Size = UDim2.new(1, -24, 0, 32)
    inputBox.BackgroundColor3 = Color3.fromRGB(15, 17, 24)
    inputBox.BorderSizePixel = 0
    inputBox.ClearTextOnFocus = false
    inputBox.Text = Config.CustomSongId
    inputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    inputBox.TextSize = 11
    inputBox.Font = Enum.Font.Gotham
    inputBox.Parent = holder
    Instance.new("UICorner", inputBox).CornerRadius = UDim.new(0, 6)

    local playBtn = Instance.new("TextButton")
    playBtn.Position = UDim2.fromOffset(12, 76)
    playBtn.Size = UDim2.new(0.5, -16, 0, 26)
    playBtn.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
    playBtn.BorderSizePixel = 0
    playBtn.AutoButtonColor = false
    playBtn.Text = "PLAY SONG"
    playBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    playBtn.TextSize = 10
    playBtn.Font = Enum.Font.GothamBold
    playBtn.Parent = holder
    Instance.new("UICorner", playBtn).CornerRadius = UDim.new(0, 6)

    local stopBtn = Instance.new("TextButton")
    stopBtn.Position = UDim2.new(0.5, 4, 0, 76)
    stopBtn.Size = UDim2.new(0.5, -16, 0, 26)
    stopBtn.BackgroundColor3 = Color3.fromRGB(235, 65, 65)
    stopBtn.BorderSizePixel = 0
    stopBtn.AutoButtonColor = false
    stopBtn.Text = "STOP"
    stopBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    stopBtn.TextSize = 10
    stopBtn.Font = Enum.Font.GothamBold
    stopBtn.Parent = holder
    Instance.new("UICorner", stopBtn).CornerRadius = UDim.new(0, 6)

    connect(playBtn.MouseButton1Click, function()
        local id = inputBox.Text
        Config.CustomSongId = id
        activeBackgroundSong.SoundId = "rbxassetid://" .. id
        activeBackgroundSong:Play()
        notify("Playing song ID: " .. id)
    end)

    connect(stopBtn.MouseButton1Click, function()
        activeBackgroundSong:Stop()
        notify("Song stopped")
    end)
end

connect(MainTab.MouseButton1Click, function() selectTab("Main", buildMain) end)
connect(VisualTab.MouseButton1Click, function() selectTab("ESP", buildVisuals) end)
connect(GarapalTab.MouseButton1Click, function() selectTab("Mics", buildGarapal) end)
connect(TeleportTab.MouseButton1Click, function() selectTab("Teleport", buildTeleport) end)
connect(SongsTab.MouseButton1Click, function() selectTab("Songs", buildSongs) end)

selectTab("Main", buildMain)
showMainUI()
