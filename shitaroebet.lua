local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local TextService = game:GetService("TextService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
Players.LocalPlayer:GetMouse()
local hiddenGuiRoot = gethui()
getgenv().shitaro_drawmask = {}

local inputBeganConnection01 = UserInputService.InputBegan:Connect(function(input, gameProcessed)
end)

-- Root GUI and shared sounds
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "mqyjtsoolesc"
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.DisplayOrder = 1000
if protect_gui then pcall(protect_gui, screenGui) end
screenGui.Parent = hiddenGuiRoot

local descendantAddedConnection01 = screenGui.DescendantAdded:Connect(function(descendant)
end)

task.spawn(function()
	task.wait(1.25)
	task.wait(1.25)
end)

local toggleSound = Instance.new("Sound")
toggleSound.SoundId = "rbxasset://sounds/electronicpingshort.wav"
toggleSound.Name = "xzccavuphkxq"
toggleSound.Volume = 0.34
toggleSound.Parent = screenGui
local windowOpenSound = Instance.new("Sound")
windowOpenSound.SoundId = "rbxasset://sounds/electronicpingshort.wav"
windowOpenSound.Name = "bkpgqzzycnye"
windowOpenSound.Volume = 0.34
windowOpenSound.Parent = screenGui
local notificationSound = Instance.new("Sound")
notificationSound.SoundId = "rbxasset://sounds/electronicpingshort.wav"
notificationSound.Name = "nyhvimjsoofd"
notificationSound.Volume = 0.34
notificationSound.Parent = screenGui
local actionSound = Instance.new("Sound")
actionSound.SoundId = "rbxasset://sounds/electronicpingshort.wav"
actionSound.Name = "kvftdxmsriwy"
actionSound.Volume = 0.34
actionSound.Parent = screenGui
local customCursor = Instance.new("ImageLabel")
customCursor.Visible = false
customCursor.ScaleType = Enum.ScaleType.Stretch
customCursor.AnchorPoint = Vector2.new(0.5, 0.5)
customCursor.Image = ""
customCursor.Name = "pcmhxavosgcz"
customCursor.BackgroundTransparency = 1
customCursor.ZIndex = 2147483647
customCursor.BorderSizePixel = 0
customCursor.Size = UDim2.fromOffset(64, 64)
customCursor.Parent = screenGui
customCursor.ResampleMode = Enum.ResamplerMode.Pixelated
-- Hotkey overlay
local hotkeysOverlay = Instance.new("CanvasGroup")
hotkeysOverlay.AnchorPoint = Vector2.new(0, 0.5)
hotkeysOverlay.BackgroundTransparency = 1
hotkeysOverlay.Name = "icjkqgpkudxf"
hotkeysOverlay.Position = UDim2.new(0, 8, 0.5, 0)
hotkeysOverlay.BorderSizePixel = 0
hotkeysOverlay.ZIndex = 900
hotkeysOverlay.AutomaticSize = Enum.AutomaticSize.XY
hotkeysOverlay.Size = UDim2.fromOffset(0, 0)
hotkeysOverlay.Parent = screenGui
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 3)
UIListLayout.FillDirection = Enum.FillDirection.Vertical
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = hotkeysOverlay
local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingBottom = UDim.new(0, 10)
UIPadding.PaddingTop = UDim.new(0, 10)
UIPadding.PaddingLeft = UDim.new(0, 10)
UIPadding.PaddingRight = UDim.new(0, 10)
UIPadding.Parent = hotkeysOverlay
hotkeysOverlay.Visible = false
hotkeysOverlay.GroupTransparency = 1
local hotkeysPanel = Instance.new("Frame")
hotkeysPanel.LayoutOrder = 0
hotkeysPanel.BackgroundTransparency = 0.16
hotkeysPanel.Name = "uhpekppasckt"
hotkeysPanel.ClipsDescendants = true
hotkeysPanel.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
hotkeysPanel.ZIndex = 2
hotkeysPanel.BorderSizePixel = 0
hotkeysPanel.Size = UDim2.fromOffset(0, 0)
hotkeysPanel.Parent = hotkeysOverlay
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = hotkeysPanel
local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 1
UIStroke.Transparency = 0.45
UIStroke.Color = Color3.fromRGB(52, 52, 64)
UIStroke.LineJoinMode = Enum.LineJoinMode.Round
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Parent = hotkeysPanel
local UIShadow = Instance.new("Frame")
UIShadow.Visible = false
UIShadow.Size = UDim2.new()
UIShadow.ZIndex = -1
UIShadow.Parent = hotkeysPanel
local hotkeysBackground = Instance.new("Frame")
hotkeysBackground.Name = "ygnmfcpteajl"
hotkeysBackground.BackgroundTransparency = 0.82
hotkeysBackground.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
hotkeysBackground.ZIndex = 2
hotkeysBackground.BorderSizePixel = 0
hotkeysBackground.Size = UDim2.fromScale(1, 1)
hotkeysBackground.Parent = hotkeysPanel
local UICorner2 = Instance.new("UICorner")
UICorner2.CornerRadius = UDim.new(0, 8)
UICorner2.Parent = hotkeysBackground
local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 90
UIGradient.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(0.6, 0.82), NumberSequenceKeypoint.new(1, 0.9) })
UIGradient.Parent = hotkeysBackground
local hotkeysHighlight = Instance.new("Frame")
hotkeysHighlight.AnchorPoint = Vector2.new(0.5, 0)
hotkeysHighlight.BackgroundTransparency = 0.7
hotkeysHighlight.Name = "ssoihguhmgwt"
hotkeysHighlight.Position = UDim2.new(0.5, 0, 0, 1)
hotkeysHighlight.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
hotkeysHighlight.ZIndex = 3
hotkeysHighlight.BorderSizePixel = 0
hotkeysHighlight.Size = UDim2.new(1, -14, 0, 1)
hotkeysHighlight.Parent = hotkeysPanel
local UIGradient2 = Instance.new("UIGradient")
UIGradient2.Rotation = 0
UIGradient2.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.1), NumberSequenceKeypoint.new(1, 1) })
UIGradient2.Parent = hotkeysHighlight
local hotkeysContent = Instance.new("Frame")
hotkeysContent.Name = "tcntvxebdfjn"
hotkeysContent.BackgroundTransparency = 1
hotkeysContent.ZIndex = 3
hotkeysContent.BorderSizePixel = 0
hotkeysContent.Size = UDim2.fromScale(1, 1)
hotkeysContent.Parent = hotkeysPanel
local UIPadding2 = Instance.new("UIPadding")
UIPadding2.PaddingLeft = UDim.new(0, 14)
UIPadding2.PaddingRight = UDim.new(0, 14)
UIPadding2.Parent = hotkeysContent
local UIListLayout2 = Instance.new("UIListLayout")
UIListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout2.Padding = UDim.new(0, 8)
UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout2.Parent = hotkeysContent
hotkeysPanel.Active = true
local keyboardIcon = Instance.new("ImageLabel")
keyboardIcon.ImageColor3 = Color3.fromRGB(122, 122, 134)
keyboardIcon.ScaleType = Enum.ScaleType.Fit
keyboardIcon.ImageTransparency = 0
keyboardIcon.Image = "rbxassetid://121978468376124"
keyboardIcon.Name = "vdqibtoodnwx"
keyboardIcon.LayoutOrder = 1
keyboardIcon.ZIndex = 4
keyboardIcon.BackgroundTransparency = 1
keyboardIcon.Size = UDim2.fromOffset(17, 17)
keyboardIcon.Parent = hotkeysContent
local hotkeysTitle = Instance.new("TextLabel")
hotkeysTitle.LayoutOrder = 2
hotkeysTitle.TextColor3 = Color3.fromRGB(240, 240, 245)
hotkeysTitle.Text = "hotkeys"
hotkeysTitle.Font = Enum.Font.GothamMedium
hotkeysTitle.Name = "qdbnwjhgtdek"
hotkeysTitle.BackgroundTransparency = 1
hotkeysTitle.TextSize = 14
hotkeysTitle.ZIndex = 4
hotkeysTitle.AutomaticSize = Enum.AutomaticSize.X
hotkeysTitle.Size = UDim2.fromOffset(0, 20)
hotkeysTitle.Parent = hotkeysContent
local hotkeysTitleSize = TextService:GetTextSize("hotkeys", 14, Enum.Font.GothamBold, Vector2.new(9000000000, 9000000000))

local inputBeganConnection02 = hotkeysPanel.InputBegan:Connect(function(input2, gameProcessed2)
end)

local inputEndedConnection01 = UserInputService.InputEnded:Connect(function(input3, gameProcessed3)
end)

local inputChangedConnection01 = UserInputService.InputChanged:Connect(function(input4, gameProcessed4)
end)

hotkeysPanel.Size = UDim2.fromOffset((53 + math.ceil(hotkeysTitleSize.X)), 36)
-- Watermark and runtime status
local watermarkOverlay = Instance.new("CanvasGroup")
watermarkOverlay.AnchorPoint = Vector2.new(1, 0)
watermarkOverlay.BackgroundTransparency = 1
watermarkOverlay.Name = "krixacjbmdtw"
watermarkOverlay.Position = UDim2.new(1, -8, 0, 8)
watermarkOverlay.BorderSizePixel = 0
watermarkOverlay.ZIndex = 900
watermarkOverlay.AutomaticSize = Enum.AutomaticSize.XY
watermarkOverlay.Size = UDim2.fromOffset(0, 0)
watermarkOverlay.Parent = screenGui
local UIListLayout3 = Instance.new("UIListLayout")
UIListLayout3.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout3.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout3.Padding = UDim.new(0, 8)
UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout3.Parent = watermarkOverlay
local UIPadding3 = Instance.new("UIPadding")
UIPadding3.PaddingBottom = UDim.new(0, 10)
UIPadding3.PaddingTop = UDim.new(0, 10)
UIPadding3.PaddingLeft = UDim.new(0, 10)
UIPadding3.PaddingRight = UDim.new(0, 10)
UIPadding3.Parent = watermarkOverlay
watermarkOverlay.Visible = false
watermarkOverlay.GroupTransparency = 1
local brandBadge = Instance.new("Frame")
brandBadge.LayoutOrder = 1
brandBadge.Active = true
brandBadge.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
brandBadge.Name = "otpkumjjozdt"
brandBadge.BorderSizePixel = 0
brandBadge.BackgroundTransparency = 0.16
brandBadge.ZIndex = 2
brandBadge.AutomaticSize = Enum.AutomaticSize.X
brandBadge.Size = UDim2.fromOffset(0, 30)
brandBadge.Parent = watermarkOverlay
local UICorner3 = Instance.new("UICorner")
UICorner3.CornerRadius = UDim.new(0, 8)
UICorner3.Parent = brandBadge
local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Thickness = 1
UIStroke2.Transparency = 0.45
UIStroke2.Color = Color3.fromRGB(52, 52, 64)
UIStroke2.LineJoinMode = Enum.LineJoinMode.Round
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Parent = brandBadge
local UIShadow2 = Instance.new("Frame")
UIShadow2.Visible = false
UIShadow2.Size = UDim2.new()
UIShadow2.ZIndex = -1
UIShadow2.Parent = brandBadge
local brandBadgeBackground = Instance.new("Frame")
brandBadgeBackground.Name = "xbpiwlhecbej"
brandBadgeBackground.BackgroundTransparency = 0.82
brandBadgeBackground.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
brandBadgeBackground.ZIndex = 2
brandBadgeBackground.BorderSizePixel = 0
brandBadgeBackground.Size = UDim2.fromScale(1, 1)
brandBadgeBackground.Parent = brandBadge
local UICorner4 = Instance.new("UICorner")
UICorner4.CornerRadius = UDim.new(0, 8)
UICorner4.Parent = brandBadgeBackground
local UIGradient3 = Instance.new("UIGradient")
UIGradient3.Rotation = 90
UIGradient3.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(0.6, 0.82), NumberSequenceKeypoint.new(1, 0.9) })
UIGradient3.Parent = brandBadgeBackground
local brandBadgeHighlight = Instance.new("Frame")
brandBadgeHighlight.AnchorPoint = Vector2.new(0.5, 0)
brandBadgeHighlight.BackgroundTransparency = 0.7
brandBadgeHighlight.Name = "qotbujhshufl"
brandBadgeHighlight.Position = UDim2.new(0.5, 0, 0, 1)
brandBadgeHighlight.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
brandBadgeHighlight.ZIndex = 3
brandBadgeHighlight.BorderSizePixel = 0
brandBadgeHighlight.Size = UDim2.new(1, -14, 0, 1)
brandBadgeHighlight.Parent = brandBadge
local UIGradient4 = Instance.new("UIGradient")
UIGradient4.Rotation = 0
UIGradient4.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.1), NumberSequenceKeypoint.new(1, 1) })
UIGradient4.Parent = brandBadgeHighlight
local brandBadgeContent = Instance.new("Frame")
brandBadgeContent.Name = "aofpxylijkab"
brandBadgeContent.BackgroundTransparency = 1
brandBadgeContent.BorderSizePixel = 0
brandBadgeContent.ZIndex = 3
brandBadgeContent.AutomaticSize = Enum.AutomaticSize.X
brandBadgeContent.Size = UDim2.fromOffset(0, 30)
brandBadgeContent.Parent = brandBadge
local UIPadding4 = Instance.new("UIPadding")
UIPadding4.PaddingLeft = UDim.new(0, 13)
UIPadding4.PaddingRight = UDim.new(0, 13)
UIPadding4.Parent = brandBadgeContent
local UIListLayout4 = Instance.new("UIListLayout")
UIListLayout4.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout4.FillDirection = Enum.FillDirection.Horizontal
UIListLayout4.Padding = UDim.new(0, 8)
UIListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout4.Parent = brandBadgeContent

local inputBeganConnection03 = brandBadge.InputBegan:Connect(function(input5, gameProcessed5)
end)

local inputEndedConnection02 = UserInputService.InputEnded:Connect(function(input6, gameProcessed6)
end)

local inputChangedConnection02 = UserInputService.InputChanged:Connect(function(input7, gameProcessed7)
end)

local brandIcon = Instance.new("ImageLabel")
brandIcon.ImageColor3 = Color3.fromRGB(122, 122, 134)
brandIcon.ScaleType = Enum.ScaleType.Fit
brandIcon.ImageTransparency = 0
brandIcon.Image = "rbxassetid://75851496262862"
brandIcon.Name = "lswqdxzvlfzi"
brandIcon.LayoutOrder = 1
brandIcon.ZIndex = 4
brandIcon.BackgroundTransparency = 1
brandIcon.Size = UDim2.fromOffset(16, 16)
brandIcon.Parent = brandBadgeContent
local brandLabel = Instance.new("TextLabel")
brandLabel.LayoutOrder = 2
brandLabel.TextColor3 = Color3.fromRGB(240, 240, 245)
brandLabel.TextTransparency = 0.05
brandLabel.Text = "shitaro.lol"
brandLabel.Font = Enum.Font.GothamMedium
brandLabel.Name = "dwexdkaeztra"
brandLabel.BackgroundTransparency = 1
brandLabel.TextSize = 14
brandLabel.ZIndex = 4
brandLabel.AutomaticSize = Enum.AutomaticSize.X
brandLabel.Size = UDim2.fromOffset(0, 20)
brandLabel.Parent = brandBadgeContent
local statusBadge = Instance.new("Frame")
statusBadge.LayoutOrder = 2
statusBadge.Active = true
statusBadge.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
statusBadge.Name = "iuafqiuhgqub"
statusBadge.BorderSizePixel = 0
statusBadge.BackgroundTransparency = 0.16
statusBadge.ZIndex = 2
statusBadge.AutomaticSize = Enum.AutomaticSize.X
statusBadge.Size = UDim2.fromOffset(0, 30)
statusBadge.Parent = watermarkOverlay
local UICorner5 = Instance.new("UICorner")
UICorner5.CornerRadius = UDim.new(0, 8)
UICorner5.Parent = statusBadge
local UIStroke3 = Instance.new("UIStroke")
UIStroke3.Thickness = 1
UIStroke3.Transparency = 0.45
UIStroke3.Color = Color3.fromRGB(52, 52, 64)
UIStroke3.LineJoinMode = Enum.LineJoinMode.Round
UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke3.Parent = statusBadge
local UIShadow3 = Instance.new("Frame")
UIShadow3.Visible = false
UIShadow3.Size = UDim2.new()
UIShadow3.ZIndex = -1
UIShadow3.Parent = statusBadge
local statusBadgeBackground = Instance.new("Frame")
statusBadgeBackground.Name = "odjeeisfsqwh"
statusBadgeBackground.BackgroundTransparency = 0.82
statusBadgeBackground.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
statusBadgeBackground.ZIndex = 2
statusBadgeBackground.BorderSizePixel = 0
statusBadgeBackground.Size = UDim2.fromScale(1, 1)
statusBadgeBackground.Parent = statusBadge
local UICorner6 = Instance.new("UICorner")
UICorner6.CornerRadius = UDim.new(0, 8)
UICorner6.Parent = statusBadgeBackground
local UIGradient5 = Instance.new("UIGradient")
UIGradient5.Rotation = 90
UIGradient5.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(0.6, 0.82), NumberSequenceKeypoint.new(1, 0.9) })
UIGradient5.Parent = statusBadgeBackground
local statusBadgeHighlight = Instance.new("Frame")
statusBadgeHighlight.AnchorPoint = Vector2.new(0.5, 0)
statusBadgeHighlight.BackgroundTransparency = 0.7
statusBadgeHighlight.Name = "pegitazspkia"
statusBadgeHighlight.Position = UDim2.new(0.5, 0, 0, 1)
statusBadgeHighlight.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
statusBadgeHighlight.ZIndex = 3
statusBadgeHighlight.BorderSizePixel = 0
statusBadgeHighlight.Size = UDim2.new(1, -14, 0, 1)
statusBadgeHighlight.Parent = statusBadge
local UIGradient6 = Instance.new("UIGradient")
UIGradient6.Rotation = 0
UIGradient6.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.1), NumberSequenceKeypoint.new(1, 1) })
UIGradient6.Parent = statusBadgeHighlight
local statusContent = Instance.new("Frame")
statusContent.Name = "vpawhcwgervm"
statusContent.BackgroundTransparency = 1
statusContent.BorderSizePixel = 0
statusContent.ZIndex = 3
statusContent.AutomaticSize = Enum.AutomaticSize.X
statusContent.Size = UDim2.fromOffset(0, 30)
statusContent.Parent = statusBadge
local UIPadding5 = Instance.new("UIPadding")
UIPadding5.PaddingLeft = UDim.new(0, 13)
UIPadding5.PaddingRight = UDim.new(0, 13)
UIPadding5.Parent = statusContent
local UIListLayout5 = Instance.new("UIListLayout")
UIListLayout5.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout5.FillDirection = Enum.FillDirection.Horizontal
UIListLayout5.Padding = UDim.new(0, 8)
UIListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout5.Parent = statusContent

local inputBeganConnection04 = statusBadge.InputBegan:Connect(function(input8, gameProcessed8)
end)

local inputEndedConnection03 = UserInputService.InputEnded:Connect(function(input9, gameProcessed9)
end)

local inputChangedConnection03 = UserInputService.InputChanged:Connect(function(input10, gameProcessed10)
end)

local playerAvatar = Instance.new("ImageLabel")
playerAvatar.LayoutOrder = 10
playerAvatar.ScaleType = Enum.ScaleType.Crop
playerAvatar.ImageTransparency = 0.02
playerAvatar.Image = "rbxthumb://type=AvatarHeadShot&id=0&w=150&h=150"
playerAvatar.Name = "ryprckjnftzp"
playerAvatar.BackgroundTransparency = 0.3
playerAvatar.BackgroundColor3 = Color3.fromRGB(6, 6, 8)
playerAvatar.ZIndex = 4
playerAvatar.BorderSizePixel = 0
playerAvatar.Size = UDim2.fromOffset(22, 22)
playerAvatar.Parent = statusContent
local UICorner7 = Instance.new("UICorner")
UICorner7.CornerRadius = UDim.new(1, 0)
UICorner7.Parent = playerAvatar
local UIStroke4 = Instance.new("UIStroke")
UIStroke4.Color = Color3.fromRGB(52, 52, 64)
UIStroke4.Transparency = 0.35
UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke4.Thickness = 1
UIStroke4.Parent = playerAvatar
local playerNameLabel = Instance.new("TextLabel")
playerNameLabel.LayoutOrder = 22
playerNameLabel.TextColor3 = Color3.fromRGB(240, 240, 245)
playerNameLabel.TextTransparency = 0.05
playerNameLabel.Text = Players.LocalPlayer.Name
playerNameLabel.Font = Enum.Font.GothamMedium
playerNameLabel.Name = "tqwbtvdqrkup"
playerNameLabel.BackgroundTransparency = 1
playerNameLabel.TextSize = 14
playerNameLabel.ZIndex = 4
playerNameLabel.AutomaticSize = Enum.AutomaticSize.X
playerNameLabel.Size = UDim2.fromOffset(0, 20)
playerNameLabel.Parent = statusContent
local playerCountSeparator = Instance.new("Frame")
playerCountSeparator.LayoutOrder = 30
playerCountSeparator.Name = "pdaihlgjybzc"
playerCountSeparator.BackgroundTransparency = 1
playerCountSeparator.ZIndex = 4
playerCountSeparator.BorderSizePixel = 0
playerCountSeparator.Size = UDim2.fromOffset(14, 16)
playerCountSeparator.Parent = statusContent
local playerCountHighlight = Instance.new("Frame")
playerCountHighlight.AnchorPoint = Vector2.new(0.5, 0.5)
playerCountHighlight.BackgroundTransparency = 0.62
playerCountHighlight.Name = "nfnqmajuuwpi"
playerCountHighlight.Position = UDim2.fromScale(0.5, 0.5)
playerCountHighlight.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
playerCountHighlight.ZIndex = 4
playerCountHighlight.BorderSizePixel = 0
playerCountHighlight.Size = UDim2.fromOffset(1, 16)
playerCountHighlight.Parent = playerCountSeparator
local UIGradient7 = Instance.new("UIGradient")
UIGradient7.Rotation = 90
UIGradient7.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.85), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 0.85) })
UIGradient7.Parent = playerCountHighlight
local playersIcon = Instance.new("ImageLabel")
playersIcon.ImageColor3 = Color3.fromRGB(240, 240, 245)
playersIcon.ScaleType = Enum.ScaleType.Fit
playersIcon.ImageTransparency = 0.25
playersIcon.Image = "rbxassetid://114499998778667"
playersIcon.Name = "ppkpcddudwfq"
playersIcon.LayoutOrder = 31
playersIcon.ZIndex = 4
playersIcon.BackgroundTransparency = 1
playersIcon.Size = UDim2.fromOffset(15, 15)
playersIcon.Parent = statusContent
local playerCountLabel = Instance.new("TextLabel")
playerCountLabel.LayoutOrder = 32
playerCountLabel.TextColor3 = Color3.fromRGB(240, 240, 245)
playerCountLabel.TextTransparency = 0.05
playerCountLabel.Text = "0"
playerCountLabel.Font = Enum.Font.GothamMedium
playerCountLabel.Name = "rzrgjmrpsecf"
playerCountLabel.BackgroundTransparency = 1
playerCountLabel.TextSize = 14
playerCountLabel.ZIndex = 4
playerCountLabel.AutomaticSize = Enum.AutomaticSize.X
playerCountLabel.Size = UDim2.fromOffset(0, 20)
playerCountLabel.Parent = statusContent
local pingSeparator = Instance.new("Frame")
pingSeparator.LayoutOrder = 40
pingSeparator.Name = "ssxrjeamjrbe"
pingSeparator.BackgroundTransparency = 1
pingSeparator.ZIndex = 4
pingSeparator.BorderSizePixel = 0
pingSeparator.Size = UDim2.fromOffset(14, 16)
pingSeparator.Parent = statusContent
local pingHighlight = Instance.new("Frame")
pingHighlight.AnchorPoint = Vector2.new(0.5, 0.5)
pingHighlight.BackgroundTransparency = 0.62
pingHighlight.Name = "yxixqzgqvegx"
pingHighlight.Position = UDim2.fromScale(0.5, 0.5)
pingHighlight.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
pingHighlight.ZIndex = 4
pingHighlight.BorderSizePixel = 0
pingHighlight.Size = UDim2.fromOffset(1, 16)
pingHighlight.Parent = pingSeparator
local UIGradient8 = Instance.new("UIGradient")
UIGradient8.Rotation = 90
UIGradient8.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.85), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 0.85) })
UIGradient8.Parent = pingHighlight
local pingIcon = Instance.new("ImageLabel")
pingIcon.ImageColor3 = Color3.fromRGB(240, 240, 245)
pingIcon.ScaleType = Enum.ScaleType.Fit
pingIcon.ImageTransparency = 0.25
pingIcon.Image = "rbxassetid://104941258142372"
pingIcon.Name = "cwtaixnjkslh"
pingIcon.LayoutOrder = 41
pingIcon.ZIndex = 4
pingIcon.BackgroundTransparency = 1
pingIcon.Size = UDim2.fromOffset(15, 15)
pingIcon.Parent = statusContent
local pingLabel = Instance.new("TextLabel")
pingLabel.LayoutOrder = 42
pingLabel.TextColor3 = Color3.fromRGB(240, 240, 245)
pingLabel.TextTransparency = 0.05
pingLabel.Text = "0ms"
pingLabel.Font = Enum.Font.GothamMedium
pingLabel.Name = "qrtzlttujaon"
pingLabel.BackgroundTransparency = 1
pingLabel.TextSize = 14
pingLabel.ZIndex = 4
pingLabel.AutomaticSize = Enum.AutomaticSize.X
pingLabel.Size = UDim2.fromOffset(0, 20)
pingLabel.Parent = statusContent
local clockSeparator = Instance.new("Frame")
clockSeparator.LayoutOrder = 50
clockSeparator.Name = "wwaaxnuyyrej"
clockSeparator.BackgroundTransparency = 1
clockSeparator.ZIndex = 4
clockSeparator.BorderSizePixel = 0
clockSeparator.Size = UDim2.fromOffset(14, 16)
clockSeparator.Parent = statusContent
local clockHighlight = Instance.new("Frame")
clockHighlight.AnchorPoint = Vector2.new(0.5, 0.5)
clockHighlight.BackgroundTransparency = 0.62
clockHighlight.Name = "dgzwcufgpezy"
clockHighlight.Position = UDim2.fromScale(0.5, 0.5)
clockHighlight.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
clockHighlight.ZIndex = 4
clockHighlight.BorderSizePixel = 0
clockHighlight.Size = UDim2.fromOffset(1, 16)
clockHighlight.Parent = clockSeparator
local UIGradient9 = Instance.new("UIGradient")
UIGradient9.Rotation = 90
UIGradient9.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.85), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 0.85) })
UIGradient9.Parent = clockHighlight
local clockIcon = Instance.new("ImageLabel")
clockIcon.ImageColor3 = Color3.fromRGB(240, 240, 245)
clockIcon.ScaleType = Enum.ScaleType.Fit
clockIcon.ImageTransparency = 0.25
clockIcon.Image = "rbxassetid://136533241128438"
clockIcon.Name = "njphmcngfkes"
clockIcon.LayoutOrder = 51
clockIcon.ZIndex = 4
clockIcon.BackgroundTransparency = 1
clockIcon.Size = UDim2.fromOffset(15, 15)
clockIcon.Parent = statusContent
local clockLabel = Instance.new("TextLabel")
clockLabel.LayoutOrder = 52
clockLabel.TextColor3 = Color3.fromRGB(240, 240, 245)
clockLabel.TextTransparency = 0.05
clockLabel.Text = "00:00"
clockLabel.Font = Enum.Font.GothamMedium
clockLabel.Name = "ygdnjjzuujqr"
clockLabel.BackgroundTransparency = 1
clockLabel.TextSize = 14
clockLabel.ZIndex = 4
clockLabel.AutomaticSize = Enum.AutomaticSize.X
clockLabel.Size = UDim2.fromOffset(0, 20)
clockLabel.Parent = statusContent
local playerCountTextSize = TextService:GetTextSize("999", 14, Enum.Font.GothamBold, Vector2.new(9000000000, 9000000000))
local pingTextSize = TextService:GetTextSize("999ms", 14, Enum.Font.GothamBold, Vector2.new(9000000000, 9000000000))
local clockTextSize = TextService:GetTextSize("00:00", 14, Enum.Font.GothamBold, Vector2.new(9000000000, 9000000000))
clockLabel.AutomaticSize = Enum.AutomaticSize.None
clockLabel.Size = UDim2.fromOffset(math.ceil(clockTextSize.X), 20)
clockLabel.TextXAlignment = Enum.TextXAlignment.Left
pingLabel.AutomaticSize = Enum.AutomaticSize.None
pingLabel.Size = UDim2.fromOffset(math.ceil(pingTextSize.X), 20)
pingLabel.TextXAlignment = Enum.TextXAlignment.Left
playerCountLabel.AutomaticSize = Enum.AutomaticSize.None
playerCountLabel.Size = UDim2.fromOffset(math.ceil(playerCountTextSize.X), 20)
playerCountLabel.TextXAlignment = Enum.TextXAlignment.Left
local StatsService = game:GetService("Stats")

local renderSteppedConnection01 = RunService.RenderStepped:Connect(function(deltaTime)
	local ok, ping = pcall(function() return game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() end)
	if ok and ping then
		pingLabel.Text = math.floor(ping) .. "ms"
	end
	local pc = #game:GetService("Players"):GetPlayers()
	playerCountLabel.Text = tostring(pc)
	local h = math.floor(os.time() / 3600) % 24
	local m = math.floor(os.time() / 60) % 60
	clockLabel.Text = string.format("%02d:%02d", h, m)
end)

clockLabel.Text = "11:57"
watermarkOverlay.Visible = true

local renderSteppedConnection02
renderSteppedConnection02 = RunService.RenderStepped:Connect(function(deltaTime2)
	local t = watermarkOverlay.GroupTransparency
	if t <= 0 then
		watermarkOverlay.GroupTransparency = 0
		renderSteppedConnection02:Disconnect()
		return
	end
	watermarkOverlay.GroupTransparency = math.max(0, t - deltaTime2 * 5)
end)

local openerButton = Instance.new("ImageButton")
openerButton.AutoButtonColor = false
openerButton.Selectable = false
openerButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
openerButton.ScaleType = Enum.ScaleType.Fit
openerButton.Active = true
openerButton.BackgroundTransparency = 1
openerButton.AnchorPoint = Vector2.new(1, 0.5)
openerButton.Image = ""
openerButton.Name = "cznhhqjfarae"
openerButton.Position = UDim2.new(1, -10, 0.5, 0)
openerButton.Visible = false
openerButton.ZIndex = 950
openerButton.BorderSizePixel = 0
openerButton.Size = UDim2.fromOffset(54, 54)
openerButton.Parent = screenGui

local inputBeganConnection05 = openerButton.InputBegan:Connect(function(input11, gameProcessed11)
end)

local inputEndedConnection04 = UserInputService.InputEnded:Connect(function(input12, gameProcessed12)
end)

local inputChangedConnection04 = UserInputService.InputChanged:Connect(function(input13, gameProcessed13)
end)

local inputBeganConnection06 = openerButton.InputBegan:Connect(function(input14, gameProcessed14)
end)

local inputEndedConnection05 = openerButton.InputEnded:Connect(function(input15, gameProcessed15)
end)

local notificationContainer = Instance.new("Frame")
notificationContainer.AnchorPoint = Vector2.new(0, 0)
notificationContainer.Name = "sbljjuvdvrqw"
notificationContainer.Position = UDim2.new(0, 18, 0, 18)
notificationContainer.BackgroundTransparency = 1
notificationContainer.ZIndex = 400
notificationContainer.AutomaticSize = Enum.AutomaticSize.Y
notificationContainer.Size = UDim2.fromOffset(268, 0)
notificationContainer.Parent = screenGui

-- Public Shitaro UI library API
getgenv().shitaroebet = {
	alive = true,
	browsers = {},
	conns = {
		inputBeganConnection01,
		descendantAddedConnection01,
		inputBeganConnection02,
		inputEndedConnection01,
		inputChangedConnection01,
		inputBeganConnection03,
		inputEndedConnection02,
		inputChangedConnection02,
		inputBeganConnection04,
		inputEndedConnection03,
		inputChangedConnection03,
		renderSteppedConnection01,
		inputBeganConnection05,
		inputEndedConnection04,
		inputChangedConnection04,
		inputBeganConnection06,
		inputEndedConnection05
	},
	cursor = false,
	cursorlist = {},
	cursors = {},
	dir = "shitarocfgs",
	drawmask = {},
	forcemobile = false,
	hotkeys = true,
	icons = {
		activity = 137527339160230,
		banknote = 113703117675594,
		bell = 84691420588185,
		book = 74111869099427,
		bot = 70979486241131,
		box = 117371753006597,
		boxes = 95055252135506,
		brain = 116902501990569,
		bug = 75649814233484,
		car = 91451724283877,
		["car-front"] = 79993076477613,
		check = 86817768619372,
		["chevron-down"] = 71457658246709,
		["chevron-right"] = 101007429951147,
		["chevron-up"] = 98648581502859,
		["circle-dot"] = 122878673716704,
		["clipboard-paste"] = 79192963603923,
		clock = 136533241128438,
		code = 75851496262862,
		cog = 123222732420633,
		coins = 117341212186115,
		compass = 73836660434977,
		copy = 116378866141355,
		crosshair = 83752373575368,
		crown = 92253403464658,
		database = 99154172590159,
		dices = 116678154854810,
		ellipsis = 101330725759187,
		eye = 127234874352422,
		["eye-off"] = 85207295981701,
		["file-text"] = 92774566080911,
		fish = 114555142566431,
		flame = 125012650497883,
		folder = 77937190465422,
		footprints = 80792036653047,
		["gamepad-2"] = 99293705721130,
		gauge = 128279962545721,
		ghost = 132705178126217,
		globe = 125685532120024,
		hand = 83088528355903,
		heart = 88525382655929,
		home = 109841253338329,
		image = 114022611279795,
		info = 120620848266512,
		key = 83474888140571,
		keyboard = 121978468376124,
		layers = 114499998778667,
		link = 86131768436965,
		list = 101699539545687,
		lock = 119765975153029,
		["log-out"] = 140299936053191,
		map = 131325044235094,
		["map-pin"] = 137091405832737,
		minus = 95070996149109,
		monitor = 70520152532392,
		["mouse-pointer"] = 113428527051320,
		move = 77028714324861,
		package = 106101842173393,
		palette = 127369887384101,
		["person-standing"] = 101118444346965,
		pickaxe = 111300940329486,
		pipette = 104047428948587,
		plus = 101123124881873,
		power = 89331085993646,
		radar = 132868138496209,
		["refresh-cw"] = 106497040962250,
		rocket = 109537053598807,
		save = 122894934359450,
		["scan-eye"] = 109514269737059,
		search = 72296609649861,
		send = 94849431195865,
		settings = 106205298246017,
		["settings-2"] = 109485777305919,
		shield = 106509993556171,
		["shield-check"] = 71867984579031,
		shirt = 128162112866809,
		["shopping-cart"] = 79435149356304,
		skull = 101060850237115,
		["sliders-horizontal"] = 125396339381135,
		sparkles = 105634041692696,
		star = 72669221096319,
		["swatch-book"] = 70990631477660,
		sword = 121406454377051,
		swords = 99199363807265,
		target = 121091323240554,
		terminal = 102379915564176,
		["toggle-right"] = 129483325318573,
		["trash-2"] = 126010725826757,
		user = 114567720540659,
		users = 85332511060401,
		["users-round"] = 103880524805720,
		video = 99411215690870,
		["volume-2"] = 129861259578431,
		["wand-sparkles"] = 115623066336607,
		wifi = 104941258142372,
		wrench = 85345725497834,
		x = 116396312853810,
		zap = 109718589733073
	},
	logo = "",
	mobile = false,
	noticecap = 5,
	notices = true,
	opener = false,
	order = { "menu|hotkeyspot", "menu|markspot2", "menu|openerspot" },
	pool = {
		["menu|hotkeyspot"] = {
			kind = "string",
			get = function()
			end,
			set = function()
			end
		},
		["menu|markspot2"] = {
			kind = "string",
			get = function()
			end,
			set = function()
			end
		},
		["menu|openerspot"] = {
			kind = "string",
			get = function()
			end,
			set = function()
			end
		}
	},
	scale = 1,
	scr = screenGui,
	shown = false,
	sound = false,
	theme = {
		accent = Color3.fromRGB(255, 255, 255),
		bg = Color3.fromRGB(6, 6, 8),
		dim = Color3.fromRGB(122, 122, 134),
		glow = Color3.fromRGB(150, 152, 175),
		head = Color3.fromRGB(15, 15, 18),
		line = Color3.fromRGB(52, 52, 64),
		panel = Color3.fromRGB(11, 11, 14),
		side = Color3.fromRGB(12, 12, 15),
		text = Color3.fromRGB(240, 240, 245)
	},
	tone = "Click",
	tonelist = { "Click", "Bubble", "Hentai" },
	tones = {},
	ver = "67",
	watermark = true,
	wins = {},
	apply = function()
	end,
	ask = function()
	end,
	-- Creates the embedded browser-style panel.
	browser = function(_, browserOptions)
		browserOptions = browserOptions or {}
		if type(browserOptions.size) ~= "userdata" then browserOptions.size = Vector2.new(800, 500) end
		if type(browserOptions.min) ~= "userdata" then browserOptions.min = Vector2.new(400, 300) end
		if type(browserOptions.url) ~= "string" then browserOptions.url = "" end
		local browserWindow = Instance.new("Frame")
		browserWindow.Visible = false
		browserWindow.BackgroundColor3 = Color3.fromRGB(6, 6, 8)
		browserWindow.Name = "ocquqhdnnbsy"
		browserWindow.Active = true
		browserWindow.Position = UDim2.new(0.5, (-math.floor(math.max(math.floor(browserOptions.size.X), browserOptions.min.X) * 0.5)), 0.5, (-math.floor(math.max(math.floor(browserOptions.size.Y), browserOptions.min.Y) * 0.5)))
		browserWindow.ZIndex = 60
		browserWindow.BorderSizePixel = 0
		browserWindow.Size = UDim2.fromOffset(math.max(math.floor(browserOptions.size.X), browserOptions.min.X), math.max(math.floor(browserOptions.size.Y), browserOptions.min.Y))
		browserWindow.Parent = screenGui
		local UICorner8 = Instance.new("UICorner")
		UICorner8.CornerRadius = UDim.new(0, 9)
		UICorner8.Parent = browserWindow
		local UIStroke5 = Instance.new("UIStroke")
		UIStroke5.Color = Color3.fromRGB(52, 52, 64)
		UIStroke5.Transparency = 0.55
		UIStroke5.Parent = browserWindow
		local UIShadow4 = Instance.new("Frame")
UIShadow4.Visible = false
UIShadow4.Size = UDim2.new()
		UIShadow4.ZIndex = -1
		UIShadow4.Parent = browserWindow
		local browserTitleBar = Instance.new("Frame")
		browserTitleBar.Name = "hlmyrgenrnnp"
		browserTitleBar.Active = true
		browserTitleBar.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
		browserTitleBar.ZIndex = 61
		browserTitleBar.BorderSizePixel = 0
		browserTitleBar.Size = UDim2.new(1, 0, 0, 34)
		browserTitleBar.Parent = browserWindow
		local UICorner9 = Instance.new("UICorner")
		UICorner9.CornerRadius = UDim.new(0, 9)
		UICorner9.Parent = browserTitleBar
		local titleBarCornerFill = Instance.new("Frame")
		titleBarCornerFill.AnchorPoint = Vector2.new(0, 1)
		titleBarCornerFill.Name = "trilrgxlnqoa"
		titleBarCornerFill.Position = UDim2.fromScale(0, 1)
		titleBarCornerFill.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
		titleBarCornerFill.ZIndex = 61
		titleBarCornerFill.BorderSizePixel = 0
		titleBarCornerFill.Size = UDim2.new(1, 0, 0, 9)
		titleBarCornerFill.Parent = browserTitleBar
		local browserAccentLine = Instance.new("Frame")
		browserAccentLine.BackgroundTransparency = 0.45
		browserAccentLine.Name = "slfqkkrxpysb"
		browserAccentLine.Position = UDim2.fromOffset(0, 34)
		browserAccentLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		browserAccentLine.ZIndex = 62
		browserAccentLine.BorderSizePixel = 0
		browserAccentLine.Size = UDim2.new(1, 0, 0, 2)
		browserAccentLine.Parent = browserWindow
		local UIGradient10 = Instance.new("UIGradient")
		UIGradient10.Rotation = 0
		UIGradient10.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.12, 0.2), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(0.88, 0.2), NumberSequenceKeypoint.new(1, 1) })
		UIGradient10.Parent = browserAccentLine
		local backButton = Instance.new("ImageButton")
		backButton.AutoButtonColor = false
		backButton.Selectable = false
		backButton.ImageColor3 = Color3.fromRGB(122, 122, 134)
		backButton.ScaleType = Enum.ScaleType.Fit
		backButton.ImageTransparency = 0.25
		backButton.BackgroundTransparency = 1
		backButton.AnchorPoint = Vector2.new(0, 0.5)
		backButton.Image = "rbxassetid://101007429951147"
		backButton.Name = "afukhcdjqijm"
		backButton.Position = UDim2.new(0, 8, 0.5, 0)
		backButton.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
		backButton.ZIndex = 63
		backButton.BorderSizePixel = 0
		backButton.Size = UDim2.fromOffset(22, 22)
		backButton.Parent = browserTitleBar
		local UICorner10 = Instance.new("UICorner")
		UICorner10.CornerRadius = UDim.new(0, 6)
		UICorner10.Parent = backButton

		local mouseEnterConnection01 = backButton.MouseEnter:Connect(function()
			local tween8 = TweenService:Create(backButton, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 0.35, ImageColor3 = Color3.fromRGB(240, 240, 245), ImageTransparency = 0 })
			tween8:Play()
		end)

		local mouseLeaveConnection01 = backButton.MouseLeave:Connect(function()
			local tween9 = TweenService:Create(backButton, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 1, ImageColor3 = Color3.fromRGB(122, 122, 134), ImageTransparency = 0.25 })
			tween9:Play()
		end)

		local forwardButton = Instance.new("ImageButton")
		forwardButton.AutoButtonColor = false
		forwardButton.Selectable = false
		forwardButton.ImageColor3 = Color3.fromRGB(122, 122, 134)
		forwardButton.ScaleType = Enum.ScaleType.Fit
		forwardButton.ImageTransparency = 0.25
		forwardButton.BackgroundTransparency = 1
		forwardButton.AnchorPoint = Vector2.new(0, 0.5)
		forwardButton.Image = "rbxassetid://101007429951147"
		forwardButton.Name = "yryepwfpdgdn"
		forwardButton.Position = UDim2.new(0, 32, 0.5, 0)
		forwardButton.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
		forwardButton.ZIndex = 63
		forwardButton.BorderSizePixel = 0
		forwardButton.Size = UDim2.fromOffset(22, 22)
		forwardButton.Parent = browserTitleBar
		local UICorner11 = Instance.new("UICorner")
		UICorner11.CornerRadius = UDim.new(0, 6)
		UICorner11.Parent = forwardButton

		local mouseEnterConnection02 = forwardButton.MouseEnter:Connect(function()
			local tween10 = TweenService:Create(forwardButton, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 0.35, ImageColor3 = Color3.fromRGB(240, 240, 245), ImageTransparency = 0 })
			tween10:Play()
		end)

		local mouseLeaveConnection02 = forwardButton.MouseLeave:Connect(function()
			local tween11 = TweenService:Create(forwardButton, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 1, ImageColor3 = Color3.fromRGB(122, 122, 134), ImageTransparency = 0.25 })
			tween11:Play()
		end)

		local refreshButton = Instance.new("ImageButton")
		refreshButton.AutoButtonColor = false
		refreshButton.Selectable = false
		refreshButton.ImageColor3 = Color3.fromRGB(122, 122, 134)
		refreshButton.ScaleType = Enum.ScaleType.Fit
		refreshButton.ImageTransparency = 0.25
		refreshButton.BackgroundTransparency = 1
		refreshButton.AnchorPoint = Vector2.new(0, 0.5)
		refreshButton.Image = "rbxassetid://106497040962250"
		refreshButton.Name = "mcpzthbpbakd"
		refreshButton.Position = UDim2.new(0, 56, 0.5, 0)
		refreshButton.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
		refreshButton.ZIndex = 63
		refreshButton.BorderSizePixel = 0
		refreshButton.Size = UDim2.fromOffset(22, 22)
		refreshButton.Parent = browserTitleBar
		local UICorner12 = Instance.new("UICorner")
		UICorner12.CornerRadius = UDim.new(0, 6)
		UICorner12.Parent = refreshButton

		local mouseEnterConnection03 = refreshButton.MouseEnter:Connect(function()
			local tween12 = TweenService:Create(refreshButton, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 0.35, ImageColor3 = Color3.fromRGB(240, 240, 245), ImageTransparency = 0 })
			tween12:Play()
		end)

		local mouseLeaveConnection03 = refreshButton.MouseLeave:Connect(function()
			local tween13 = TweenService:Create(refreshButton, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 1, ImageColor3 = Color3.fromRGB(122, 122, 134), ImageTransparency = 0.25 })
			tween13:Play()
		end)

		local closeButton = Instance.new("ImageButton")
		closeButton.AutoButtonColor = false
		closeButton.Selectable = false
		closeButton.ImageColor3 = Color3.fromRGB(122, 122, 134)
		closeButton.ScaleType = Enum.ScaleType.Fit
		closeButton.ImageTransparency = 0.25
		closeButton.BackgroundTransparency = 1
		closeButton.AnchorPoint = Vector2.new(1, 0.5)
		closeButton.Image = "rbxassetid://116396312853810"
		closeButton.Name = "vbdbmglgylou"
		closeButton.Position = UDim2.new(1, -8, 0.5, 0)
		closeButton.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
		closeButton.ZIndex = 63
		closeButton.BorderSizePixel = 0
		closeButton.Size = UDim2.fromOffset(22, 22)
		closeButton.Parent = browserTitleBar
		local UICorner13 = Instance.new("UICorner")
		UICorner13.CornerRadius = UDim.new(0, 6)
		UICorner13.Parent = closeButton

		local mouseEnterConnection04 = closeButton.MouseEnter:Connect(function()
			local tween14 = TweenService:Create(closeButton, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 0.35, ImageColor3 = Color3.fromRGB(240, 240, 245), ImageTransparency = 0 })
			tween14:Play()
		end)

		local mouseLeaveConnection04 = closeButton.MouseLeave:Connect(function()
			local tween15 = TweenService:Create(closeButton, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 1, ImageColor3 = Color3.fromRGB(122, 122, 134), ImageTransparency = 0.25 })
			tween15:Play()
		end)

		backButton.Rotation = 180
		local addressBox = Instance.new("TextBox")
		addressBox.AnchorPoint = Vector2.new(0, 0.5)
		addressBox.PlaceholderColor3 = Color3.fromRGB(122, 122, 134)
		addressBox.PlaceholderText = "type a link"
		addressBox.BorderSizePixel = 0
		addressBox.Size = UDim2.new(1, -118, 0, 24)
		addressBox.TextColor3 = Color3.fromRGB(240, 240, 245)
		addressBox.Text = browserOptions.url
		addressBox.ZIndex = 63
		addressBox.TextXAlignment = Enum.TextXAlignment.Left
		addressBox.TextTruncate = Enum.TextTruncate.AtEnd
		addressBox.Font = Enum.Font.GothamMedium
		addressBox.Name = "phhoqmrknmfm"
		addressBox.Position = UDim2.new(0, 82, 0.5, 0)
		addressBox.TextSize = 13
		addressBox.ClearTextOnFocus = false
		addressBox.BackgroundTransparency = 0.25
		addressBox.BackgroundColor3 = Color3.fromRGB(6, 6, 8)
		addressBox.Parent = browserTitleBar
		local UICorner14 = Instance.new("UICorner")
		UICorner14.CornerRadius = UDim.new(0, 6)
		UICorner14.Parent = addressBox
		addressBox.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Medium)
		local UIPadding6 = Instance.new("UIPadding")
		UIPadding6.PaddingLeft = UDim.new(0, 9)
		UIPadding6.PaddingRight = UDim.new(0, 9)
		UIPadding6.Parent = addressBox
		local UIStroke6 = Instance.new("UIStroke")
		UIStroke6.Color = Color3.fromRGB(52, 52, 64)
		UIStroke6.Transparency = 0.6
		UIStroke6.Parent = addressBox
		local browserStatusPanel = Instance.new("Frame")
		browserStatusPanel.BackgroundTransparency = 0.2
		browserStatusPanel.ClipsDescendants = true
		browserStatusPanel.Name = "xnledflfwfei"
		browserStatusPanel.Position = UDim2.fromOffset(8, 42)
		browserStatusPanel.BackgroundColor3 = Color3.fromRGB(6, 6, 8)
		browserStatusPanel.ZIndex = 61
		browserStatusPanel.BorderSizePixel = 0
		browserStatusPanel.Size = UDim2.new(1, -16, 1, -68)
		browserStatusPanel.Parent = browserWindow
		local UICorner15 = Instance.new("UICorner")
		UICorner15.CornerRadius = UDim.new(0, 7)
		UICorner15.Parent = browserStatusPanel
		local UIStroke7 = Instance.new("UIStroke")
		UIStroke7.Color = Color3.fromRGB(52, 52, 64)
		UIStroke7.Transparency = 0.72
		UIStroke7.Parent = browserStatusPanel
		local browserStatusIcon = Instance.new("ImageLabel")
		browserStatusIcon.ScaleType = Enum.ScaleType.Stretch
		browserStatusIcon.ImageTransparency = 1
		browserStatusIcon.Image = ""
		browserStatusIcon.Name = "pzivdthcebin"
		browserStatusIcon.BackgroundTransparency = 1
		browserStatusIcon.ResampleMode = Enum.ResamplerMode.Default
		browserStatusIcon.ZIndex = 62
		browserStatusIcon.BorderSizePixel = 0
		browserStatusIcon.Size = UDim2.fromScale(1, 1)
		browserStatusIcon.Parent = browserStatusPanel
		local UICorner16 = Instance.new("UICorner")
		UICorner16.CornerRadius = UDim.new(0, 7)
		UICorner16.Parent = browserStatusIcon
		local browserStatusLabel = Instance.new("TextLabel")
		browserStatusLabel.TextWrapped = true
		browserStatusLabel.TextColor3 = Color3.fromRGB(122, 122, 134)
		browserStatusLabel.TextTransparency = 0.25
		browserStatusLabel.Text = "host offline"
		browserStatusLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		browserStatusLabel.Font = Enum.Font.GothamBold
		browserStatusLabel.Name = "ylmfojipsxpa"
		browserStatusLabel.Position = UDim2.fromScale(0.5, 0.5)
		browserStatusLabel.BackgroundTransparency = 1
		browserStatusLabel.ZIndex = 63
		browserStatusLabel.TextSize = 12
		browserStatusLabel.Size = UDim2.new(1, -40, 0, 40)
		browserStatusLabel.Parent = browserStatusPanel
		local browserActionButton = Instance.new("ImageButton")
		browserActionButton.AutoButtonColor = false
		browserActionButton.Selectable = false
		browserActionButton.Name = "muuibzuafyvb"
		browserActionButton.ImageTransparency = 1
		browserActionButton.ZIndex = 64
		browserActionButton.BackgroundTransparency = 1
		browserActionButton.Size = UDim2.fromScale(1, 1)
		browserActionButton.Parent = browserStatusPanel
		local browserOutputBox = Instance.new("TextBox")
		browserOutputBox.ZIndex = 61
		browserOutputBox.Text = ""
		browserOutputBox.Name = "ssvhfrfizxmg"
		browserOutputBox.Position = UDim2.fromOffset(-40, -40)
		browserOutputBox.TextTransparency = 1
		browserOutputBox.ClearTextOnFocus = false
		browserOutputBox.BackgroundTransparency = 1
		browserOutputBox.Size = UDim2.fromOffset(10, 10)
		browserOutputBox.Parent = browserWindow
		local browserStateLabel = Instance.new("TextLabel")
		browserStateLabel.TextColor3 = Color3.fromRGB(122, 122, 134)
		browserStateLabel.TextTransparency = 0.3
		browserStateLabel.Text = "idle"
		browserStateLabel.BackgroundTransparency = 1
		browserStateLabel.TextXAlignment = Enum.TextXAlignment.Left
		browserStateLabel.AnchorPoint = Vector2.new(0, 1)
		browserStateLabel.Font = Enum.Font.GothamMedium
		browserStateLabel.Name = "wddxncooesca"
		browserStateLabel.Position = UDim2.new(0, 12, 1, -6)
		browserStateLabel.TextTruncate = Enum.TextTruncate.AtEnd
		browserStateLabel.ZIndex = 62
		browserStateLabel.TextSize = 11
		browserStateLabel.Size = UDim2.new(1, -46, 0, 14)
		browserStateLabel.Parent = browserWindow
		local browserDragHandle = Instance.new("ImageButton")
		browserDragHandle.AutoButtonColor = false
		browserDragHandle.Selectable = false
		browserDragHandle.ImageColor3 = Color3.fromRGB(122, 122, 134)
		browserDragHandle.ScaleType = Enum.ScaleType.Fit
		browserDragHandle.ImageTransparency = 0.45
		browserDragHandle.AnchorPoint = Vector2.new(1, 1)
		browserDragHandle.Image = "rbxassetid://77028714324861"
		browserDragHandle.Name = "wjzathnohroj"
		browserDragHandle.Position = UDim2.new(1, -4, 1, -4)
		browserDragHandle.Rotation = 45
		browserDragHandle.ZIndex = 63
		browserDragHandle.BackgroundTransparency = 1
		browserDragHandle.Size = UDim2.fromOffset(18, 18)
		browserDragHandle.Parent = browserWindow
		local AssetService = game:GetService("AssetService")

		local mouseButton1ClickConnection01 = closeButton.MouseButton1Click:Connect(function()
		end)

		local mouseButton1ClickConnection02 = backButton.MouseButton1Click:Connect(function()
			notificationSound.PlaybackSpeed = 1.18
			notificationSound.Volume = 0.22
			notificationSound.TimePosition = 0
			notificationSound:Play()
		end)

		local mouseButton1ClickConnection03 = forwardButton.MouseButton1Click:Connect(function()
			actionSound.PlaybackSpeed = 1.18
			actionSound.Volume = 0.22
			actionSound.TimePosition = 0
			actionSound:Play()
		end)

		local mouseButton1ClickConnection04 = refreshButton.MouseButton1Click:Connect(function()
			toggleSound.PlaybackSpeed = 1.22
			toggleSound.Volume = 0.26
			toggleSound.TimePosition = 0
			toggleSound:Play()
		end)

		local focusLostConnection01 = addressBox.FocusLost:Connect(function(enterPressed, inputObject)
			local tween16 = TweenService:Create(UIStroke6, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Transparency = 0.6 })
			tween16:Play()
			addressBox.Text = tostring(browserOptions.url)
			browserStateLabel.Text = "loading"
		end)

		local focusedConnection01 = addressBox.Focused:Connect(function()
			local tween17 = TweenService:Create(UIStroke6, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Transparency = 0.3 })
			tween17:Play()
		end)

		local mouseButton1ClickConnection05 = browserActionButton.MouseButton1Click:Connect(function()
			UserInputService:GetMouseLocation()
			GuiService:GetGuiInset()
		end)

		local mouseButton2ClickConnection01 = browserActionButton.MouseButton2Click:Connect(function()
			UserInputService:GetMouseLocation()
			GuiService:GetGuiInset()
		end)

		local inputChangedConnection05 = browserActionButton.InputChanged:Connect(function(input16, gameProcessed16)
		end)

		local inputBeganConnection07 = browserActionButton.InputBegan:Connect(function(input17, gameProcessed17)
		end)

		local browserOutputChanged = browserOutputBox:GetPropertyChangedSignal("Text")

		local changedSignalConnection01 = browserOutputChanged:Connect(function()
		end)

		local inputBeganConnection08 = UserInputService.InputBegan:Connect(function(input18, gameProcessed18)
		end)

		local inputBeganConnection09 = browserDragHandle.InputBegan:Connect(function(input19, gameProcessed19)
		end)

		local inputEndedConnection06 = browserDragHandle.InputEnded:Connect(function(input20, gameProcessed20)
		end)

		local heartbeatConnection01 = RunService.Heartbeat:Connect(function(deltaTime3)
		end)

		browserWindow:GetDescendants()
		browserWindow.BackgroundTransparency = 1
		UIStroke5.Transparency = 1
		browserTitleBar.BackgroundTransparency = 1
		titleBarCornerFill.BackgroundTransparency = 1
		backButton.BackgroundTransparency = 1
		backButton.ImageTransparency = 1
		forwardButton.BackgroundTransparency = 1
		forwardButton.ImageTransparency = 1
		refreshButton.BackgroundTransparency = 1
		refreshButton.ImageTransparency = 1
		closeButton.BackgroundTransparency = 1
		closeButton.ImageTransparency = 1
		addressBox.BackgroundTransparency = 1
		addressBox.TextTransparency = 1
		UIStroke6.Transparency = 1
		browserAccentLine.BackgroundTransparency = 1
		browserStatusPanel.BackgroundTransparency = 1
		UIStroke7.Transparency = 1
		browserStatusIcon.BackgroundTransparency = 1
		browserStatusIcon.ImageTransparency = 1
		browserStatusLabel.BackgroundTransparency = 1
		browserStatusLabel.TextTransparency = 1
		browserActionButton.BackgroundTransparency = 1
		browserActionButton.ImageTransparency = 1
		browserOutputBox.BackgroundTransparency = 1
		browserOutputBox.TextTransparency = 1
		browserStateLabel.BackgroundTransparency = 1
		browserStateLabel.TextTransparency = 1
		browserDragHandle.BackgroundTransparency = 1
		browserDragHandle.ImageTransparency = 1

		local inputBeganConnection10 = browserTitleBar.InputBegan:Connect(function(input21, gameProcessed21)
		end)

		local inputEndedConnection07 = UserInputService.InputEnded:Connect(function(input22, gameProcessed22)
		end)

		local inputChangedConnection06 = UserInputService.InputChanged:Connect(function(input23, gameProcessed23)
		end)
	end,
	chime = function()
	end,
	closeask = function()
	end,
	closepopup = function()
	end,
	erase = function()
	end,
	fetch = function()
	end,
	freeze = function()
	end,
	hook = function()
	end,
	hotkeyspot = function()
	end,
	notify = function(_, notificationOptions)
		-- notification stub: display in output
		pcall(function()
			print("[shitaro notify]", tostring(notificationOptions and notificationOptions.text or ""))
		end)
	end,
	openericon = function(_, imageId)
		openerButton.Image = tostring(imageId)
	end,
	openerspot = function()
	end,
	popup = function()
	end,
	recolor = function()
	end,
	retitle = function()
	end,
	roster = function()
		if not isfolder("shitarocfgs") then makefolder("shitarocfgs") end
	end,
	setcursor = function()
	end,
	sethotkeys = function()
	end,
	setnotices = function()
	end,
	setopener = function()
		openerButton.Visible = true
	end,
	setsound = function()
	end,
	setstyle = function()
	end,
	settone = function()
	end,
	setwatermark = function()
	end,
	store = function()
	end,
	thaw = function()
	end,
	unhook = function()
	end,
	unload = function()
		-- browser cleanup handled by browser() scope; safe to skip here
		inputBeganConnection01:Disconnect()
		descendantAddedConnection01:Disconnect()
		inputBeganConnection02:Disconnect()
		inputEndedConnection01:Disconnect()
		inputChangedConnection01:Disconnect()
		inputBeganConnection03:Disconnect()
		inputEndedConnection02:Disconnect()
		inputChangedConnection02:Disconnect()
		inputBeganConnection04:Disconnect()
		inputEndedConnection03:Disconnect()
		inputChangedConnection03:Disconnect()
		renderSteppedConnection01:Disconnect()
		inputBeganConnection05:Disconnect()
		inputEndedConnection04:Disconnect()
		inputChangedConnection04:Disconnect()
		inputBeganConnection06:Disconnect()
		inputEndedConnection05:Disconnect()
		mouseEnterConnection01:Disconnect()
		mouseLeaveConnection01:Disconnect()
		mouseEnterConnection02:Disconnect()
		mouseLeaveConnection02:Disconnect()
		mouseEnterConnection03:Disconnect()
		mouseLeaveConnection03:Disconnect()
		mouseEnterConnection04:Disconnect()
		mouseLeaveConnection04:Disconnect()
		mouseButton1ClickConnection01:Disconnect()
		mouseButton1ClickConnection02:Disconnect()
		mouseButton1ClickConnection03:Disconnect()
		mouseButton1ClickConnection04:Disconnect()
		focusLostConnection01:Disconnect()
		focusedConnection01:Disconnect()
		mouseButton1ClickConnection05:Disconnect()
		mouseButton2ClickConnection01:Disconnect()
		inputChangedConnection05:Disconnect()
		inputBeganConnection07:Disconnect()
		changedSignalConnection01:Disconnect()
		inputBeganConnection08:Disconnect()
		inputBeganConnection09:Disconnect()
		inputEndedConnection06:Disconnect()
		heartbeatConnection01:Disconnect()
		inputBeganConnection10:Disconnect()
		inputEndedConnection07:Disconnect()
		inputChangedConnection06:Disconnect()
		screenGui:Destroy()
	end,
	wake = function()
	end,
	watch = function()
				makefolder("shitarocfgs")
		
	end,
	watermarkspot = function()
	end,
	-- Creates a main window and returns its controller.
	window = function(_, windowOptions)
		windowOptions = windowOptions or {}
		if typeof(windowOptions.size) ~= "UDim2" then
			windowOptions.size = UDim2.fromOffset(600, 400)
		end
		if type(windowOptions.radius) ~= "number" then
			windowOptions.radius = 8
		end
		if type(windowOptions.side) ~= "number" then
			windowOptions.side = 180
		end
		if type(windowOptions.logo) ~= "string" then
			windowOptions.logo = ""
		end
		local windowShell = Instance.new("Frame")
		windowShell.AnchorPoint = Vector2.new(0.5, 0.5)
		windowShell.Name = "idjkqolqmiip"
		windowShell.Active = true
		windowShell.Position = UDim2.fromScale(0.5, 0.5)
		windowShell.BackgroundTransparency = 1
		windowShell.BorderSizePixel = 0
		windowShell.Size = windowOptions.size
		windowShell.Parent = screenGui
		local windowShadowHost = Instance.new("Frame")
		windowShadowHost.Name = "htmxbebkfofd"
		windowShadowHost.BackgroundTransparency = 1
		windowShadowHost.ZIndex = 1
		windowShadowHost.BorderSizePixel = 0
		windowShadowHost.Size = UDim2.fromScale(1, 1)
		windowShadowHost.Parent = windowShell
		local UICorner17 = Instance.new("UICorner")
		UICorner17.CornerRadius = UDim.new(0, windowOptions.radius)
		UICorner17.Parent = windowShadowHost
		local UIShadow5 = Instance.new("Frame")
UIShadow5.Visible = false
UIShadow5.Size = UDim2.new()
		UIShadow5.ZIndex = -1
		UIShadow5.Parent = windowShadowHost
		local UIShadow6 = Instance.new("Frame")
UIShadow6.Visible = false
UIShadow6.Size = UDim2.new()
		UIShadow6.ZIndex = -2
		UIShadow6.Parent = windowShadowHost
		local windowRoot = Instance.new("CanvasGroup")
		windowRoot.BackgroundColor3 = Color3.fromRGB(6, 6, 8)
		windowRoot.GroupTransparency = 1
		windowRoot.Name = "xpchltgrhuih"
		windowRoot.Active = true
		windowRoot.ClipsDescendants = true
		windowRoot.ZIndex = 2
		windowRoot.BorderSizePixel = 0
		windowRoot.Size = UDim2.fromScale(1, 1)
		windowRoot.Parent = windowShell
		local UICorner18 = Instance.new("UICorner")
		UICorner18.CornerRadius = UDim.new(0, windowOptions.radius)
		UICorner18.Parent = windowRoot
		local windowBorder = Instance.new("Frame")
		windowBorder.Name = "mxkvsebyquvf"
		windowBorder.BackgroundTransparency = 1
		windowBorder.ZIndex = 20
		windowBorder.BorderSizePixel = 0
		windowBorder.Size = UDim2.fromScale(1, 1)
		windowBorder.Parent = windowRoot
		local UICorner19 = Instance.new("UICorner")
		UICorner19.CornerRadius = UDim.new(0, windowOptions.radius)
		UICorner19.Parent = windowBorder
		local UIStroke8 = Instance.new("UIStroke")
		UIStroke8.Color = Color3.fromRGB(52, 52, 64)
		UIStroke8.Transparency = 0.6
		UIStroke8.Parent = windowBorder
																				local windowInputLayer = Instance.new("Frame")
		windowInputLayer.Name = "ieiuvxqkzgis"
		windowInputLayer.Active = true
		windowInputLayer.ZIndex = 0
		windowInputLayer.BackgroundTransparency = 1
		windowInputLayer.Size = UDim2.fromScale(1, 1)
		windowInputLayer.Parent = windowRoot
		local mainContent = Instance.new("Frame")
		mainContent.BackgroundColor3 = Color3.fromRGB(6, 6, 8)
		mainContent.Name = "omdueufegmhp"
		mainContent.Position = UDim2.fromOffset(windowOptions.side, 0)
		mainContent.ClipsDescendants = true
		mainContent.ZIndex = 1
		mainContent.BorderSizePixel = 0
		mainContent.Size = UDim2.new(1, (-windowOptions.side), 1, 0)
		mainContent.Parent = windowRoot
		local UICorner20 = Instance.new("UICorner")
		UICorner20.CornerRadius = UDim.new(0, windowOptions.radius)
		UICorner20.Parent = mainContent
		local contentCornerFill = Instance.new("Frame")
		contentCornerFill.Name = "cfhhbpljbdpz"
		contentCornerFill.BackgroundColor3 = Color3.fromRGB(6, 6, 8)
		contentCornerFill.ZIndex = 1
		contentCornerFill.BorderSizePixel = 0
		contentCornerFill.Size = UDim2.new(0, windowOptions.radius, 1, 0)
		contentCornerFill.Parent = mainContent
		local particleLayer = Instance.new("Frame")
		particleLayer.Name = "igrivocxbciw"
		particleLayer.ClipsDescendants = true
		particleLayer.BackgroundTransparency = 1
		particleLayer.ZIndex = 2
		particleLayer.BorderSizePixel = 0
		particleLayer.Size = UDim2.fromScale(1, 1)
		particleLayer.Parent = mainContent
		local particle002 = Instance.new("Frame")
		particle002.AnchorPoint = Vector2.new(0.5, 0.5)
		particle002.Name = "cdeaxhbxtuks"
		particle002.BackgroundTransparency = 0.36397388552863691
		particle002.Size = UDim2.fromOffset(4, 4)
		particle002.ZIndex = 3
		particle002.BorderSizePixel = 0
		particle002.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle002.Parent = particleLayer
		local UICorner21 = Instance.new("UICorner")
		UICorner21.CornerRadius = UDim.new(1, 0)
		UICorner21.Parent = particle002
		local particle003 = Instance.new("Frame")
		particle003.AnchorPoint = Vector2.new(0.5, 0.5)
		particle003.Name = "qjkvaqqtodxf"
		particle003.BackgroundTransparency = 0.28125047510543622
		particle003.Size = UDim2.fromOffset(3, 3)
		particle003.ZIndex = 3
		particle003.BorderSizePixel = 0
		particle003.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle003.Parent = particleLayer
		local UICorner22 = Instance.new("UICorner")
		UICorner22.CornerRadius = UDim.new(1, 0)
		UICorner22.Parent = particle003
		local particle004 = Instance.new("Frame")
		particle004.AnchorPoint = Vector2.new(0.5, 0.5)
		particle004.Name = "gplqdukevdww"
		particle004.BackgroundTransparency = 0.46679960973959922
		particle004.Size = UDim2.fromOffset(4, 4)
		particle004.ZIndex = 3
		particle004.BorderSizePixel = 0
		particle004.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle004.Parent = particleLayer
		local UICorner23 = Instance.new("UICorner")
		UICorner23.CornerRadius = UDim.new(1, 0)
		UICorner23.Parent = particle004
		local particle005 = Instance.new("Frame")
		particle005.AnchorPoint = Vector2.new(0.5, 0.5)
		particle005.Name = "fyflhkjfcbod"
		particle005.BackgroundTransparency = 0.49283094006796563
		particle005.Size = UDim2.fromOffset(4, 4)
		particle005.ZIndex = 3
		particle005.BorderSizePixel = 0
		particle005.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle005.Parent = particleLayer
		local UICorner24 = Instance.new("UICorner")
		UICorner24.CornerRadius = UDim.new(1, 0)
		UICorner24.Parent = particle005
		local particle006 = Instance.new("Frame")
		particle006.AnchorPoint = Vector2.new(0.5, 0.5)
		particle006.Name = "mljpphkqsiih"
		particle006.BackgroundTransparency = 0.24709003471389196
		particle006.Size = UDim2.fromOffset(3, 3)
		particle006.ZIndex = 3
		particle006.BorderSizePixel = 0
		particle006.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle006.Parent = particleLayer
		local UICorner25 = Instance.new("UICorner")
		UICorner25.CornerRadius = UDim.new(1, 0)
		UICorner25.Parent = particle006
		local particle007 = Instance.new("Frame")
		particle007.AnchorPoint = Vector2.new(0.5, 0.5)
		particle007.Name = "krkvwgyssjzf"
		particle007.BackgroundTransparency = 0.23317017261351103
		particle007.Size = UDim2.fromOffset(2, 2)
		particle007.ZIndex = 3
		particle007.BorderSizePixel = 0
		particle007.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle007.Parent = particleLayer
		local UICorner26 = Instance.new("UICorner")
		UICorner26.CornerRadius = UDim.new(1, 0)
		UICorner26.Parent = particle007
		local particle008 = Instance.new("Frame")
		particle008.AnchorPoint = Vector2.new(0.5, 0.5)
		particle008.Name = "jxdzerxokvsj"
		particle008.BackgroundTransparency = 0.3335473593802088
		particle008.Size = UDim2.fromOffset(4, 4)
		particle008.ZIndex = 3
		particle008.BorderSizePixel = 0
		particle008.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle008.Parent = particleLayer
		local UICorner27 = Instance.new("UICorner")
		UICorner27.CornerRadius = UDim.new(1, 0)
		UICorner27.Parent = particle008
		local particle009 = Instance.new("Frame")
		particle009.AnchorPoint = Vector2.new(0.5, 0.5)
		particle009.Name = "bjfppisprkel"
		particle009.BackgroundTransparency = 0.46835670805038176
		particle009.Size = UDim2.fromOffset(2, 2)
		particle009.ZIndex = 3
		particle009.BorderSizePixel = 0
		particle009.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle009.Parent = particleLayer
		local UICorner28 = Instance.new("UICorner")
		UICorner28.CornerRadius = UDim.new(1, 0)
		UICorner28.Parent = particle009
		local particle010 = Instance.new("Frame")
		particle010.AnchorPoint = Vector2.new(0.5, 0.5)
		particle010.Name = "adjsfzdjibmu"
		particle010.BackgroundTransparency = 0.30666728828779133
		particle010.Size = UDim2.fromOffset(4, 4)
		particle010.ZIndex = 3
		particle010.BorderSizePixel = 0
		particle010.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle010.Parent = particleLayer
		local UICorner29 = Instance.new("UICorner")
		UICorner29.CornerRadius = UDim.new(1, 0)
		UICorner29.Parent = particle010
		local particle011 = Instance.new("Frame")
		particle011.AnchorPoint = Vector2.new(0.5, 0.5)
		particle011.Name = "brbvjmzleqoq"
		particle011.BackgroundTransparency = 0.46736541303576079
		particle011.Size = UDim2.fromOffset(4, 4)
		particle011.ZIndex = 3
		particle011.BorderSizePixel = 0
		particle011.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle011.Parent = particleLayer
		local UICorner30 = Instance.new("UICorner")
		UICorner30.CornerRadius = UDim.new(1, 0)
		UICorner30.Parent = particle011
		local particle012 = Instance.new("Frame")
		particle012.AnchorPoint = Vector2.new(0.5, 0.5)
		particle012.Name = "igrujlaqtdnc"
		particle012.BackgroundTransparency = 0.39209921613082588
		particle012.Size = UDim2.fromOffset(3, 3)
		particle012.ZIndex = 3
		particle012.BorderSizePixel = 0
		particle012.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle012.Parent = particleLayer
		local UICorner31 = Instance.new("UICorner")
		UICorner31.CornerRadius = UDim.new(1, 0)
		UICorner31.Parent = particle012
		local particle013 = Instance.new("Frame")
		particle013.AnchorPoint = Vector2.new(0.5, 0.5)
		particle013.Name = "kduvrbrxxgli"
		particle013.BackgroundTransparency = 0.27361775782840814
		particle013.Size = UDim2.fromOffset(4, 4)
		particle013.ZIndex = 3
		particle013.BorderSizePixel = 0
		particle013.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle013.Parent = particleLayer
		local UICorner32 = Instance.new("UICorner")
		UICorner32.CornerRadius = UDim.new(1, 0)
		UICorner32.Parent = particle013
		local particle014 = Instance.new("Frame")
		particle014.AnchorPoint = Vector2.new(0.5, 0.5)
		particle014.Name = "kkjjbozvqtqu"
		particle014.BackgroundTransparency = 0.49281048920711196
		particle014.Size = UDim2.fromOffset(4, 4)
		particle014.ZIndex = 3
		particle014.BorderSizePixel = 0
		particle014.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle014.Parent = particleLayer
		local UICorner33 = Instance.new("UICorner")
		UICorner33.CornerRadius = UDim.new(1, 0)
		UICorner33.Parent = particle014
		local particle015 = Instance.new("Frame")
		particle015.AnchorPoint = Vector2.new(0.5, 0.5)
		particle015.BackgroundTransparency = 1
		particle015.Name = "lkyydnmsqduw"
		particle015.Visible = false
		particle015.Size = UDim2.fromOffset(0, 1)
		particle015.ZIndex = 2
		particle015.BorderSizePixel = 0
		particle015.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle015.Parent = particleLayer
		local particle016 = Instance.new("Frame")
		particle016.AnchorPoint = Vector2.new(0.5, 0.5)
		particle016.BackgroundTransparency = 1
		particle016.Name = "qhojgveaccod"
		particle016.Visible = false
		particle016.Size = UDim2.fromOffset(0, 1)
		particle016.ZIndex = 2
		particle016.BorderSizePixel = 0
		particle016.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle016.Parent = particleLayer
		local particle017 = Instance.new("Frame")
		particle017.AnchorPoint = Vector2.new(0.5, 0.5)
		particle017.BackgroundTransparency = 1
		particle017.Name = "peqymhhhuzpt"
		particle017.Visible = false
		particle017.Size = UDim2.fromOffset(0, 1)
		particle017.ZIndex = 2
		particle017.BorderSizePixel = 0
		particle017.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle017.Parent = particleLayer
		local particle018 = Instance.new("Frame")
		particle018.AnchorPoint = Vector2.new(0.5, 0.5)
		particle018.BackgroundTransparency = 1
		particle018.Name = "ypfirrrwrkzr"
		particle018.Visible = false
		particle018.Size = UDim2.fromOffset(0, 1)
		particle018.ZIndex = 2
		particle018.BorderSizePixel = 0
		particle018.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle018.Parent = particleLayer
		local particle019 = Instance.new("Frame")
		particle019.AnchorPoint = Vector2.new(0.5, 0.5)
		particle019.BackgroundTransparency = 1
		particle019.Name = "hrlqzjxctsol"
		particle019.Visible = false
		particle019.Size = UDim2.fromOffset(0, 1)
		particle019.ZIndex = 2
		particle019.BorderSizePixel = 0
		particle019.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle019.Parent = particleLayer
		local particle020 = Instance.new("Frame")
		particle020.AnchorPoint = Vector2.new(0.5, 0.5)
		particle020.BackgroundTransparency = 1
		particle020.Name = "lgsmmjpiakov"
		particle020.Visible = false
		particle020.Size = UDim2.fromOffset(0, 1)
		particle020.ZIndex = 2
		particle020.BorderSizePixel = 0
		particle020.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle020.Parent = particleLayer
		local particle021 = Instance.new("Frame")
		particle021.AnchorPoint = Vector2.new(0.5, 0.5)
		particle021.BackgroundTransparency = 1
		particle021.Name = "hohdlrsohxxh"
		particle021.Visible = false
		particle021.Size = UDim2.fromOffset(0, 1)
		particle021.ZIndex = 2
		particle021.BorderSizePixel = 0
		particle021.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle021.Parent = particleLayer
		local particle022 = Instance.new("Frame")
		particle022.AnchorPoint = Vector2.new(0.5, 0.5)
		particle022.BackgroundTransparency = 1
		particle022.Name = "pgpdsbdxxwrj"
		particle022.Visible = false
		particle022.Size = UDim2.fromOffset(0, 1)
		particle022.ZIndex = 2
		particle022.BorderSizePixel = 0
		particle022.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle022.Parent = particleLayer
		local particle023 = Instance.new("Frame")
		particle023.AnchorPoint = Vector2.new(0.5, 0.5)
		particle023.BackgroundTransparency = 1
		particle023.Name = "frbijdugcwfe"
		particle023.Visible = false
		particle023.Size = UDim2.fromOffset(0, 1)
		particle023.ZIndex = 2
		particle023.BorderSizePixel = 0
		particle023.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle023.Parent = particleLayer
		local particle024 = Instance.new("Frame")
		particle024.AnchorPoint = Vector2.new(0.5, 0.5)
		particle024.BackgroundTransparency = 1
		particle024.Name = "pcoiqsdrntnr"
		particle024.Visible = false
		particle024.Size = UDim2.fromOffset(0, 1)
		particle024.ZIndex = 2
		particle024.BorderSizePixel = 0
		particle024.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle024.Parent = particleLayer
		local particle025 = Instance.new("Frame")
		particle025.AnchorPoint = Vector2.new(0.5, 0.5)
		particle025.BackgroundTransparency = 1
		particle025.Name = "yhhmgylgwnaj"
		particle025.Visible = false
		particle025.Size = UDim2.fromOffset(0, 1)
		particle025.ZIndex = 2
		particle025.BorderSizePixel = 0
		particle025.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle025.Parent = particleLayer
		local particle026 = Instance.new("Frame")
		particle026.AnchorPoint = Vector2.new(0.5, 0.5)
		particle026.BackgroundTransparency = 1
		particle026.Name = "evgapsopiqdq"
		particle026.Visible = false
		particle026.Size = UDim2.fromOffset(0, 1)
		particle026.ZIndex = 2
		particle026.BorderSizePixel = 0
		particle026.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle026.Parent = particleLayer
		local particle027 = Instance.new("Frame")
		particle027.AnchorPoint = Vector2.new(0.5, 0.5)
		particle027.BackgroundTransparency = 1
		particle027.Name = "olguqwnkqmay"
		particle027.Visible = false
		particle027.Size = UDim2.fromOffset(0, 1)
		particle027.ZIndex = 2
		particle027.BorderSizePixel = 0
		particle027.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle027.Parent = particleLayer
		local particle028 = Instance.new("Frame")
		particle028.AnchorPoint = Vector2.new(0.5, 0.5)
		particle028.BackgroundTransparency = 1
		particle028.Name = "bpsemxjvsbps"
		particle028.Visible = false
		particle028.Size = UDim2.fromOffset(0, 1)
		particle028.ZIndex = 2
		particle028.BorderSizePixel = 0
		particle028.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle028.Parent = particleLayer
		local particle029 = Instance.new("Frame")
		particle029.AnchorPoint = Vector2.new(0.5, 0.5)
		particle029.BackgroundTransparency = 1
		particle029.Name = "wecwalglvgue"
		particle029.Visible = false
		particle029.Size = UDim2.fromOffset(0, 1)
		particle029.ZIndex = 2
		particle029.BorderSizePixel = 0
		particle029.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle029.Parent = particleLayer
		local particle030 = Instance.new("Frame")
		particle030.AnchorPoint = Vector2.new(0.5, 0.5)
		particle030.BackgroundTransparency = 1
		particle030.Name = "zsvnuggtltbv"
		particle030.Visible = false
		particle030.Size = UDim2.fromOffset(0, 1)
		particle030.ZIndex = 2
		particle030.BorderSizePixel = 0
		particle030.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle030.Parent = particleLayer
		local particle031 = Instance.new("Frame")
		particle031.AnchorPoint = Vector2.new(0.5, 0.5)
		particle031.BackgroundTransparency = 1
		particle031.Name = "shjzhwtkfykx"
		particle031.Visible = false
		particle031.Size = UDim2.fromOffset(0, 1)
		particle031.ZIndex = 2
		particle031.BorderSizePixel = 0
		particle031.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle031.Parent = particleLayer
		local particle032 = Instance.new("Frame")
		particle032.AnchorPoint = Vector2.new(0.5, 0.5)
		particle032.BackgroundTransparency = 1
		particle032.Name = "oxxbocwgdtgj"
		particle032.Visible = false
		particle032.Size = UDim2.fromOffset(0, 1)
		particle032.ZIndex = 2
		particle032.BorderSizePixel = 0
		particle032.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle032.Parent = particleLayer
		local particle033 = Instance.new("Frame")
		particle033.AnchorPoint = Vector2.new(0.5, 0.5)
		particle033.BackgroundTransparency = 1
		particle033.Name = "ocpavmpmmdoe"
		particle033.Visible = false
		particle033.Size = UDim2.fromOffset(0, 1)
		particle033.ZIndex = 2
		particle033.BorderSizePixel = 0
		particle033.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle033.Parent = particleLayer
		local particle034 = Instance.new("Frame")
		particle034.AnchorPoint = Vector2.new(0.5, 0.5)
		particle034.BackgroundTransparency = 1
		particle034.Name = "jbutwrvimlps"
		particle034.Visible = false
		particle034.Size = UDim2.fromOffset(0, 1)
		particle034.ZIndex = 2
		particle034.BorderSizePixel = 0
		particle034.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle034.Parent = particleLayer
		local particle035 = Instance.new("Frame")
		particle035.AnchorPoint = Vector2.new(0.5, 0.5)
		particle035.BackgroundTransparency = 1
		particle035.Name = "rsmtbziggoxn"
		particle035.Visible = false
		particle035.Size = UDim2.fromOffset(0, 1)
		particle035.ZIndex = 2
		particle035.BorderSizePixel = 0
		particle035.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle035.Parent = particleLayer
		local particle036 = Instance.new("Frame")
		particle036.AnchorPoint = Vector2.new(0.5, 0.5)
		particle036.BackgroundTransparency = 1
		particle036.Name = "mduqkryfwhwf"
		particle036.Visible = false
		particle036.Size = UDim2.fromOffset(0, 1)
		particle036.ZIndex = 2
		particle036.BorderSizePixel = 0
		particle036.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle036.Parent = particleLayer
		local particle037 = Instance.new("Frame")
		particle037.AnchorPoint = Vector2.new(0.5, 0.5)
		particle037.BackgroundTransparency = 1
		particle037.Name = "yagenptjwxor"
		particle037.Visible = false
		particle037.Size = UDim2.fromOffset(0, 1)
		particle037.ZIndex = 2
		particle037.BorderSizePixel = 0
		particle037.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle037.Parent = particleLayer
		local particle038 = Instance.new("Frame")
		particle038.AnchorPoint = Vector2.new(0.5, 0.5)
		particle038.BackgroundTransparency = 1
		particle038.Name = "qkngjzathjtb"
		particle038.Visible = false
		particle038.Size = UDim2.fromOffset(0, 1)
		particle038.ZIndex = 2
		particle038.BorderSizePixel = 0
		particle038.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle038.Parent = particleLayer
		local particle039 = Instance.new("Frame")
		particle039.AnchorPoint = Vector2.new(0.5, 0.5)
		particle039.BackgroundTransparency = 1
		particle039.Name = "ycywlfewknpf"
		particle039.Visible = false
		particle039.Size = UDim2.fromOffset(0, 1)
		particle039.ZIndex = 2
		particle039.BorderSizePixel = 0
		particle039.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle039.Parent = particleLayer
		local particle040 = Instance.new("Frame")
		particle040.AnchorPoint = Vector2.new(0.5, 0.5)
		particle040.BackgroundTransparency = 1
		particle040.Name = "tnzqulxktsov"
		particle040.Visible = false
		particle040.Size = UDim2.fromOffset(0, 1)
		particle040.ZIndex = 2
		particle040.BorderSizePixel = 0
		particle040.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle040.Parent = particleLayer
		local particle041 = Instance.new("Frame")
		particle041.AnchorPoint = Vector2.new(0.5, 0.5)
		particle041.BackgroundTransparency = 1
		particle041.Name = "pluunnolgkyn"
		particle041.Visible = false
		particle041.Size = UDim2.fromOffset(0, 1)
		particle041.ZIndex = 2
		particle041.BorderSizePixel = 0
		particle041.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle041.Parent = particleLayer
		local particle042 = Instance.new("Frame")
		particle042.AnchorPoint = Vector2.new(0.5, 0.5)
		particle042.BackgroundTransparency = 1
		particle042.Name = "eghjijqgqkfx"
		particle042.Visible = false
		particle042.Size = UDim2.fromOffset(0, 1)
		particle042.ZIndex = 2
		particle042.BorderSizePixel = 0
		particle042.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle042.Parent = particleLayer
		local particle043 = Instance.new("Frame")
		particle043.AnchorPoint = Vector2.new(0.5, 0.5)
		particle043.BackgroundTransparency = 1
		particle043.Name = "zunooorqdyip"
		particle043.Visible = false
		particle043.Size = UDim2.fromOffset(0, 1)
		particle043.ZIndex = 2
		particle043.BorderSizePixel = 0
		particle043.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle043.Parent = particleLayer
		local particle044 = Instance.new("Frame")
		particle044.AnchorPoint = Vector2.new(0.5, 0.5)
		particle044.BackgroundTransparency = 1
		particle044.Name = "fxurtexmrlip"
		particle044.Visible = false
		particle044.Size = UDim2.fromOffset(0, 1)
		particle044.ZIndex = 2
		particle044.BorderSizePixel = 0
		particle044.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle044.Parent = particleLayer
		local particle045 = Instance.new("Frame")
		particle045.AnchorPoint = Vector2.new(0.5, 0.5)
		particle045.BackgroundTransparency = 1
		particle045.Name = "gphzohbxstzi"
		particle045.Visible = false
		particle045.Size = UDim2.fromOffset(0, 1)
		particle045.ZIndex = 2
		particle045.BorderSizePixel = 0
		particle045.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle045.Parent = particleLayer
		local particle046 = Instance.new("Frame")
		particle046.AnchorPoint = Vector2.new(0.5, 0.5)
		particle046.BackgroundTransparency = 1
		particle046.Name = "ibxxthzsdljj"
		particle046.Visible = false
		particle046.Size = UDim2.fromOffset(0, 1)
		particle046.ZIndex = 2
		particle046.BorderSizePixel = 0
		particle046.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle046.Parent = particleLayer
		local particle047 = Instance.new("Frame")
		particle047.AnchorPoint = Vector2.new(0.5, 0.5)
		particle047.BackgroundTransparency = 1
		particle047.Name = "uvecnulwkkhh"
		particle047.Visible = false
		particle047.Size = UDim2.fromOffset(0, 1)
		particle047.ZIndex = 2
		particle047.BorderSizePixel = 0
		particle047.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle047.Parent = particleLayer
		local particle048 = Instance.new("Frame")
		particle048.AnchorPoint = Vector2.new(0.5, 0.5)
		particle048.BackgroundTransparency = 1
		particle048.Name = "whkqjditglsd"
		particle048.Visible = false
		particle048.Size = UDim2.fromOffset(0, 1)
		particle048.ZIndex = 2
		particle048.BorderSizePixel = 0
		particle048.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle048.Parent = particleLayer
		local particle049 = Instance.new("Frame")
		particle049.AnchorPoint = Vector2.new(0.5, 0.5)
		particle049.BackgroundTransparency = 1
		particle049.Name = "odjedstqxjjv"
		particle049.Visible = false
		particle049.Size = UDim2.fromOffset(0, 1)
		particle049.ZIndex = 2
		particle049.BorderSizePixel = 0
		particle049.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle049.Parent = particleLayer
		local particle050 = Instance.new("Frame")
		particle050.AnchorPoint = Vector2.new(0.5, 0.5)
		particle050.BackgroundTransparency = 1
		particle050.Name = "qaqzgthboydx"
		particle050.Visible = false
		particle050.Size = UDim2.fromOffset(0, 1)
		particle050.ZIndex = 2
		particle050.BorderSizePixel = 0
		particle050.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle050.Parent = particleLayer
		local particle051 = Instance.new("Frame")
		particle051.AnchorPoint = Vector2.new(0.5, 0.5)
		particle051.BackgroundTransparency = 1
		particle051.Name = "sxyiffruhaav"
		particle051.Visible = false
		particle051.Size = UDim2.fromOffset(0, 1)
		particle051.ZIndex = 2
		particle051.BorderSizePixel = 0
		particle051.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle051.Parent = particleLayer
		local particle052 = Instance.new("Frame")
		particle052.AnchorPoint = Vector2.new(0.5, 0.5)
		particle052.BackgroundTransparency = 1
		particle052.Name = "zauzfnegrgly"
		particle052.Visible = false
		particle052.Size = UDim2.fromOffset(0, 1)
		particle052.ZIndex = 2
		particle052.BorderSizePixel = 0
		particle052.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle052.Parent = particleLayer
		local particle053 = Instance.new("Frame")
		particle053.AnchorPoint = Vector2.new(0.5, 0.5)
		particle053.BackgroundTransparency = 1
		particle053.Name = "kbcjsjdeymxy"
		particle053.Visible = false
		particle053.Size = UDim2.fromOffset(0, 1)
		particle053.ZIndex = 2
		particle053.BorderSizePixel = 0
		particle053.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle053.Parent = particleLayer
		local particle054 = Instance.new("Frame")
		particle054.AnchorPoint = Vector2.new(0.5, 0.5)
		particle054.BackgroundTransparency = 1
		particle054.Name = "haqqfpdujqnp"
		particle054.Visible = false
		particle054.Size = UDim2.fromOffset(0, 1)
		particle054.ZIndex = 2
		particle054.BorderSizePixel = 0
		particle054.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle054.Parent = particleLayer
		local particle055 = Instance.new("Frame")
		particle055.AnchorPoint = Vector2.new(0.5, 0.5)
		particle055.BackgroundTransparency = 1
		particle055.Name = "yobhzbwtsiif"
		particle055.Visible = false
		particle055.Size = UDim2.fromOffset(0, 1)
		particle055.ZIndex = 2
		particle055.BorderSizePixel = 0
		particle055.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle055.Parent = particleLayer
		local particle056 = Instance.new("Frame")
		particle056.AnchorPoint = Vector2.new(0.5, 0.5)
		particle056.BackgroundTransparency = 1
		particle056.Name = "dqrurglncrqf"
		particle056.Visible = false
		particle056.Size = UDim2.fromOffset(0, 1)
		particle056.ZIndex = 2
		particle056.BorderSizePixel = 0
		particle056.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle056.Parent = particleLayer
		local particle057 = Instance.new("Frame")
		particle057.AnchorPoint = Vector2.new(0.5, 0.5)
		particle057.BackgroundTransparency = 1
		particle057.Name = "pupqimregirf"
		particle057.Visible = false
		particle057.Size = UDim2.fromOffset(0, 1)
		particle057.ZIndex = 2
		particle057.BorderSizePixel = 0
		particle057.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle057.Parent = particleLayer
		local particle058 = Instance.new("Frame")
		particle058.AnchorPoint = Vector2.new(0.5, 0.5)
		particle058.BackgroundTransparency = 1
		particle058.Name = "otmqexdciwlo"
		particle058.Visible = false
		particle058.Size = UDim2.fromOffset(0, 1)
		particle058.ZIndex = 2
		particle058.BorderSizePixel = 0
		particle058.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle058.Parent = particleLayer
		local particle059 = Instance.new("Frame")
		particle059.AnchorPoint = Vector2.new(0.5, 0.5)
		particle059.BackgroundTransparency = 1
		particle059.Name = "mpczbhjqrxko"
		particle059.Visible = false
		particle059.Size = UDim2.fromOffset(0, 1)
		particle059.ZIndex = 2
		particle059.BorderSizePixel = 0
		particle059.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle059.Parent = particleLayer
		local particle060 = Instance.new("Frame")
		particle060.AnchorPoint = Vector2.new(0.5, 0.5)
		particle060.BackgroundTransparency = 1
		particle060.Name = "jqiykpnruoig"
		particle060.Visible = false
		particle060.Size = UDim2.fromOffset(0, 1)
		particle060.ZIndex = 2
		particle060.BorderSizePixel = 0
		particle060.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle060.Parent = particleLayer
		local particle061 = Instance.new("Frame")
		particle061.AnchorPoint = Vector2.new(0.5, 0.5)
		particle061.BackgroundTransparency = 1
		particle061.Name = "oevwosflsqsi"
		particle061.Visible = false
		particle061.Size = UDim2.fromOffset(0, 1)
		particle061.ZIndex = 2
		particle061.BorderSizePixel = 0
		particle061.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle061.Parent = particleLayer
		local particle062 = Instance.new("Frame")
		particle062.AnchorPoint = Vector2.new(0.5, 0.5)
		particle062.BackgroundTransparency = 1
		particle062.Name = "qgrgsmdcqpin"
		particle062.Visible = false
		particle062.Size = UDim2.fromOffset(0, 1)
		particle062.ZIndex = 2
		particle062.BorderSizePixel = 0
		particle062.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle062.Parent = particleLayer
		local particle063 = Instance.new("Frame")
		particle063.AnchorPoint = Vector2.new(0.5, 0.5)
		particle063.BackgroundTransparency = 1
		particle063.Name = "txgkqedrrlsy"
		particle063.Visible = false
		particle063.Size = UDim2.fromOffset(0, 1)
		particle063.ZIndex = 2
		particle063.BorderSizePixel = 0
		particle063.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle063.Parent = particleLayer
		local particle064 = Instance.new("Frame")
		particle064.AnchorPoint = Vector2.new(0.5, 0.5)
		particle064.BackgroundTransparency = 1
		particle064.Name = "plglylityron"
		particle064.Visible = false
		particle064.Size = UDim2.fromOffset(0, 1)
		particle064.ZIndex = 2
		particle064.BorderSizePixel = 0
		particle064.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle064.Parent = particleLayer
		local particle065 = Instance.new("Frame")
		particle065.AnchorPoint = Vector2.new(0.5, 0.5)
		particle065.BackgroundTransparency = 1
		particle065.Name = "kdfrfjgazkdb"
		particle065.Visible = false
		particle065.Size = UDim2.fromOffset(0, 1)
		particle065.ZIndex = 2
		particle065.BorderSizePixel = 0
		particle065.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle065.Parent = particleLayer
		local particle066 = Instance.new("Frame")
		particle066.AnchorPoint = Vector2.new(0.5, 0.5)
		particle066.BackgroundTransparency = 1
		particle066.Name = "wiocaeobedrc"
		particle066.Visible = false
		particle066.Size = UDim2.fromOffset(0, 1)
		particle066.ZIndex = 2
		particle066.BorderSizePixel = 0
		particle066.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle066.Parent = particleLayer
		local particle067 = Instance.new("Frame")
		particle067.AnchorPoint = Vector2.new(0.5, 0.5)
		particle067.BackgroundTransparency = 1
		particle067.Name = "efiedtgoujdj"
		particle067.Visible = false
		particle067.Size = UDim2.fromOffset(0, 1)
		particle067.ZIndex = 2
		particle067.BorderSizePixel = 0
		particle067.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle067.Parent = particleLayer
		local particle068 = Instance.new("Frame")
		particle068.AnchorPoint = Vector2.new(0.5, 0.5)
		particle068.BackgroundTransparency = 1
		particle068.Name = "nyqqltwtpjfa"
		particle068.Visible = false
		particle068.Size = UDim2.fromOffset(0, 1)
		particle068.ZIndex = 2
		particle068.BorderSizePixel = 0
		particle068.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle068.Parent = particleLayer
		local particle069 = Instance.new("Frame")
		particle069.AnchorPoint = Vector2.new(0.5, 0.5)
		particle069.BackgroundTransparency = 1
		particle069.Name = "lijsxtepshkx"
		particle069.Visible = false
		particle069.Size = UDim2.fromOffset(0, 1)
		particle069.ZIndex = 2
		particle069.BorderSizePixel = 0
		particle069.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle069.Parent = particleLayer
		local particle070 = Instance.new("Frame")
		particle070.AnchorPoint = Vector2.new(0.5, 0.5)
		particle070.BackgroundTransparency = 1
		particle070.Name = "gnygbjtaleva"
		particle070.Visible = false
		particle070.Size = UDim2.fromOffset(0, 1)
		particle070.ZIndex = 2
		particle070.BorderSizePixel = 0
		particle070.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle070.Parent = particleLayer
		local particle071 = Instance.new("Frame")
		particle071.AnchorPoint = Vector2.new(0.5, 0.5)
		particle071.BackgroundTransparency = 1
		particle071.Name = "vobbkndcghit"
		particle071.Visible = false
		particle071.Size = UDim2.fromOffset(0, 1)
		particle071.ZIndex = 2
		particle071.BorderSizePixel = 0
		particle071.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle071.Parent = particleLayer
		local particle072 = Instance.new("Frame")
		particle072.AnchorPoint = Vector2.new(0.5, 0.5)
		particle072.BackgroundTransparency = 1
		particle072.Name = "snprdhtviadx"
		particle072.Visible = false
		particle072.Size = UDim2.fromOffset(0, 1)
		particle072.ZIndex = 2
		particle072.BorderSizePixel = 0
		particle072.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle072.Parent = particleLayer
		local particle073 = Instance.new("Frame")
		particle073.AnchorPoint = Vector2.new(0.5, 0.5)
		particle073.BackgroundTransparency = 1
		particle073.Name = "irfjwmxeibak"
		particle073.Visible = false
		particle073.Size = UDim2.fromOffset(0, 1)
		particle073.ZIndex = 2
		particle073.BorderSizePixel = 0
		particle073.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle073.Parent = particleLayer
		local particle074 = Instance.new("Frame")
		particle074.AnchorPoint = Vector2.new(0.5, 0.5)
		particle074.BackgroundTransparency = 1
		particle074.Name = "tdbgxxmntbju"
		particle074.Visible = false
		particle074.Size = UDim2.fromOffset(0, 1)
		particle074.ZIndex = 2
		particle074.BorderSizePixel = 0
		particle074.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle074.Parent = particleLayer
		local particle075 = Instance.new("Frame")
		particle075.AnchorPoint = Vector2.new(0.5, 0.5)
		particle075.BackgroundTransparency = 1
		particle075.Name = "rajjpjonwcyk"
		particle075.Visible = false
		particle075.Size = UDim2.fromOffset(0, 1)
		particle075.ZIndex = 2
		particle075.BorderSizePixel = 0
		particle075.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle075.Parent = particleLayer
		local particle076 = Instance.new("Frame")
		particle076.AnchorPoint = Vector2.new(0.5, 0.5)
		particle076.BackgroundTransparency = 1
		particle076.Name = "wcwpjzzuxrze"
		particle076.Visible = false
		particle076.Size = UDim2.fromOffset(0, 1)
		particle076.ZIndex = 2
		particle076.BorderSizePixel = 0
		particle076.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle076.Parent = particleLayer
		local particle077 = Instance.new("Frame")
		particle077.AnchorPoint = Vector2.new(0.5, 0.5)
		particle077.BackgroundTransparency = 1
		particle077.Name = "wzgbgjomrwqg"
		particle077.Visible = false
		particle077.Size = UDim2.fromOffset(0, 1)
		particle077.ZIndex = 2
		particle077.BorderSizePixel = 0
		particle077.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle077.Parent = particleLayer
		local particle078 = Instance.new("Frame")
		particle078.AnchorPoint = Vector2.new(0.5, 0.5)
		particle078.BackgroundTransparency = 1
		particle078.Name = "hxmzbtsarnvt"
		particle078.Visible = false
		particle078.Size = UDim2.fromOffset(0, 1)
		particle078.ZIndex = 2
		particle078.BorderSizePixel = 0
		particle078.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle078.Parent = particleLayer
		local particle079 = Instance.new("Frame")
		particle079.AnchorPoint = Vector2.new(0.5, 0.5)
		particle079.BackgroundTransparency = 1
		particle079.Name = "itbbtsyabxoc"
		particle079.Visible = false
		particle079.Size = UDim2.fromOffset(0, 1)
		particle079.ZIndex = 2
		particle079.BorderSizePixel = 0
		particle079.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle079.Parent = particleLayer
		local particle080 = Instance.new("Frame")
		particle080.AnchorPoint = Vector2.new(0.5, 0.5)
		particle080.BackgroundTransparency = 1
		particle080.Name = "fnhiznchcthb"
		particle080.Visible = false
		particle080.Size = UDim2.fromOffset(0, 1)
		particle080.ZIndex = 2
		particle080.BorderSizePixel = 0
		particle080.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle080.Parent = particleLayer
		local particle081 = Instance.new("Frame")
		particle081.AnchorPoint = Vector2.new(0.5, 0.5)
		particle081.BackgroundTransparency = 1
		particle081.Name = "jxdsomigacll"
		particle081.Visible = false
		particle081.Size = UDim2.fromOffset(0, 1)
		particle081.ZIndex = 2
		particle081.BorderSizePixel = 0
		particle081.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle081.Parent = particleLayer
		local particle082 = Instance.new("Frame")
		particle082.AnchorPoint = Vector2.new(0.5, 0.5)
		particle082.BackgroundTransparency = 1
		particle082.Name = "bvwjmmjwgqiz"
		particle082.Visible = false
		particle082.Size = UDim2.fromOffset(0, 1)
		particle082.ZIndex = 2
		particle082.BorderSizePixel = 0
		particle082.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle082.Parent = particleLayer
		local particle083 = Instance.new("Frame")
		particle083.AnchorPoint = Vector2.new(0.5, 0.5)
		particle083.BackgroundTransparency = 1
		particle083.Name = "ylaklrgirtic"
		particle083.Visible = false
		particle083.Size = UDim2.fromOffset(0, 1)
		particle083.ZIndex = 2
		particle083.BorderSizePixel = 0
		particle083.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle083.Parent = particleLayer
		local particle084 = Instance.new("Frame")
		particle084.AnchorPoint = Vector2.new(0.5, 0.5)
		particle084.BackgroundTransparency = 1
		particle084.Name = "uaennnqvyqxn"
		particle084.Visible = false
		particle084.Size = UDim2.fromOffset(0, 1)
		particle084.ZIndex = 2
		particle084.BorderSizePixel = 0
		particle084.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle084.Parent = particleLayer
		local particle085 = Instance.new("Frame")
		particle085.AnchorPoint = Vector2.new(0.5, 0.5)
		particle085.BackgroundTransparency = 1
		particle085.Name = "zjmtcpkfuskg"
		particle085.Visible = false
		particle085.Size = UDim2.fromOffset(0, 1)
		particle085.ZIndex = 2
		particle085.BorderSizePixel = 0
		particle085.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle085.Parent = particleLayer
		local particle086 = Instance.new("Frame")
		particle086.AnchorPoint = Vector2.new(0.5, 0.5)
		particle086.BackgroundTransparency = 1
		particle086.Name = "pfcnmpiyakbo"
		particle086.Visible = false
		particle086.Size = UDim2.fromOffset(0, 1)
		particle086.ZIndex = 2
		particle086.BorderSizePixel = 0
		particle086.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle086.Parent = particleLayer
		local particle087 = Instance.new("Frame")
		particle087.AnchorPoint = Vector2.new(0.5, 0.5)
		particle087.BackgroundTransparency = 1
		particle087.Name = "rxcoindunckm"
		particle087.Visible = false
		particle087.Size = UDim2.fromOffset(0, 1)
		particle087.ZIndex = 2
		particle087.BorderSizePixel = 0
		particle087.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle087.Parent = particleLayer
		local particle088 = Instance.new("Frame")
		particle088.AnchorPoint = Vector2.new(0.5, 0.5)
		particle088.BackgroundTransparency = 1
		particle088.Name = "kzfftqmvvchb"
		particle088.Visible = false
		particle088.Size = UDim2.fromOffset(0, 1)
		particle088.ZIndex = 2
		particle088.BorderSizePixel = 0
		particle088.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle088.Parent = particleLayer
		local particle089 = Instance.new("Frame")
		particle089.AnchorPoint = Vector2.new(0.5, 0.5)
		particle089.BackgroundTransparency = 1
		particle089.Name = "wndzuxvosuns"
		particle089.Visible = false
		particle089.Size = UDim2.fromOffset(0, 1)
		particle089.ZIndex = 2
		particle089.BorderSizePixel = 0
		particle089.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle089.Parent = particleLayer
		local particle090 = Instance.new("Frame")
		particle090.AnchorPoint = Vector2.new(0.5, 0.5)
		particle090.BackgroundTransparency = 1
		particle090.Name = "kegekbzagwzc"
		particle090.Visible = false
		particle090.Size = UDim2.fromOffset(0, 1)
		particle090.ZIndex = 2
		particle090.BorderSizePixel = 0
		particle090.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle090.Parent = particleLayer
		local particle091 = Instance.new("Frame")
		particle091.AnchorPoint = Vector2.new(0.5, 0.5)
		particle091.BackgroundTransparency = 1
		particle091.Name = "qfoxwirmgbum"
		particle091.Visible = false
		particle091.Size = UDim2.fromOffset(0, 1)
		particle091.ZIndex = 2
		particle091.BorderSizePixel = 0
		particle091.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle091.Parent = particleLayer
		local particle092 = Instance.new("Frame")
		particle092.AnchorPoint = Vector2.new(0.5, 0.5)
		particle092.BackgroundTransparency = 1
		particle092.Name = "exsuuzklcqxh"
		particle092.Visible = false
		particle092.Size = UDim2.fromOffset(0, 1)
		particle092.ZIndex = 2
		particle092.BorderSizePixel = 0
		particle092.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle092.Parent = particleLayer
		local particle093 = Instance.new("Frame")
		particle093.AnchorPoint = Vector2.new(0.5, 0.5)
		particle093.BackgroundTransparency = 1
		particle093.Name = "qlvtjpuzziqu"
		particle093.Visible = false
		particle093.Size = UDim2.fromOffset(0, 1)
		particle093.ZIndex = 2
		particle093.BorderSizePixel = 0
		particle093.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle093.Parent = particleLayer
		local particle094 = Instance.new("Frame")
		particle094.AnchorPoint = Vector2.new(0.5, 0.5)
		particle094.BackgroundTransparency = 1
		particle094.Name = "oofuzdooaipq"
		particle094.Visible = false
		particle094.Size = UDim2.fromOffset(0, 1)
		particle094.ZIndex = 2
		particle094.BorderSizePixel = 0
		particle094.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle094.Parent = particleLayer
		local particle095 = Instance.new("Frame")
		particle095.AnchorPoint = Vector2.new(0.5, 0.5)
		particle095.BackgroundTransparency = 1
		particle095.Name = "eajghvdibvgm"
		particle095.Visible = false
		particle095.Size = UDim2.fromOffset(0, 1)
		particle095.ZIndex = 2
		particle095.BorderSizePixel = 0
		particle095.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle095.Parent = particleLayer
		local particle096 = Instance.new("Frame")
		particle096.AnchorPoint = Vector2.new(0.5, 0.5)
		particle096.BackgroundTransparency = 1
		particle096.Name = "xgsbpyufskmm"
		particle096.Visible = false
		particle096.Size = UDim2.fromOffset(0, 1)
		particle096.ZIndex = 2
		particle096.BorderSizePixel = 0
		particle096.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle096.Parent = particleLayer
		local particle097 = Instance.new("Frame")
		particle097.AnchorPoint = Vector2.new(0.5, 0.5)
		particle097.BackgroundTransparency = 1
		particle097.Name = "rjozynesvzix"
		particle097.Visible = false
		particle097.Size = UDim2.fromOffset(0, 1)
		particle097.ZIndex = 2
		particle097.BorderSizePixel = 0
		particle097.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle097.Parent = particleLayer
		local particle098 = Instance.new("Frame")
		particle098.AnchorPoint = Vector2.new(0.5, 0.5)
		particle098.BackgroundTransparency = 1
		particle098.Name = "jvlrfhlodbjp"
		particle098.Visible = false
		particle098.Size = UDim2.fromOffset(0, 1)
		particle098.ZIndex = 2
		particle098.BorderSizePixel = 0
		particle098.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle098.Parent = particleLayer
		local particle099 = Instance.new("Frame")
		particle099.AnchorPoint = Vector2.new(0.5, 0.5)
		particle099.BackgroundTransparency = 1
		particle099.Name = "wspkafjjslyj"
		particle099.Visible = false
		particle099.Size = UDim2.fromOffset(0, 1)
		particle099.ZIndex = 2
		particle099.BorderSizePixel = 0
		particle099.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle099.Parent = particleLayer
		local particle100 = Instance.new("Frame")
		particle100.AnchorPoint = Vector2.new(0.5, 0.5)
		particle100.BackgroundTransparency = 1
		particle100.Name = "nboeyzkaxkot"
		particle100.Visible = false
		particle100.Size = UDim2.fromOffset(0, 1)
		particle100.ZIndex = 2
		particle100.BorderSizePixel = 0
		particle100.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle100.Parent = particleLayer
		local particle101 = Instance.new("Frame")
		particle101.AnchorPoint = Vector2.new(0.5, 0.5)
		particle101.BackgroundTransparency = 1
		particle101.Name = "qvbtyurandnv"
		particle101.Visible = false
		particle101.Size = UDim2.fromOffset(0, 1)
		particle101.ZIndex = 2
		particle101.BorderSizePixel = 0
		particle101.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle101.Parent = particleLayer
		local particle102 = Instance.new("Frame")
		particle102.AnchorPoint = Vector2.new(0.5, 0.5)
		particle102.BackgroundTransparency = 1
		particle102.Name = "eieneshbdaka"
		particle102.Visible = false
		particle102.Size = UDim2.fromOffset(0, 1)
		particle102.ZIndex = 2
		particle102.BorderSizePixel = 0
		particle102.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle102.Parent = particleLayer
		local particle103 = Instance.new("Frame")
		particle103.AnchorPoint = Vector2.new(0.5, 0.5)
		particle103.BackgroundTransparency = 1
		particle103.Name = "dujpdppsrqsl"
		particle103.Visible = false
		particle103.Size = UDim2.fromOffset(0, 1)
		particle103.ZIndex = 2
		particle103.BorderSizePixel = 0
		particle103.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle103.Parent = particleLayer
		local particle104 = Instance.new("Frame")
		particle104.AnchorPoint = Vector2.new(0.5, 0.5)
		particle104.BackgroundTransparency = 1
		particle104.Name = "dkpdpvvatxdz"
		particle104.Visible = false
		particle104.Size = UDim2.fromOffset(0, 1)
		particle104.ZIndex = 2
		particle104.BorderSizePixel = 0
		particle104.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle104.Parent = particleLayer
		local particle105 = Instance.new("Frame")
		particle105.AnchorPoint = Vector2.new(0.5, 0.5)
		particle105.BackgroundTransparency = 1
		particle105.Name = "ndezsvzbrscc"
		particle105.Visible = false
		particle105.Size = UDim2.fromOffset(0, 1)
		particle105.ZIndex = 2
		particle105.BorderSizePixel = 0
		particle105.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		particle105.Parent = particleLayer

		local renderSteppedConnection03 = RunService.RenderStepped:Connect(function(deltaTime4)
			-- particle layer ambient drift (no-op stub, safe to leave empty)
		end)

		local pagesContainer = Instance.new("Frame")
		pagesContainer.Name = "tgqycejwnbcl"
		pagesContainer.Position = UDim2.fromOffset(16, 16)
		pagesContainer.ZIndex = 4
		pagesContainer.BackgroundTransparency = 1
		pagesContainer.Size = UDim2.new(1, -32, 1, -32)
		pagesContainer.Parent = mainContent
		local sidebar = Instance.new("Frame")
		sidebar.Name = "ykntfjqqjbch"
		sidebar.ClipsDescendants = true
		sidebar.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
		sidebar.ZIndex = 5
		sidebar.BorderSizePixel = 0
		sidebar.Size = UDim2.new(0, windowOptions.side, 1, 0)
		sidebar.Parent = windowRoot
		local UICorner34 = Instance.new("UICorner")
		UICorner34.CornerRadius = UDim.new(0, windowOptions.radius)
		UICorner34.Parent = sidebar
		local sidebarCornerFill = Instance.new("Frame")
		sidebarCornerFill.AnchorPoint = Vector2.new(1, 0)
		sidebarCornerFill.Name = "zkrxupwuwuov"
		sidebarCornerFill.Position = UDim2.fromScale(1, 0)
		sidebarCornerFill.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
		sidebarCornerFill.ZIndex = 5
		sidebarCornerFill.BorderSizePixel = 0
		sidebarCornerFill.Size = UDim2.new(0, windowOptions.radius, 1, 0)
		sidebarCornerFill.Parent = sidebar
		local sidebarDivider = Instance.new("Frame")
		sidebarDivider.AnchorPoint = Vector2.new(0.5, 0.5)
		sidebarDivider.Name = "iorszdenetee"
		sidebarDivider.Position = UDim2.new(0, windowOptions.side, 0.5, 0)
		sidebarDivider.ZIndex = 8
		sidebarDivider.BackgroundTransparency = 1
		sidebarDivider.Size = UDim2.new(0, 16, 1, 0)
		sidebarDivider.Parent = windowRoot
		local sidebarDividerGlow = Instance.new("Frame")
		sidebarDividerGlow.Name = "ezgxcamxmuvp"
		sidebarDividerGlow.BackgroundTransparency = 0.9
		sidebarDividerGlow.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
		sidebarDividerGlow.ZIndex = 8
		sidebarDividerGlow.BorderSizePixel = 0
		sidebarDividerGlow.Size = UDim2.fromScale(1, 1)
		sidebarDividerGlow.Parent = sidebarDivider
		local UIGradient11 = Instance.new("UIGradient")
		UIGradient11.Rotation = 0
		UIGradient11.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.35), NumberSequenceKeypoint.new(1, 1) })
		UIGradient11.Parent = sidebarDividerGlow
		local sidebarDividerLine = Instance.new("Frame")
		sidebarDividerLine.AnchorPoint = Vector2.new(0.5, 0.5)
		sidebarDividerLine.Name = "mtbhcajlncye"
		sidebarDividerLine.Position = UDim2.fromScale(0.5, 0.5)
		sidebarDividerLine.BackgroundColor3 = Color3.fromRGB(52, 52, 64)
		sidebarDividerLine.ZIndex = 9
		sidebarDividerLine.BorderSizePixel = 0
		sidebarDividerLine.Size = UDim2.new(0, 1, 1, 0)
		sidebarDividerLine.Parent = sidebarDivider
		local UIGradient12 = Instance.new("UIGradient")
		UIGradient12.Rotation = 90
		UIGradient12.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.12, 0.25), NumberSequenceKeypoint.new(0.88, 0.25), NumberSequenceKeypoint.new(1, 1) })
		UIGradient12.Parent = sidebarDividerLine
		local logoImage = Instance.new("ImageLabel")
		logoImage.ImageColor3 = Color3.fromRGB(255, 255, 255)
		logoImage.ScaleType = Enum.ScaleType.Fit
		logoImage.AnchorPoint = Vector2.new(0.5, 0)
		logoImage.Image = windowOptions.logo
		logoImage.Name = "opilnlzwfufv"
		logoImage.Position = UDim2.new(0.5, 0, 0, 14)
		logoImage.BackgroundTransparency = 1
		logoImage.ZIndex = 7
		logoImage.BorderSizePixel = 0
		logoImage.Size = UDim2.fromOffset(117, 117)
		logoImage.Parent = sidebar
		local logoSeparator = Instance.new("Frame")
		logoSeparator.AnchorPoint = Vector2.new(0.5, 0)
		logoSeparator.BackgroundTransparency = 0.35
		logoSeparator.Name = "isfmyvbjrjoa"
		logoSeparator.Position = UDim2.new(0.5, 0, 0, 140)
		logoSeparator.BackgroundColor3 = Color3.fromRGB(52, 52, 64)
		logoSeparator.ZIndex = 7
		logoSeparator.BorderSizePixel = 0
		logoSeparator.Size = UDim2.new(1, -28, 0, 1)
		logoSeparator.Parent = sidebar
		local UIGradient13 = Instance.new("UIGradient")
		UIGradient13.Rotation = 0
		UIGradient13.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.2), NumberSequenceKeypoint.new(1, 1) })
		UIGradient13.Parent = logoSeparator
		local tabsList = Instance.new("ScrollingFrame")
		tabsList.Active = false
		tabsList.ScrollBarThickness = 0
		tabsList.BackgroundTransparency = 1
		tabsList.Name = "zhodovpqfcmx"
		tabsList.Position = UDim2.fromOffset(6, 154)
		tabsList.CanvasSize = UDim2.new()
		tabsList.ZIndex = 7
		tabsList.BorderSizePixel = 0
		tabsList.Size = UDim2.new(1, -12, 1, -222)
		tabsList.Parent = sidebar
		local UIListLayout6 = Instance.new("UIListLayout")
		UIListLayout6.Padding = UDim.new(0, 3)
		UIListLayout6.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout6.Parent = tabsList
		local tabsContentChanged = UIListLayout6:GetPropertyChangedSignal("AbsoluteContentSize")

		tabsContentChanged:Connect(function()
			tabsList.CanvasSize = UDim2.fromOffset(0, 2)
		end)

		local userSeparator = Instance.new("Frame")
		userSeparator.AnchorPoint = Vector2.new(0.5, 1)
		userSeparator.BackgroundTransparency = 0.35
		userSeparator.Name = "fimfouaeppoa"
		userSeparator.Position = UDim2.new(0.5, 0, 1, -60)
		userSeparator.BackgroundColor3 = Color3.fromRGB(52, 52, 64)
		userSeparator.ZIndex = 7
		userSeparator.BorderSizePixel = 0
		userSeparator.Size = UDim2.new(1, -28, 0, 1)
		userSeparator.Parent = sidebar
		local UIGradient14 = Instance.new("UIGradient")
		UIGradient14.Rotation = 0
		UIGradient14.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.2), NumberSequenceKeypoint.new(1, 1) })
		UIGradient14.Parent = userSeparator
		local userCard = Instance.new("Frame")
		userCard.AnchorPoint = Vector2.new(0.5, 1)
		userCard.BackgroundTransparency = 0.25
		userCard.Name = "xqwdqxnqjmca"
		userCard.Position = UDim2.new(0.5, 0, 1, -8)
		userCard.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
		userCard.ZIndex = 7
		userCard.BorderSizePixel = 0
		userCard.Size = UDim2.new(1, -12, 0, 44)
		userCard.Parent = sidebar
		local UICorner35 = Instance.new("UICorner")
		UICorner35.CornerRadius = UDim.new(0, 8)
		UICorner35.Parent = userCard
		local UIStroke9 = Instance.new("UIStroke")
		UIStroke9.Color = Color3.fromRGB(52, 52, 64)
		UIStroke9.Transparency = 0.72
		UIStroke9.Parent = userCard
		local userAvatar = Instance.new("ImageLabel")
		userAvatar.ScaleType = Enum.ScaleType.Crop
		userAvatar.AnchorPoint = Vector2.new(0, 0.5)
		userAvatar.Image = "rbxthumb://type=AvatarHeadShot&id=0&w=150&h=150"
		userAvatar.Name = "pocvblrxfmce"
		userAvatar.Position = UDim2.new(0, 6, 0.5, 0)
		userAvatar.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
		userAvatar.ZIndex = 8
		userAvatar.BorderSizePixel = 0
		userAvatar.Size = UDim2.fromOffset(32, 32)
		userAvatar.Parent = userCard
		local UICorner36 = Instance.new("UICorner")
		UICorner36.CornerRadius = UDim.new(1, 0)
		UICorner36.Parent = userAvatar
		local UIStroke10 = Instance.new("UIStroke")
		UIStroke10.Color = Color3.fromRGB(52, 52, 64)
		UIStroke10.Transparency = 0.45
		UIStroke10.Parent = userAvatar
		local displayNameLabel = Instance.new("TextLabel")
		displayNameLabel.TextColor3 = Color3.fromRGB(240, 240, 245)
		displayNameLabel.Text = Players.LocalPlayer.DisplayName
		displayNameLabel.BackgroundTransparency = 1
		displayNameLabel.TextXAlignment = Enum.TextXAlignment.Left
		displayNameLabel.Font = Enum.Font.GothamBold
		displayNameLabel.Name = "okderlaakkrd"
		displayNameLabel.Position = UDim2.fromOffset(45, 6)
		displayNameLabel.TextTruncate = Enum.TextTruncate.AtEnd
		displayNameLabel.ZIndex = 8
		displayNameLabel.TextSize = 13
		displayNameLabel.Size = UDim2.new(1, -51, 0, 15)
		displayNameLabel.Parent = userCard
		local usernameLabel = Instance.new("TextLabel")
		usernameLabel.TextColor3 = Color3.fromRGB(122, 122, 134)
		usernameLabel.TextTransparency = 0.3
		usernameLabel.Text = "@" .. Players.LocalPlayer.Name
		usernameLabel.BackgroundTransparency = 1
		usernameLabel.TextXAlignment = Enum.TextXAlignment.Left
		usernameLabel.Font = Enum.Font.GothamBold
		usernameLabel.Name = "mupxpwelokfu"
		usernameLabel.Position = UDim2.fromOffset(45, 22)
		usernameLabel.TextTruncate = Enum.TextTruncate.AtEnd
		usernameLabel.ZIndex = 8
		usernameLabel.TextSize = 11
		usernameLabel.Size = UDim2.new(1, -51, 0, 13)
		usernameLabel.Parent = userCard
		local displayNameChanged = Players.LocalPlayer:GetPropertyChangedSignal("DisplayName")

		displayNameChanged:Connect(function()
			displayNameLabel.Text = Players.LocalPlayer.DisplayName
		end)

		windowInputLayer.InputBegan:Connect(function(input24, gameProcessed24)
		end)

		UserInputService.InputEnded:Connect(function(input25, gameProcessed25)
		end)

		UserInputService.InputChanged:Connect(function(input26, gameProcessed26)
		end)

		UserInputService.InputBegan:Connect(function(input27, gameProcessed27)
		end)

		mainContent.MouseEnter:Connect(function()
		end)

		mainContent.MouseLeave:Connect(function()
		end)

		local renderSteppedConnection04
		task.defer(function()
			windowOpenSound.PlaybackSpeed = 0.8
			windowOpenSound.Volume = 0.42
			windowOpenSound.TimePosition = 0
			windowOpenSound:Play()
			windowShell.Visible = true
			windowRoot.GroupTransparency = 1
			if renderSteppedConnection04 then renderSteppedConnection04:Disconnect() end
			renderSteppedConnection04 = RunService.RenderStepped:Connect(function(deltaTime6)
				local t = windowRoot.GroupTransparency
				if t <= 0 then
					renderSteppedConnection04:Disconnect()
					return
				end
				windowRoot.GroupTransparency = math.max(0, t - deltaTime6 * 6)
			end)
		end)
		return {
	bind = Enum.KeyCode.Unknown,
	body = mainContent,
	list = {},
	net = {
		conn = renderSteppedConnection03,
		layer = particleLayer,
		marks = { sidebarDivider },
		on = true,
		veil = 0,
		mark = function()
				end
	},
	open = true,
	pages = pagesContainer,
	root = windowRoot,
	shell = windowShell,
	side = sidebar,
	size = windowOptions.size,
	tabs = tabsList,
	mark = function()
			end,
	render = function()
				windowOpenSound.PlaybackSpeed = 0.8
				windowOpenSound.Volume = 0.42
				windowOpenSound.TimePosition = 0
				windowOpenSound:Play()
				windowShell.Visible = true
				windowRoot.GroupTransparency = 1
				if renderSteppedConnection04 then renderSteppedConnection04:Disconnect() end
				renderSteppedConnection04 = RunService.RenderStepped:Connect(function(deltaTime6)
					local t = windowRoot.GroupTransparency
					if t <= 0 then
						renderSteppedConnection04:Disconnect()
						return
					end
					windowRoot.GroupTransparency = math.max(0, t - deltaTime6 * 6)
				end)
			end,
	setbind = function()
			end,
	setfury = function()
			end,
	setlogo = function(_, logoId)
				logoImage.Image = tostring(logoId)
			end,
	setsize = function(_, newSize)
				local tween = TweenService:Create(windowShell, TweenInfo.new(0.18), { Size = newSize })
				tween:Play()
			end,
	tab = function(_, tabOptions)
		tabOptions = tabOptions or {}
		if type(tabOptions.name) ~= "string" then tabOptions.name = "" end
		if type(tabOptions.tip) ~= "string" then tabOptions.tip = "" end
		if type(tabOptions.icon) ~= "string" then tabOptions.icon = "" end
				local tabEntry = Instance.new("Frame")
				tabEntry.LayoutOrder = 1
				tabEntry.Name = "eqbdfskkrzuv"
				tabEntry.BackgroundTransparency = 1
				tabEntry.ZIndex = 7
				tabEntry.AutomaticSize = Enum.AutomaticSize.Y
				tabEntry.Size = UDim2.new(1, 0, 0, 0)
				tabEntry.Parent = tabsList
				local UIListLayout7 = Instance.new("UIListLayout")
				UIListLayout7.Padding = UDim.new(0, 2)
				UIListLayout7.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout7.Parent = tabEntry
				local tabButton = Instance.new("Frame")
				tabButton.LayoutOrder = 1
				tabButton.Name = "fxfcpohuwhax"
				tabButton.BackgroundTransparency = 0.06
				tabButton.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
				tabButton.ZIndex = 7
				tabButton.BorderSizePixel = 0
				tabButton.Size = UDim2.new(1, 0, 0, 40)
				tabButton.Parent = tabEntry
				local UICorner37 = Instance.new("UICorner")
				UICorner37.CornerRadius = UDim.new(0, 6)
				UICorner37.Parent = tabButton
				local UIStroke11 = Instance.new("UIStroke")
				UIStroke11.Color = Color3.fromRGB(52, 52, 64)
				UIStroke11.Transparency = 1
				UIStroke11.Parent = tabButton
				local tabBackground = Instance.new("Frame")
				tabBackground.Name = "eadvlxxcbiqb"
				tabBackground.BackgroundTransparency = 1
				tabBackground.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
				tabBackground.ZIndex = 7
				tabBackground.BorderSizePixel = 0
				tabBackground.Size = UDim2.fromScale(1, 1)
				tabBackground.Parent = tabButton
				local UICorner38 = Instance.new("UICorner")
				UICorner38.CornerRadius = UDim.new(0, 6)
				UICorner38.Parent = tabBackground
				local UIGradient15 = Instance.new("UIGradient")
				UIGradient15.Rotation = 0
				UIGradient15.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.7, 0.25), NumberSequenceKeypoint.new(1, 0.55) })
				UIGradient15.Parent = tabBackground
				local tabAccent = Instance.new("Frame")
				tabAccent.AnchorPoint = Vector2.new(0, 0.5)
				tabAccent.BackgroundTransparency = 1
				tabAccent.Name = "phwyshbdhsdw"
				tabAccent.Position = UDim2.new(0, 1, 0.5, 0)
				tabAccent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				tabAccent.ZIndex = 8
				tabAccent.BorderSizePixel = 0
				tabAccent.Size = UDim2.new(0, 3, 0, 0)
				tabAccent.Parent = tabButton
				local UICorner39 = Instance.new("UICorner")
				UICorner39.CornerRadius = UDim.new(1, 0)
				UICorner39.Parent = tabAccent
				local tabIcon = Instance.new("ImageLabel")
				tabIcon.ImageColor3 = Color3.fromRGB(122, 122, 134)
				tabIcon.ImageTransparency = 0.35
				tabIcon.AnchorPoint = Vector2.new(0, 0.5)
				tabIcon.Image = ""
				tabIcon.Name = "gkrfvtnkpknr"
				tabIcon.Position = UDim2.new(0, 8, 0.5, 0)
				tabIcon.ZIndex = 8
				tabIcon.BackgroundTransparency = 1
				tabIcon.Size = UDim2.fromOffset(16, 16)
				tabIcon.Parent = tabButton
				local tabTitle = Instance.new("TextLabel")
				tabTitle.TextColor3 = Color3.fromRGB(122, 122, 134)
				tabTitle.TextTransparency = 0.4
				tabTitle.Text = tabOptions.name
				tabTitle.BackgroundTransparency = 1
				tabTitle.TextXAlignment = Enum.TextXAlignment.Left
				tabTitle.Font = Enum.Font.GothamBold
				tabTitle.Name = "krvbjnxqsien"
				tabTitle.Position = UDim2.new(0, 31, 0, 5)
				tabTitle.TextTruncate = Enum.TextTruncate.AtEnd
				tabTitle.ZIndex = 8
				tabTitle.TextSize = 13
				tabTitle.Size = UDim2.new(1, -39, 0, 16)
				tabTitle.Parent = tabButton
				local tabDescription = Instance.new("TextLabel")
				tabDescription.TextColor3 = Color3.fromRGB(122, 122, 134)
				tabDescription.TextTransparency = 0.7
				tabDescription.Text = tabOptions.tip
				tabDescription.BackgroundTransparency = 1
				tabDescription.TextXAlignment = Enum.TextXAlignment.Left
				tabDescription.Font = Enum.Font.GothamBold
				tabDescription.Name = "nevkcbfnvotp"
				tabDescription.Position = UDim2.new(0, 31, 0, 21)
				tabDescription.TextTruncate = Enum.TextTruncate.AtEnd
				tabDescription.ZIndex = 8
				tabDescription.TextSize = 9
				tabDescription.Size = UDim2.new(1, -39, 0, 11)
				tabDescription.Parent = tabButton
				local tabClickTarget = Instance.new("ImageButton")
				tabClickTarget.AutoButtonColor = false
				tabClickTarget.Selectable = false
				tabClickTarget.Name = "jitnlyaqxqpt"
				tabClickTarget.ImageTransparency = 1
				tabClickTarget.ZIndex = 9
				tabClickTarget.BackgroundTransparency = 1
				tabClickTarget.Size = UDim2.fromScale(1, 1)
				tabClickTarget.Parent = tabButton

				tabButton.MouseEnter:Connect(function()
				end)

				tabButton.MouseLeave:Connect(function()
				end)

				local tabExpandIcon = Instance.new("ImageLabel")
				tabExpandIcon.ImageColor3 = Color3.fromRGB(122, 122, 134)
				tabExpandIcon.ImageTransparency = 1
				tabExpandIcon.Rotation = 0
				tabExpandIcon.AnchorPoint = Vector2.new(1, 0.5)
				tabExpandIcon.Image = "rbxassetid://71457658246709"
				tabExpandIcon.Name = "frytlujdzpqk"
				tabExpandIcon.Position = UDim2.new(1, -7, 0.5, 0)
				tabExpandIcon.Visible = false
				tabExpandIcon.ZIndex = 8
				tabExpandIcon.BackgroundTransparency = 1
				tabExpandIcon.Size = UDim2.fromOffset(13, 13)
				tabExpandIcon.Parent = tabButton
				local tabPages = Instance.new("Frame")
				tabPages.LayoutOrder = 2
				tabPages.Name = "bhbsfwugsrbv"
				tabPages.ClipsDescendants = true
				tabPages.BackgroundTransparency = 1
				tabPages.ZIndex = 7
				tabPages.BorderSizePixel = 0
				tabPages.Size = UDim2.new(1, 0, 0, 0)
				tabPages.Parent = tabEntry
				local UIListLayout8 = Instance.new("UIListLayout")
				UIListLayout8.Padding = UDim.new(0, 2)
				UIListLayout8.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout8.Parent = tabPages
				local tabPage = Instance.new("Frame")
				tabPage.Visible = false
				tabPage.Name = "bgaspysgqdum"
				tabPage.ZIndex = 4
				tabPage.BackgroundTransparency = 1
				tabPage.Size = UDim2.fromScale(1, 1)
				tabPage.Parent = pagesContainer
				local leftColumn = Instance.new("ScrollingFrame")
				leftColumn.ZIndex = 5
				leftColumn.BackgroundTransparency = 1
				leftColumn.Name = "hhszdyeuzmsr"
				leftColumn.Position = UDim2.new(0, 0, 0, 34)
				leftColumn.CanvasSize = UDim2.new()
				leftColumn.ScrollBarThickness = 0
				leftColumn.BorderSizePixel = 0
				leftColumn.Size = UDim2.new(0.5, -4, 1, -34)
				leftColumn.Parent = tabPage
				local UIListLayout9 = Instance.new("UIListLayout")
				UIListLayout9.Padding = UDim.new(0, 9)
				UIListLayout9.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout9.Parent = leftColumn
				local tabPagesChanged = UIListLayout9:GetPropertyChangedSignal("AbsoluteContentSize")

				tabPagesChanged:Connect(function()
					leftColumn.CanvasSize = UDim2.fromOffset(0, 4)
				end)

				local rightColumn = Instance.new("ScrollingFrame")
				rightColumn.ZIndex = 5
				rightColumn.BackgroundTransparency = 1
				rightColumn.Name = "yeoucsekwdjz"
				rightColumn.Position = UDim2.new(0.5, 4, 0, 34)
				rightColumn.CanvasSize = UDim2.new()
				rightColumn.ScrollBarThickness = 0
				rightColumn.BorderSizePixel = 0
				rightColumn.Size = UDim2.new(0.5, -4, 1, -34)
				rightColumn.Parent = tabPage
				local UIListLayout10 = Instance.new("UIListLayout")
				UIListLayout10.Padding = UDim.new(0, 9)
				UIListLayout10.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout10.Parent = rightColumn
				local rightColumnChanged = UIListLayout10:GetPropertyChangedSignal("AbsoluteContentSize")

				rightColumnChanged:Connect(function()
					rightColumn.CanvasSize = UDim2.fromOffset(0, 4)
				end)

				local searchPanel = Instance.new("Frame")
				searchPanel.Name = "kshvpmsqxczq"
				searchPanel.Position = UDim2.fromOffset(-16, -16)
				searchPanel.BackgroundColor3 = Color3.fromRGB(6, 6, 8)
				searchPanel.ZIndex = 6
				searchPanel.BorderSizePixel = 0
				searchPanel.Size = UDim2.new(1, 32, 0, 42)
				searchPanel.Parent = tabPage
				local searchBackground = Instance.new("Frame")
				searchBackground.AnchorPoint = Vector2.new(0, 0.5)
				searchBackground.Name = "zabbwrshkkjt"
				searchBackground.Position = UDim2.new(0, 0, 1, 0)
				searchBackground.ZIndex = 6
				searchBackground.BackgroundTransparency = 1
				searchBackground.Size = UDim2.new(1, 0, 0, 16)
				searchBackground.Parent = searchPanel
				local searchTopGlow = Instance.new("Frame")
				searchTopGlow.Name = "wlagptzpxeoi"
				searchTopGlow.BackgroundTransparency = 0.9
				searchTopGlow.BackgroundColor3 = Color3.fromRGB(150, 152, 175)
				searchTopGlow.ZIndex = 6
				searchTopGlow.BorderSizePixel = 0
				searchTopGlow.Size = UDim2.fromScale(1, 1)
				searchTopGlow.Parent = searchBackground
				local UIGradient16 = Instance.new("UIGradient")
				UIGradient16.Rotation = 90
				UIGradient16.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.35), NumberSequenceKeypoint.new(1, 1) })
				UIGradient16.Parent = searchTopGlow
				local searchBottomGlow = Instance.new("Frame")
				searchBottomGlow.AnchorPoint = Vector2.new(0.5, 0.5)
				searchBottomGlow.Name = "abkarvyowmzn"
				searchBottomGlow.Position = UDim2.fromScale(0.5, 0.5)
				searchBottomGlow.BackgroundColor3 = Color3.fromRGB(52, 52, 64)
				searchBottomGlow.ZIndex = 7
				searchBottomGlow.BorderSizePixel = 0
				searchBottomGlow.Size = UDim2.new(1, 0, 0, 1)
				searchBottomGlow.Parent = searchBackground
				local UIGradient17 = Instance.new("UIGradient")
				UIGradient17.Rotation = 0
				UIGradient17.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.12, 0.25), NumberSequenceKeypoint.new(0.88, 0.25), NumberSequenceKeypoint.new(1, 1) })
				UIGradient17.Parent = searchBottomGlow
				local searchHint = Instance.new("TextLabel")
				searchHint.TextColor3 = Color3.fromRGB(122, 122, 134)
				searchHint.TextTransparency = 1
				searchHint.Text = ""
				searchHint.BackgroundTransparency = 1
				searchHint.TextXAlignment = Enum.TextXAlignment.Left
				searchHint.Font = Enum.Font.GothamBold
				searchHint.Name = "btvxkykougwp"
				searchHint.Position = UDim2.fromOffset(17, 3)
				searchHint.TextTruncate = Enum.TextTruncate.AtEnd
				searchHint.ZIndex = 7
				searchHint.TextSize = 14
				searchHint.Size = UDim2.new(1, -110, 1, -8)
				searchHint.Parent = searchPanel
				local searchBox = Instance.new("TextBox")
				searchBox.Visible = false
				searchBox.TextTransparency = 1
				searchBox.AnchorPoint = Vector2.new(1, 0.5)
				searchBox.PlaceholderColor3 = Color3.fromRGB(122, 122, 134)
				searchBox.PlaceholderText = "search"
				searchBox.BorderSizePixel = 0
				searchBox.Size = UDim2.new(0, 0, 0, 27)
				searchBox.ClipsDescendants = true
				searchBox.Text = ""
				searchBox.ZIndex = 7
				searchBox.TextXAlignment = Enum.TextXAlignment.Left
				searchBox.Font = Enum.Font.GothamBold
				searchBox.Name = "jhzsjjvwifkf"
				searchBox.Position = UDim2.new(1, -44, 0.5, -1)
				searchBox.TextSize = 14
				searchBox.ClearTextOnFocus = false
				searchBox.TextColor3 = Color3.fromRGB(240, 240, 245)
				searchBox.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
				searchBox.Parent = searchPanel
				local UICorner40 = Instance.new("UICorner")
				UICorner40.CornerRadius = UDim.new(0, 8)
				UICorner40.Parent = searchBox
				local UIPadding7 = Instance.new("UIPadding")
				UIPadding7.PaddingLeft = UDim.new(0, 12)
				UIPadding7.PaddingRight = UDim.new(0, 12)
				UIPadding7.Parent = searchBox
				local UIStroke12 = Instance.new("UIStroke")
				UIStroke12.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke12.Transparency = 0.55
				UIStroke12.Color = Color3.fromRGB(52, 52, 64)
				UIStroke12.Parent = searchBox
				local searchButtonGlow = Instance.new("Frame")
				searchButtonGlow.AnchorPoint = Vector2.new(0.5, 1)
				searchButtonGlow.BackgroundTransparency = 1
				searchButtonGlow.Name = "nkazlzpnvyhu"
				searchButtonGlow.Position = UDim2.fromScale(0.5, 1)
				searchButtonGlow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				searchButtonGlow.ZIndex = 8
				searchButtonGlow.BorderSizePixel = 0
				searchButtonGlow.Size = UDim2.new(1, 6, 0, 1)
				searchButtonGlow.Parent = searchBox
				local UIGradient18 = Instance.new("UIGradient")
				UIGradient18.Rotation = 0
				UIGradient18.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1) })
				UIGradient18.Parent = searchButtonGlow
				local searchButton = Instance.new("ImageButton")
				searchButton.AutoButtonColor = false
				searchButton.Selectable = false
				searchButton.ImageColor3 = Color3.fromRGB(122, 122, 134)
				searchButton.ScaleType = Enum.ScaleType.Fit
				searchButton.ImageTransparency = 0.2
				searchButton.BackgroundTransparency = 1
				searchButton.AnchorPoint = Vector2.new(1, 0.5)
				searchButton.Image = "rbxassetid://72296609649861"
				searchButton.Name = "feclhyrzbvtp"
				searchButton.Position = UDim2.new(1, -17, 0.5, 2)
				searchButton.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
				searchButton.ZIndex = 8
				searchButton.BorderSizePixel = 0
				searchButton.Size = UDim2.fromOffset(22, 22)
				searchButton.Parent = searchPanel
				local UICorner41 = Instance.new("UICorner")
				UICorner41.CornerRadius = UDim.new(0, 6)
				UICorner41.Parent = searchButton

				searchButton.MouseButton1Click:Connect(function()
					searchBox.Visible = true
					searchButton.Image = "rbxassetid://116396312853810"
					local tween18 = TweenService:Create(searchBox, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Size = UDim2.new(0.66, -44, 0, 27), TextTransparency = 0 })
					tween18:Play()
					local tween19 = TweenService:Create(UIStroke12, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Transparency = 0.35 })
					tween19:Play()
					local tween20 = TweenService:Create(searchButtonGlow, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 0.35 })
					tween20:Play()
					local tween21 = TweenService:Create(searchButton, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 0.45, ImageColor3 = Color3.fromRGB(240, 240, 245), ImageTransparency = 0 })
					tween21:Play()

					task.delay(0.12, function()
					end)
				end)

				searchButton.MouseEnter:Connect(function()
					local tween22 = TweenService:Create(searchButton, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 0.45, ImageColor3 = Color3.fromRGB(240, 240, 245), ImageTransparency = 0 })
					tween22:Play()
				end)

				searchButton.MouseLeave:Connect(function()
				end)

				local searchTextChanged = searchBox:GetPropertyChangedSignal("Text")

				searchTextChanged:Connect(function()
					searchHint.Text = ""
					local tween23 = TweenService:Create(searchHint, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { TextTransparency = 1 })
					tween23:Play()
				end)

				searchBox.FocusLost:Connect(function(enterPressed2, inputObject2)
					searchButton.Image = "rbxassetid://72296609649861"
					searchBox:ReleaseFocus()
					local tween24 = TweenService:Create(searchBox, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Size = UDim2.new(0, 0, 0, 27), TextTransparency = 1 })
					tween24:Play()
					local tween25 = TweenService:Create(UIStroke12, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Transparency = 0.55 })
					tween25:Play()
					local tween26 = TweenService:Create(searchButtonGlow, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
					tween26:Play()
					local tween27 = TweenService:Create(searchButton, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 1, ImageColor3 = Color3.fromRGB(122, 122, 134), ImageTransparency = 0.2 })
					tween27:Play()

					task.delay(0.28, function()
					end)
				end)

				local tabLayoutChanged = UIListLayout8:GetPropertyChangedSignal("AbsoluteContentSize")

				tabLayoutChanged:Connect(function()
				end)

				tabClickTarget.MouseButton1Click:Connect(function()
				end)

				local tween2 = TweenService:Create(tabBackground, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 0.12 })
				tween2:Play()
				local tween3 = TweenService:Create(UIStroke11, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Transparency = 0.72 })
				tween3:Play()
				local tween4 = TweenService:Create(tabAccent, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05, Size = UDim2.new(0, 3, 0, 22) })
				tween4:Play()
				local tween5 = TweenService:Create(tabIcon, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { ImageColor3 = Color3.fromRGB(240, 240, 245), ImageTransparency = 0 })
				tween5:Play()
				local tween6 = TweenService:Create(tabTitle, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(240, 240, 245), TextTransparency = 0 })
				tween6:Play()
				local tween7 = TweenService:Create(tabDescription, TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { TextTransparency = 0.4 })
				tween7:Play()
				tabPage.Visible = true
			end,
	toggle = function()
				toggleSound.PlaybackSpeed = 1.32
				toggleSound.Volume = 0.3
				toggleSound.TimePosition = 0
				toggleSound:Play()

				renderSteppedConnection04 = RunService.RenderStepped:Connect(function(deltaTime5)
					local t = windowRoot.GroupTransparency
					if t <= 0 then
						renderSteppedConnection04:Disconnect()
						return
					end
					windowRoot.GroupTransparency = math.max(0, t - deltaTime5 * 6)
				end)
			end

	}
	end
}

return getgenv().shitaroebet
