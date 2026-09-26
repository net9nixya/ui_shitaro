-- shitaro_ui_fixed.lua
-- Full working replacement for shitaro_ui.txt
-- All element types render + function correctly.

local RunService      = game:GetService("RunService")
local TweenService    = game:GetService("TweenService")
local TextService     = game:GetService("TextService")
local UserInputService= game:GetService("UserInputService")
local Players         = game:GetService("Players")
local GuiService      = game:GetService("GuiService")
Players.LocalPlayer:GetMouse()

local hiddenGuiRoot = gethui and gethui() or game:GetService("CoreGui")
getgenv().shitaro_drawmask = {}

-- ──────────────── THEME ────────────────
local THEME = {
    accent  = Color3.fromRGB(100, 200, 255),   -- cyan highlight
    accent2 = Color3.fromRGB(140, 100, 255),   -- violet secondary
    bg      = Color3.fromRGB(8,   9,   14),    -- deep navy-black
    dim     = Color3.fromRGB(100, 108, 135),   -- muted blue-grey
    glow    = Color3.fromRGB(100, 200, 255),   -- cyan glow
    head    = Color3.fromRGB(13,  15,  24),    -- header bg
    line    = Color3.fromRGB(35,  40,  62),    -- separator
    panel   = Color3.fromRGB(11,  13,  20),    -- card bg
    side    = Color3.fromRGB(10,  11,  18),    -- sidebar
    text    = Color3.fromRGB(220, 228, 255),   -- blue-tinted white
    elem    = Color3.fromRGB(14,  16,  26),    -- element row
    on      = Color3.fromRGB(70,  210, 150),   -- toggle on teal
    off     = Color3.fromRGB(30,  34,  52),    -- toggle off dark
    badge   = Color3.fromRGB(18,  21,  36),    -- section badge bg
    hover   = Color3.fromRGB(20,  24,  40),    -- hover state
}

-- ──────────────── ROOT SCREENGUI ────────────────
local screenGui = Instance.new("ScreenGui")
screenGui.Name            = "shitaroebet_ui"
screenGui.ZIndexBehavior  = Enum.ZIndexBehavior.Sibling
screenGui.ResetOnSpawn    = false
screenGui.IgnoreGuiInset  = true
screenGui.DisplayOrder    = 1000
if protect_gui then pcall(protect_gui, screenGui) end
screenGui.Parent = hiddenGuiRoot

-- ──────────────── SOUNDS ────────────────
local function makeSound(id, vol, pitch)
    local s = Instance.new("Sound")
    s.SoundId        = id or "rbxasset://sounds/electronicpingshort.wav"
    s.Volume         = vol or 0.34
    s.PlaybackSpeed  = pitch or 1
    s.Parent         = screenGui
    return s
end
local toggleSound      = makeSound(nil, 0.30, 1.32)
local windowOpenSound  = makeSound(nil, 0.42, 0.80)
local notificationSound= makeSound(nil, 0.22, 1.18)
local actionSound      = makeSound(nil, 0.22, 1.18)

-- ──────────────── TWEEN HELPER ────────────────
local function tween(inst, t, props)
    TweenService:Create(inst, TweenInfo.new(t, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), props):Play()
end

-- ──────────────── WATERMARK ────────────────
local watermarkOverlay = Instance.new("CanvasGroup")
watermarkOverlay.AnchorPoint       = Vector2.new(1, 0)
watermarkOverlay.BackgroundTransparency = 1
watermarkOverlay.Position          = UDim2.new(1, -8, 0, 8)
watermarkOverlay.ZIndex            = 900
watermarkOverlay.AutomaticSize     = Enum.AutomaticSize.XY
watermarkOverlay.Size              = UDim2.fromOffset(0, 0)
watermarkOverlay.Parent            = screenGui

do
    local uil = Instance.new("UIListLayout")
    uil.VerticalAlignment   = Enum.VerticalAlignment.Center
    uil.FillDirection       = Enum.FillDirection.Horizontal
    uil.HorizontalAlignment = Enum.HorizontalAlignment.Right
    uil.Padding             = UDim.new(0, 8)
    uil.SortOrder           = Enum.SortOrder.LayoutOrder
    uil.Parent              = watermarkOverlay

    local pad = Instance.new("UIPadding")
    pad.PaddingBottom = UDim.new(0, 10)
    pad.PaddingTop    = UDim.new(0, 10)
    pad.PaddingLeft   = UDim.new(0, 10)
    pad.PaddingRight  = UDim.new(0, 10)
    pad.Parent        = watermarkOverlay

    local function makeBadge(order)
        local badge = Instance.new("Frame")
        badge.LayoutOrder          = order
        badge.Active               = true
        badge.BackgroundColor3     = THEME.panel
        badge.BorderSizePixel      = 0
        badge.BackgroundTransparency = 0.05
        badge.ZIndex               = 2
        badge.AutomaticSize        = Enum.AutomaticSize.X
        badge.Size                 = UDim2.fromOffset(0, 30)
        badge.Parent               = watermarkOverlay

        local c = Instance.new("UICorner")
        c.CornerRadius = UDim.new(0, 8)
        c.Parent       = badge

        local st = Instance.new("UIStroke")
        st.Thickness        = 1
        st.Transparency     = 0.45
        st.Color            = THEME.line
        st.LineJoinMode     = Enum.LineJoinMode.Round
        st.ApplyStrokeMode  = Enum.ApplyStrokeMode.Border
        st.Parent           = badge

        local bg = Instance.new("Frame")
        bg.BackgroundTransparency = 0.82
        bg.BackgroundColor3       = THEME.glow
        bg.ZIndex                 = 2
        bg.BorderSizePixel        = 0
        bg.Size                   = UDim2.fromScale(1, 1)
        bg.Parent                 = badge

        local bc = Instance.new("UICorner")
        bc.CornerRadius = UDim.new(0, 8)
        bc.Parent       = bg

        local grad = Instance.new("UIGradient")
        grad.Rotation    = 90
        grad.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.5),
            NumberSequenceKeypoint.new(0.6, 0.82),
            NumberSequenceKeypoint.new(1, 0.9),
        })
        grad.Parent = bg

        local content = Instance.new("Frame")
        content.BackgroundTransparency = 1
        content.ZIndex                 = 3
        content.AutomaticSize          = Enum.AutomaticSize.X
        content.Size                   = UDim2.fromOffset(0, 30)
        content.Parent                 = badge

        local pad2 = Instance.new("UIPadding")
        pad2.PaddingLeft  = UDim.new(0, 13)
        pad2.PaddingRight = UDim.new(0, 13)
        pad2.Parent       = content

        local uil2 = Instance.new("UIListLayout")
        uil2.VerticalAlignment   = Enum.VerticalAlignment.Center
        uil2.FillDirection       = Enum.FillDirection.Horizontal
        uil2.Padding             = UDim.new(0, 8)
        uil2.SortOrder           = Enum.SortOrder.LayoutOrder
        uil2.Parent              = content

        return badge, content
    end

    -- Brand badge
    local brandBadge, brandContent = makeBadge(1)

    local brandIcon = Instance.new("ImageLabel")
    brandIcon.ImageColor3        = THEME.dim
    brandIcon.ScaleType          = Enum.ScaleType.Fit
    brandIcon.Image              = "rbxassetid://75851496262862"
    brandIcon.LayoutOrder        = 1
    brandIcon.ZIndex             = 4
    brandIcon.BackgroundTransparency = 1
    brandIcon.Size               = UDim2.fromOffset(16, 16)
    brandIcon.Parent             = brandContent

    local brandLabel = Instance.new("TextLabel")
    brandLabel.LayoutOrder        = 2
    brandLabel.TextColor3         = THEME.text
    brandLabel.TextTransparency   = 0.05
    brandLabel.Text               = "shitaro.lol"
    brandLabel.Font               = Enum.Font.GothamMedium
    brandLabel.BackgroundTransparency = 1
    brandLabel.TextSize           = 14
    brandLabel.ZIndex             = 4
    brandLabel.AutomaticSize      = Enum.AutomaticSize.X
    brandLabel.Size               = UDim2.fromOffset(0, 20)
    brandLabel.Parent             = brandContent

    -- Status badge
    local statusBadge, statusContent = makeBadge(2)

    local playerAvatar = Instance.new("ImageLabel")
    playerAvatar.LayoutOrder         = 10
    playerAvatar.ScaleType           = Enum.ScaleType.Crop
    playerAvatar.ImageTransparency   = 0.02
    playerAvatar.Image               = "rbxthumb://type=AvatarHeadShot&id=" .. Players.LocalPlayer.UserId .. "&w=150&h=150"
    playerAvatar.BackgroundTransparency = 0.3
    playerAvatar.BackgroundColor3    = Color3.fromRGB(6, 6, 8)
    playerAvatar.ZIndex              = 4
    playerAvatar.BorderSizePixel     = 0
    playerAvatar.Size                = UDim2.fromOffset(22, 22)
    playerAvatar.Parent              = statusContent

    local avCorner = Instance.new("UICorner")
    avCorner.CornerRadius = UDim.new(1, 0)
    avCorner.Parent       = playerAvatar

    local playerNameLabel = Instance.new("TextLabel")
    playerNameLabel.LayoutOrder         = 22
    playerNameLabel.TextColor3          = THEME.text
    playerNameLabel.TextTransparency    = 0.05
    playerNameLabel.Text                = Players.LocalPlayer.Name
    playerNameLabel.Font                = Enum.Font.GothamMedium
    playerNameLabel.BackgroundTransparency = 1
    playerNameLabel.TextSize            = 14
    playerNameLabel.ZIndex              = 4
    playerNameLabel.AutomaticSize       = Enum.AutomaticSize.X
    playerNameLabel.Size                = UDim2.fromOffset(0, 20)
    playerNameLabel.Parent              = statusContent

    -- Separator helper
    local function makeSep(order)
        local sep = Instance.new("Frame")
        sep.LayoutOrder         = order
        sep.BackgroundTransparency = 1
        sep.ZIndex              = 4
        sep.BorderSizePixel     = 0
        sep.Size                = UDim2.fromOffset(14, 16)
        sep.Parent              = statusContent
        local line = Instance.new("Frame")
        line.AnchorPoint        = Vector2.new(0.5, 0.5)
        line.BackgroundTransparency = 0.62
        line.Position           = UDim2.fromScale(0.5, 0.5)
        line.BackgroundColor3   = THEME.glow
        line.ZIndex             = 4
        line.BorderSizePixel    = 0
        line.Size               = UDim2.fromOffset(1, 16)
        line.Parent             = sep
        local g = Instance.new("UIGradient")
        g.Rotation    = 90
        g.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0,   0.85),
            NumberSequenceKeypoint.new(0.5, 0),
            NumberSequenceKeypoint.new(1,   0.85),
        })
        g.Parent = line
    end

    -- Players count
    makeSep(30)
    local playersIcon = Instance.new("ImageLabel")
    playersIcon.ImageColor3        = THEME.text
    playersIcon.ScaleType          = Enum.ScaleType.Fit
    playersIcon.ImageTransparency  = 0.25
    playersIcon.Image              = "rbxassetid://114499998778667"
    playersIcon.LayoutOrder        = 31
    playersIcon.ZIndex             = 4
    playersIcon.BackgroundTransparency = 1
    playersIcon.Size               = UDim2.fromOffset(15, 15)
    playersIcon.Parent             = statusContent

    local playerCountLabel = Instance.new("TextLabel")
    playerCountLabel.LayoutOrder        = 32
    playerCountLabel.TextColor3         = THEME.text
    playerCountLabel.TextTransparency   = 0.05
    playerCountLabel.Text               = "0"
    playerCountLabel.Font               = Enum.Font.GothamMedium
    playerCountLabel.BackgroundTransparency = 1
    playerCountLabel.TextSize           = 14
    playerCountLabel.ZIndex             = 4
    playerCountLabel.Size               = UDim2.fromOffset(24, 20)
    playerCountLabel.TextXAlignment     = Enum.TextXAlignment.Left
    playerCountLabel.Parent             = statusContent

    -- Ping
    makeSep(40)
    local pingIcon = Instance.new("ImageLabel")
    pingIcon.ImageColor3        = THEME.text
    pingIcon.ScaleType          = Enum.ScaleType.Fit
    pingIcon.ImageTransparency  = 0.25
    pingIcon.Image              = "rbxassetid://104941258142372"
    pingIcon.LayoutOrder        = 41
    pingIcon.ZIndex             = 4
    pingIcon.BackgroundTransparency = 1
    pingIcon.Size               = UDim2.fromOffset(15, 15)
    pingIcon.Parent             = statusContent

    local pingLabel = Instance.new("TextLabel")
    pingLabel.LayoutOrder        = 42
    pingLabel.TextColor3         = THEME.text
    pingLabel.TextTransparency   = 0.05
    pingLabel.Text               = "0ms"
    pingLabel.Font               = Enum.Font.GothamMedium
    pingLabel.BackgroundTransparency = 1
    pingLabel.TextSize           = 14
    pingLabel.ZIndex             = 4
    pingLabel.Size               = UDim2.fromOffset(38, 20)
    pingLabel.TextXAlignment     = Enum.TextXAlignment.Left
    pingLabel.Parent             = statusContent

    -- Clock
    makeSep(50)
    local clockIcon = Instance.new("ImageLabel")
    clockIcon.ImageColor3        = THEME.text
    clockIcon.ScaleType          = Enum.ScaleType.Fit
    clockIcon.ImageTransparency  = 0.25
    clockIcon.Image              = "rbxassetid://136533241128438"
    clockIcon.LayoutOrder        = 51
    clockIcon.ZIndex             = 4
    clockIcon.BackgroundTransparency = 1
    clockIcon.Size               = UDim2.fromOffset(15, 15)
    clockIcon.Parent             = statusContent

    local clockLabel = Instance.new("TextLabel")
    clockLabel.LayoutOrder        = 52
    clockLabel.TextColor3         = THEME.text
    clockLabel.TextTransparency   = 0.05
    clockLabel.Text               = "00:00"
    clockLabel.Font               = Enum.Font.GothamMedium
    clockLabel.BackgroundTransparency = 1
    clockLabel.TextSize           = 14
    clockLabel.ZIndex             = 4
    clockLabel.Size               = UDim2.fromOffset(36, 20)
    clockLabel.TextXAlignment     = Enum.TextXAlignment.Left
    clockLabel.Parent             = statusContent

    -- Update loop
    RunService.RenderStepped:Connect(function()
        local ok, ping = pcall(function()
            return game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
        end)
        if ok and ping then
            pingLabel.Text = math.floor(ping) .. "ms"
        end
        playerCountLabel.Text = tostring(#Players:GetPlayers())
        local h = math.floor(os.time() / 3600) % 24
        local m = math.floor(os.time() / 60) % 60
        clockLabel.Text = string.format("%02d:%02d", h, m)
    end)

    -- Fade in
    watermarkOverlay.Visible          = true
    watermarkOverlay.GroupTransparency = 1
    local fadeConn
    fadeConn = RunService.RenderStepped:Connect(function(dt)
        local t = watermarkOverlay.GroupTransparency
        if t <= 0 then
            watermarkOverlay.GroupTransparency = 0
            fadeConn:Disconnect()
            return
        end
        watermarkOverlay.GroupTransparency = math.max(0, t - dt * 5)
    end)
end

-- ──────────────── NOTIFICATION ────────────────
local notifContainer = Instance.new("Frame")
notifContainer.AnchorPoint        = Vector2.new(0, 0)
notifContainer.Position           = UDim2.new(0, 18, 0, 18)
notifContainer.BackgroundTransparency = 1
notifContainer.ZIndex             = 400
notifContainer.AutomaticSize      = Enum.AutomaticSize.Y
notifContainer.Size               = UDim2.fromOffset(268, 0)
notifContainer.Parent             = screenGui

do
    local notifList = Instance.new("UIListLayout")
    notifList.Padding    = UDim.new(0, 6)
    notifList.SortOrder  = Enum.SortOrder.LayoutOrder
    notifList.Parent     = notifContainer
end

local function showNotif(opts)
    opts = opts or {}
    local title   = tostring(opts.title or opts.text or "")
    local dur     = tonumber(opts.duration or opts.dur or 4)

    local card = Instance.new("Frame")
    card.BackgroundColor3     = THEME.panel
    card.BackgroundTransparency = 0.1
    card.BorderSizePixel      = 0
    card.Size                 = UDim2.fromOffset(260, 36)
    card.AutomaticSize        = Enum.AutomaticSize.Y
    card.ClipsDescendants     = false
    card.Parent               = notifContainer

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 8)
    c.Parent       = card

    local st = Instance.new("UIStroke")
    st.Color       = THEME.accent
    st.Transparency = 0.72
    st.Thickness   = 1
    st.Parent      = card

    local accentStrip = Instance.new("Frame")
    accentStrip.BackgroundColor3 = THEME.accent
    accentStrip.BackgroundTransparency = 0.35
    accentStrip.BorderSizePixel  = 0
    accentStrip.Size             = UDim2.new(0, 2, 1, -8)
    accentStrip.AnchorPoint      = Vector2.new(0, 0.5)
    accentStrip.Position         = UDim2.new(0, 4, 0.5, 0)
    accentStrip.ZIndex           = card.ZIndex + 1
    accentStrip.Parent           = card
    local asc = Instance.new("UICorner")
    asc.CornerRadius = UDim.new(1, 0)
    asc.Parent = accentStrip

    local lbl = Instance.new("TextLabel")
    lbl.Text              = title
    lbl.TextColor3        = THEME.text
    lbl.Font              = Enum.Font.GothamMedium
    lbl.TextSize          = 13
    lbl.TextWrapped       = true
    lbl.BackgroundTransparency = 1
    lbl.TextXAlignment    = Enum.TextXAlignment.Left
    lbl.Size              = UDim2.new(1, -20, 0, 36)
    lbl.Position          = UDim2.fromOffset(14, 0)
    lbl.AutomaticSize     = Enum.AutomaticSize.Y
    lbl.Parent            = card

    card.BackgroundTransparency = 1
    tween(card, 0.2, { BackgroundTransparency = 0.1 })

    task.delay(dur, function()
        tween(card, 0.3, { BackgroundTransparency = 1 })
        task.delay(0.35, function()
            card:Destroy()
        end)
    end)

    notificationSound:Play()
end

-- ──────────────── LOGGING (event notify) ────────────────
local logContainer = Instance.new("Frame")
logContainer.AnchorPoint        = Vector2.new(1, 1)
logContainer.Position           = UDim2.new(1, -8, 1, -8)
logContainer.BackgroundTransparency = 1
logContainer.ZIndex             = 399
logContainer.AutomaticSize      = Enum.AutomaticSize.Y
logContainer.Size               = UDim2.fromOffset(240, 0)
logContainer.Parent             = screenGui

do
    local logList = Instance.new("UIListLayout")
    logList.Padding             = UDim.new(0, 4)
    logList.SortOrder           = Enum.SortOrder.LayoutOrder
    logList.VerticalAlignment   = Enum.VerticalAlignment.Bottom
    logList.Parent              = logContainer
end

local function showLog(icon, text, dur, color)
    dur = dur or 4
    local card = Instance.new("Frame")
    card.BackgroundColor3     = THEME.panel
    card.BackgroundTransparency = 0.12
    card.BorderSizePixel      = 0
    card.Size                 = UDim2.fromOffset(232, 28)
    card.AutomaticSize        = Enum.AutomaticSize.Y
    card.Parent               = logContainer

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent       = card

    local lbl = Instance.new("TextLabel")
    lbl.Text              = tostring(text or "")
    lbl.TextColor3        = color or THEME.dim
    lbl.Font              = Enum.Font.GothamMedium
    lbl.TextSize          = 11
    lbl.TextWrapped       = false
    lbl.BackgroundTransparency = 1
    lbl.TextXAlignment    = Enum.TextXAlignment.Left
    lbl.Size              = UDim2.new(1, -12, 1, 0)
    lbl.Position          = UDim2.fromOffset(8, 0)
    lbl.Parent            = card

    task.delay(dur, function()
        tween(card, 0.25, { BackgroundTransparency = 1 })
        task.delay(0.3, function() card:Destroy() end)
    end)
end

-- ──────────────── ICON LOOKUP ────────────────
local ICONS = {
    activity=137527339160230,banknote=113703117675594,bell=84691420588185,
    book=74111869099427,bot=70979486241131,box=117371753006597,
    boxes=95055252135506,brain=116902501990569,bug=75649814233484,
    car=91451724283877,["car-front"]=79993076477613,check=86817768619372,
    ["chevron-down"]=71457658246709,["chevron-right"]=101007429951147,
    ["chevron-up"]=98648581502859,["circle-dot"]=122878673716704,
    ["clipboard-paste"]=79192963603923,clock=136533241128438,
    code=75851496262862,cog=123222732420633,coins=117341212186115,
    compass=73836660434977,copy=116378866141355,crosshair=83752373575368,
    crown=92253403464658,database=99154172590159,dices=116678154854810,
    ellipsis=101330725759187,eye=127234874352422,["eye-off"]=85207295981701,
    ["file-text"]=92774566080911,fish=114555142566431,flame=125012650497883,
    folder=77937190465422,footprints=80792036653047,["gamepad-2"]=99293705721130,
    gauge=128279962545721,ghost=132705178126217,globe=125685532120024,
    hand=83088528355903,heart=88525382655929,home=109841253338329,
    image=114022611279795,info=120620848266512,key=83474888140571,
    keyboard=121978468376124,layers=114499998778667,link=86131768436965,
    list=101699539545687,lock=119765975153029,["log-out"]=140299936053191,
    map=131325044235094,["map-pin"]=137091405832737,minus=95070996149109,
    monitor=70520152532392,["mouse-pointer"]=113428527051320,move=77028714324861,
    package=106101842173393,palette=127369887384101,["person-standing"]=101118444346965,
    pickaxe=111300940329486,pipette=104047428948587,plus=101123124881873,
    power=89331085993646,radar=132868138496209,["refresh-cw"]=106497040962250,
    rocket=109537053598807,save=122894934359450,["scan-eye"]=109514269737059,
    search=72296609649861,send=94849431195865,settings=106205298246017,
    ["settings-2"]=109485777305919,shield=106509993556171,
    ["shield-check"]=71867984579031,shirt=128162112866809,
    ["shopping-cart"]=79435149356304,skull=101060850237115,
    ["sliders-horizontal"]=125396339381135,sparkles=105634041692696,
    star=72669221096319,["swatch-book"]=70990631477660,sword=121406454377051,
    swords=99199363807265,target=121091323240554,terminal=102379915564176,
    ["toggle-right"]=129483325318573,["trash-2"]=126010725826757,
    user=114567720540659,users=85332511060401,["users-round"]=103880524805720,
    video=99411215690870,["volume-2"]=129861259578431,
    ["wand-sparkles"]=115623066336607,wifi=104941258142372,
    wrench=85345725497834,x=116396312853810,zap=109718589733073,
}

local function resolveIcon(name)
    if not name or name == "" then return "" end
    local id = ICONS[name]
    if id then return "rbxassetid://" .. tostring(id) end
    if tonumber(name) then return "rbxassetid://" .. name end
    return tostring(name)
end

-- ──────────────── ELEMENT FACTORY ────────────────
-- Returns a live element with get/set/Fire/SetText etc.
local function makeElement(opts, parent)
    opts = opts or {}
    local kind = opts._kind or "base"

    local ROW_H = 30
    local container = Instance.new("Frame")
    container.BackgroundColor3     = THEME.elem
    container.BackgroundTransparency = 0.02
    container.BorderSizePixel      = 0
    container.Size                 = UDim2.new(1, 0, 0, ROW_H)
    container.ClipsDescendants     = false
    container.Parent               = parent

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 7)
    c.Parent       = container

    local cStroke = Instance.new("UIStroke")
    cStroke.Color       = THEME.line
    cStroke.Transparency = 0.55
    cStroke.Thickness   = 1
    cStroke.Parent      = container

    -- Left label
    local lbl = Instance.new("TextLabel")
    lbl.Text              = tostring(opts.name or "")
    lbl.TextColor3        = THEME.dim
    lbl.Font              = Enum.Font.GothamMedium
    lbl.TextSize          = 12
    lbl.BackgroundTransparency = 1
    lbl.TextXAlignment    = Enum.TextXAlignment.Left
    lbl.Size              = UDim2.new(0.55, -8, 1, 0)
    lbl.Position          = UDim2.fromOffset(10, 0)
    lbl.ZIndex            = container.ZIndex + 1
    lbl.Parent            = container

    local el = {
        _container = container,
        _label     = lbl,
        _value     = opts.default,
        _cbs       = {},
        _list      = opts.list or opts.values or {},
    }

    if type(opts.callback) == "function" then
        table.insert(el._cbs, opts.callback)
    end

    function el:get()  return self._value end
    function el:set(v)
        self._value = v
        for _, cb in ipairs(self._cbs) do
            pcall(cb, v)
        end
    end
    function el:setlist(v) self._list = v end
    function el:Fire() self:set(self._value) end
    function el:SetText(t) self._label.Text = tostring(t or "") end

    if type(opts.flag) == "string" then
        local g = getgenv and getgenv() or _G
        if not g.Flags then g.Flags = {} end
        g.Flags[opts.flag] = el
    end

    -- ── TOGGLE ──
    if kind == "toggle" then
        local val = opts.default == true

        local trackW, trackH = 36, 18
        local track = Instance.new("Frame")
        track.AnchorPoint        = Vector2.new(1, 0.5)
        track.Position           = UDim2.new(1, -10, 0.5, 0)
        track.Size               = UDim2.fromOffset(trackW, trackH)
        track.BackgroundColor3   = val and THEME.on or THEME.off
        track.BorderSizePixel    = 0
        track.ZIndex             = container.ZIndex + 1
        track.Parent             = container

        local tc = Instance.new("UICorner")
        tc.CornerRadius = UDim.new(1, 0)
        tc.Parent       = track

        local tst = Instance.new("UIStroke")
        tst.Color       = val and THEME.on or THEME.line
        tst.Transparency = 0.5
        tst.Thickness   = 1
        tst.Parent      = track

        local knob = Instance.new("Frame")
        knob.AnchorPoint      = Vector2.new(0, 0.5)
        knob.Position         = val
            and UDim2.new(1, -(trackH - 2) - 1, 0.5, 0)
            or  UDim2.new(0, 2, 0.5, 0)
        knob.Size             = UDim2.fromOffset(trackH - 5, trackH - 5)
        knob.BackgroundColor3 = THEME.text
        knob.BorderSizePixel  = 0
        knob.ZIndex           = container.ZIndex + 2
        knob.Parent           = track

        local kc = Instance.new("UICorner")
        kc.CornerRadius = UDim.new(1, 0)
        kc.Parent       = knob

        local clickBtn = Instance.new("ImageButton")
        clickBtn.AutoButtonColor   = false
        clickBtn.BackgroundTransparency = 1
        clickBtn.ImageTransparency = 1
        clickBtn.Size              = UDim2.fromScale(1, 1)
        clickBtn.ZIndex            = container.ZIndex + 3
        clickBtn.Parent            = container

        local function refreshVisual(v)
            tween(track, 0.18, { BackgroundColor3 = v and THEME.on or THEME.off })
            tween(tst,   0.18, { Color = v and THEME.on or THEME.line })
            tween(knob,  0.18, {
                Position = v
                    and UDim2.new(1, -(trackH - 2) - 1, 0.5, 0)
                    or  UDim2.new(0, 2, 0.5, 0),
                BackgroundColor3 = v and Color3.fromRGB(255, 255, 255) or THEME.dim,
            })
            tween(lbl, 0.18, { TextColor3 = v and THEME.text or THEME.dim })
        end

        el._value = val
        refreshVisual(val)

        clickBtn.MouseButton1Click:Connect(function()
            val = not val
            el._value = val
            refreshVisual(val)
            for _, cb in ipairs(el._cbs) do pcall(cb, val) end
            toggleSound:Play()
        end)

        function el:set(v)
            val = v == true
            self._value = val
            refreshVisual(val)
            for _, cb in ipairs(self._cbs) do pcall(cb, val) end
        end

        -- sub-options: el.options
        if opts.options then
            local subSection = Instance.new("Frame")
            subSection.BackgroundTransparency = 1
            subSection.Size                   = UDim2.new(1, -12, 0, 0)
            subSection.AutomaticSize          = Enum.AutomaticSize.Y
            subSection.Position               = UDim2.new(0, 12, 1, 4)
            subSection.BorderSizePixel        = 0
            subSection.Visible                = val
            subSection.Parent                 = container

            local ssl = Instance.new("UIListLayout")
            ssl.Padding   = UDim.new(0, 3)
            ssl.SortOrder = Enum.SortOrder.LayoutOrder
            ssl.Parent    = subSection

            container.AutomaticSize = Enum.AutomaticSize.Y
            container.Size          = UDim2.new(1, 0, 0, ROW_H)

            -- Reveal sub-options when toggled on
            local function updateSub(v)
                subSection.Visible = v
            end
            updateSub(val)
            table.insert(el._cbs, updateSub)

            el.options = {}
            local function subMake(kind2, o2)
                o2 = o2 or {}
                o2._kind = kind2
                return makeElement(o2, subSection)
            end
            el.options.toggle  = function(_, o) o._kind = "toggle";  return makeElement(o, subSection) end
            el.options.slider  = function(_, o) o._kind = "slider";  return makeElement(o, subSection) end
            el.options.combo   = function(_, o) o._kind = "combo";   return makeElement(o, subSection) end
            el.options.color   = function(_, o) o._kind = "color";   return makeElement(o, subSection) end
            el.options.keybind = function(_, o) o._kind = "keybind"; return makeElement(o, subSection) end
            el.options.button  = function(_, o) o._kind = "button";  return makeElement(o, subSection) end
            el.options.label   = function(_, o) o._kind = "label";   return makeElement(o, subSection) end
        end

    -- ── SLIDER ──
    elseif kind == "slider" then
        local min  = tonumber(opts.min)  or 0
        local max  = tonumber(opts.max)  or 100
        local val  = tonumber(opts.default) or min
        local step = tonumber(opts.step) or 1
        local suffix = opts.suffix or ""

        container.Size = UDim2.new(1, 0, 0, 40)

        local valLabel = Instance.new("TextLabel")
        valLabel.AnchorPoint       = Vector2.new(1, 0)
        valLabel.Position          = UDim2.new(1, -10, 0, 0)
        valLabel.Size              = UDim2.fromOffset(60, ROW_H)
        valLabel.TextXAlignment    = Enum.TextXAlignment.Right
        valLabel.TextColor3        = THEME.text
        valLabel.Font              = Enum.Font.GothamMedium
        valLabel.TextSize          = 12
        valLabel.BackgroundTransparency = 1
        valLabel.ZIndex            = container.ZIndex + 1
        valLabel.Parent            = container

        local track = Instance.new("Frame")
        track.Position           = UDim2.new(0, 10, 1, -12)
        track.AnchorPoint        = Vector2.new(0, 1)
        track.Size               = UDim2.new(1, -20, 0, 3)
        track.BackgroundColor3   = THEME.off
        track.BorderSizePixel    = 0
        track.ZIndex             = container.ZIndex + 1
        track.Parent             = container

        local tc = Instance.new("UICorner")
        tc.CornerRadius = UDim.new(1, 0)
        tc.Parent       = track

        local fill = Instance.new("Frame")
        fill.Size             = UDim2.fromScale(0, 1)
        fill.BackgroundColor3 = THEME.accent
        fill.BorderSizePixel  = 0
        fill.ZIndex           = container.ZIndex + 2
        fill.Parent           = track

        local fc = Instance.new("UICorner")
        fc.CornerRadius = UDim.new(1, 0)
        fc.Parent       = fill

        -- Slider thumb
        local thumb = Instance.new("Frame")
        thumb.AnchorPoint     = Vector2.new(0.5, 0.5)
        thumb.Position        = UDim2.fromScale(0, 0.5)
        thumb.Size            = UDim2.fromOffset(10, 10)
        thumb.BackgroundColor3 = THEME.accent
        thumb.BorderSizePixel = 0
        thumb.ZIndex          = container.ZIndex + 3
        thumb.Parent          = track
        local thc = Instance.new("UICorner")
        thc.CornerRadius = UDim.new(1, 0)
        thc.Parent       = thumb
        local thst = Instance.new("UIStroke")
        thst.Color       = THEME.bg
        thst.Thickness   = 2
        thst.Parent      = thumb

        local function pct(v)
            return math.clamp((v - min) / math.max(max - min, 0.001), 0, 1)
        end

        local function refreshSlider(v)
            val = math.clamp(math.floor((v - min) / step + 0.5) * step + min, min, max)
            local p = pct(val)
            fill.Size       = UDim2.fromScale(p, 1)
            thumb.Position  = UDim2.fromScale(p, 0.5)
            valLabel.Text   = tostring(math.floor(val * 100 + 0.5) / 100) .. suffix
            el._value       = val
        end

        refreshSlider(val)

        local dragging = false
        local hitbox = Instance.new("ImageButton")
        hitbox.AutoButtonColor    = false
        hitbox.BackgroundTransparency = 1
        hitbox.ImageTransparency  = 1
        hitbox.Size               = UDim2.new(1, 0, 1, 0)
        hitbox.ZIndex             = container.ZIndex + 3
        hitbox.Parent             = container

        hitbox.InputBegan:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseButton1
               or inp.UserInputType == Enum.UserInputType.Touch then
                dragging = true
            end
        end)
        hitbox.InputEnded:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseButton1
               or inp.UserInputType == Enum.UserInputType.Touch then
                dragging = false
                for _, cb in ipairs(el._cbs) do pcall(cb, val) end
            end
        end)

        RunService.RenderStepped:Connect(function()
            if not dragging then return end
            local mx = UserInputService:GetMouseLocation().X
            local tp = track.AbsolutePosition.X
            local tw = track.AbsoluteSize.X
            local raw = min + (max - min) * math.clamp((mx - tp) / math.max(tw, 1), 0, 1)
            refreshSlider(raw)
        end)

        function el:set(v)
            refreshSlider(tonumber(v) or min)
            for _, cb in ipairs(self._cbs) do pcall(cb, self._value) end
        end

    -- ── BUTTON ──
    elseif kind == "button" then
        lbl.TextColor3 = THEME.text
        lbl.Size       = UDim2.new(1, -20, 1, 0)
        lbl.TextXAlignment = Enum.TextXAlignment.Center
        lbl.Position   = UDim2.fromOffset(0, 0)

        local hitbox = Instance.new("ImageButton")
        hitbox.AutoButtonColor    = false
        hitbox.BackgroundTransparency = 1
        hitbox.ImageTransparency  = 1
        hitbox.Size               = UDim2.fromScale(1, 1)
        hitbox.ZIndex             = container.ZIndex + 2
        hitbox.Parent             = container

        hitbox.MouseButton1Click:Connect(function()
            tween(container, 0.07, { BackgroundColor3 = THEME.accent, BackgroundTransparency = 0.65 })
            task.delay(0.14, function()
                tween(container, 0.2, { BackgroundColor3 = THEME.elem, BackgroundTransparency = 0.02 })
            end)
            actionSound:Play()
            for _, cb in ipairs(el._cbs) do pcall(cb) end
        end)

        hitbox.MouseEnter:Connect(function()
            tween(container, 0.15, { BackgroundColor3 = THEME.hover, BackgroundTransparency = 0 })
            tween(lbl, 0.15, { TextColor3 = THEME.accent })
            tween(cStroke, 0.15, { Color = THEME.accent, Transparency = 0.55 })
        end)
        hitbox.MouseLeave:Connect(function()
            tween(container, 0.15, { BackgroundColor3 = THEME.elem, BackgroundTransparency = 0.02 })
            tween(lbl, 0.15, { TextColor3 = THEME.text })
            tween(cStroke, 0.15, { Color = THEME.line, Transparency = 0.55 })
        end)

        function el:Fire()
            for _, cb in ipairs(self._cbs) do pcall(cb) end
        end

    -- ── COMBO ──
    elseif kind == "combo" then
        local list  = opts.list or opts.values or {}
        local val   = opts.default or (list[1])
        local multi = opts.multi == true
        el._value   = val

        local valLabel = Instance.new("TextLabel")
        valLabel.AnchorPoint       = Vector2.new(1, 0.5)
        valLabel.Position          = UDim2.new(1, -30, 0.5, 0)
        valLabel.Size              = UDim2.fromOffset(90, ROW_H)
        valLabel.TextXAlignment    = Enum.TextXAlignment.Right
        valLabel.TextColor3        = THEME.text
        valLabel.Font              = Enum.Font.GothamMedium
        valLabel.TextSize          = 11
        valLabel.TextTruncate      = Enum.TextTruncate.AtEnd
        valLabel.BackgroundTransparency = 1
        valLabel.ZIndex            = container.ZIndex + 1
        valLabel.Parent            = container
        valLabel.Text              = multi and "" or tostring(val or "")

        local arrow = Instance.new("ImageLabel")
        arrow.AnchorPoint        = Vector2.new(1, 0.5)
        arrow.Position           = UDim2.new(1, -10, 0.5, 0)
        arrow.Size               = UDim2.fromOffset(11, 11)
        arrow.Image              = "rbxassetid://71457658246709"
        arrow.ImageColor3        = THEME.dim
        arrow.BackgroundTransparency = 1
        arrow.ZIndex             = container.ZIndex + 1
        arrow.Parent             = container

        -- Dropdown panel (lazy)
        local dropdown = nil
        local open = false

        local hitbox = Instance.new("ImageButton")
        hitbox.AutoButtonColor    = false
        hitbox.BackgroundTransparency = 1
        hitbox.ImageTransparency  = 1
        hitbox.Size               = UDim2.fromScale(1, 1)
        hitbox.ZIndex             = container.ZIndex + 3
        hitbox.Parent             = container

        local function buildDropdown()
            if dropdown then dropdown:Destroy() end
            dropdown = Instance.new("Frame")
            dropdown.BackgroundColor3 = THEME.panel
            dropdown.BorderSizePixel  = 0
            dropdown.ZIndex           = 200
            dropdown.Size             = UDim2.fromOffset(container.AbsoluteSize.X, 0)
            dropdown.AutomaticSize    = Enum.AutomaticSize.Y
            dropdown.ClipsDescendants = false
            dropdown.Position         = UDim2.fromOffset(
                container.AbsolutePosition.X,
                container.AbsolutePosition.Y + container.AbsoluteSize.Y + 3
            )
            dropdown.Parent           = screenGui

            local dc = Instance.new("UICorner")
            dc.CornerRadius = UDim.new(0, 7)
            dc.Parent       = dropdown

            local dst = Instance.new("UIStroke")
            dst.Color       = THEME.accent
            dst.Transparency = 0.75
            dst.Thickness   = 1
            dst.Parent      = dropdown

            local dll = Instance.new("UIListLayout")
            dll.Padding   = UDim.new(0, 2)
            dll.SortOrder = Enum.SortOrder.LayoutOrder
            dll.Parent    = dropdown

            local udp = Instance.new("UIPadding")
            udp.PaddingTop    = UDim.new(0, 4)
            udp.PaddingBottom = UDim.new(0, 4)
            udp.PaddingLeft   = UDim.new(0, 4)
            udp.PaddingRight  = UDim.new(0, 4)
            udp.Parent        = dropdown

            for _, item in ipairs(list) do
                local row = Instance.new("TextButton")
                row.Text              = tostring(item)
                row.TextColor3        = THEME.dim
                row.Font              = Enum.Font.GothamMedium
                row.TextSize          = 12
                row.TextXAlignment    = Enum.TextXAlignment.Left
                row.BackgroundColor3  = THEME.panel
                row.BackgroundTransparency = 1
                row.BorderSizePixel   = 0
                row.AutoButtonColor   = false
                row.Size              = UDim2.new(1, 0, 0, 26)
                row.ZIndex            = 201
                row.Parent            = dropdown

                local rc = Instance.new("UICorner")
                rc.CornerRadius = UDim.new(0, 4)
                rc.Parent       = row

                local rpad = Instance.new("UIPadding")
                rpad.PaddingLeft = UDim.new(0, 6)
                rpad.Parent      = row

                row.MouseEnter:Connect(function()
                    tween(row, 0.1, { BackgroundColor3 = THEME.hover, BackgroundTransparency = 0, TextColor3 = THEME.accent })
                end)
                row.MouseLeave:Connect(function()
                    tween(row, 0.1, { BackgroundColor3 = THEME.panel, BackgroundTransparency = 1, TextColor3 = THEME.dim })
                end)
                row.MouseButton1Click:Connect(function()
                    if multi then
                        -- multi: toggle
                        if type(el._value) ~= "table" then el._value = {} end
                        local found = false
                        for i, v in ipairs(el._value) do
                            if v == item then
                                table.remove(el._value, i)
                                found = true
                                break
                            end
                        end
                        if not found then table.insert(el._value, item) end
                        local names = {}
                        for _, v in ipairs(el._value) do table.insert(names, tostring(v)) end
                        valLabel.Text = table.concat(names, ", ")
                        for _, cb in ipairs(el._cbs) do pcall(cb, el._value) end
                    else
                        el._value = item
                        valLabel.Text = tostring(item)
                        for _, cb in ipairs(el._cbs) do pcall(cb, item) end
                        dropdown:Destroy()
                        dropdown = nil
                        open = false
                        tween(arrow, 0.15, { Rotation = 0 })
                    end
                    toggleSound:Play()
                end)
            end
        end

        hitbox.MouseButton1Click:Connect(function()
            open = not open
            if open then
                buildDropdown()
                tween(arrow, 0.15, { Rotation = 180 })
            else
                if dropdown then dropdown:Destroy(); dropdown = nil end
                tween(arrow, 0.15, { Rotation = 0 })
            end
        end)

        function el:setlist(v)
            self._list = v
            list = v
            if open and dropdown then
                dropdown:Destroy()
                dropdown = nil
                open = false
                tween(arrow, 0.15, { Rotation = 0 })
            end
        end

        function el:set(v)
            self._value = v
            if type(v) == "table" then
                local names = {}
                for _, x in ipairs(v) do table.insert(names, tostring(x)) end
                valLabel.Text = table.concat(names, ", ")
            else
                valLabel.Text = tostring(v or "")
            end
            for _, cb in ipairs(self._cbs) do pcall(cb, v) end
        end

    -- ── COLOR ──
    elseif kind == "color" then
        local val = opts.default or Color3.fromRGB(255, 255, 255)
        el._value = val

        local swatch = Instance.new("Frame")
        swatch.AnchorPoint       = Vector2.new(1, 0.5)
        swatch.Position          = UDim2.new(1, -10, 0.5, 0)
        swatch.Size              = UDim2.fromOffset(22, 14)
        swatch.BackgroundColor3  = val
        swatch.BorderSizePixel   = 0
        swatch.ZIndex            = container.ZIndex + 1
        swatch.Parent            = container

        local sc = Instance.new("UICorner")
        sc.CornerRadius = UDim.new(0, 3)
        sc.Parent       = swatch

        function el:set(v)
            self._value = v
            swatch.BackgroundColor3 = v
            for _, cb in ipairs(self._cbs) do pcall(cb, v) end
        end

    -- ── KEYBIND ──
    elseif kind == "keybind" then
        local val = opts.default  -- Enum.KeyCode or nil
        el._value = val
        local listening = false

        local keyLabel = Instance.new("TextButton")
        keyLabel.AnchorPoint       = Vector2.new(1, 0.5)
        keyLabel.Position          = UDim2.new(1, -10, 0.5, 0)
        keyLabel.Size              = UDim2.fromOffset(72, 20)
        keyLabel.TextXAlignment    = Enum.TextXAlignment.Center
        keyLabel.TextColor3        = THEME.accent
        keyLabel.Font              = Enum.Font.GothamBold
        keyLabel.TextSize          = 10
        keyLabel.BackgroundColor3  = THEME.badge
        keyLabel.BorderSizePixel   = 0
        keyLabel.AutoButtonColor   = false
        keyLabel.ZIndex            = container.ZIndex + 2
        keyLabel.Text              = val and tostring(val.Name or val) or "—"
        keyLabel.Parent            = container

        local klc = Instance.new("UICorner")
        klc.CornerRadius = UDim.new(1, 0)
        klc.Parent       = keyLabel

        local klst = Instance.new("UIStroke")
        klst.Color       = THEME.accent
        klst.Transparency = 0.6
        klst.Thickness   = 1
        klst.Parent      = keyLabel

        keyLabel.MouseButton1Click:Connect(function()
            listening = true
            keyLabel.Text       = "..."
            keyLabel.TextColor3 = THEME.text
            tween(klst, 0.15, { Color = THEME.on, Transparency = 0.2 })
        end)

        UserInputService.InputBegan:Connect(function(inp, gp)
            if not listening then return end
            if inp.UserInputType == Enum.UserInputType.Keyboard then
                listening = false
                val = inp.KeyCode
                el._value = val
                keyLabel.Text       = tostring(val.Name)
                keyLabel.TextColor3 = THEME.accent
                tween(klst, 0.15, { Color = THEME.accent, Transparency = 0.6 })
                for _, cb in ipairs(el._cbs) do pcall(cb, val) end
            end
        end)

        function el:set(v)
            val = v
            self._value = v
            keyLabel.Text = v and tostring(v.Name or v) or "None"
            for _, cb in ipairs(self._cbs) do pcall(cb, v) end
        end

    -- ── LABEL ──
    elseif kind == "label" then
        lbl.TextColor3 = THEME.dim
        lbl.Size       = UDim2.new(1, -16, 1, 0)
        container.BackgroundTransparency = 1

        function el:SetText(t)
            self._label.Text = tostring(t or "")
        end
    end

    return el
end

-- ──────────────── SECTION FACTORY ────────────────
local function makeSection(opts, leftColumn, rightColumn, tabPage)
    opts = opts or {}
    local col = (opts.side == "right") and rightColumn or leftColumn

    local sectionFrame = Instance.new("Frame")
    sectionFrame.BackgroundTransparency = 1
    sectionFrame.Size                   = UDim2.new(1, 0, 0, 0)
    sectionFrame.AutomaticSize          = Enum.AutomaticSize.Y
    sectionFrame.BorderSizePixel        = 0
    sectionFrame.Parent                 = col

    -- Section header pill
    if opts.name and opts.name ~= "" then
        local headerWrap = Instance.new("Frame")
        headerWrap.BackgroundTransparency = 1
        headerWrap.Size                   = UDim2.new(1, 0, 0, 22)
        headerWrap.BorderSizePixel        = 0
        headerWrap.ZIndex                 = 5
        headerWrap.Parent                 = sectionFrame

        local pillBg = Instance.new("Frame")
        pillBg.BackgroundColor3     = THEME.badge
        pillBg.BackgroundTransparency = 0.3
        pillBg.BorderSizePixel      = 0
        pillBg.Size                 = UDim2.new(0, 0, 1, 0)
        pillBg.AutomaticSize        = Enum.AutomaticSize.X
        pillBg.Position             = UDim2.fromOffset(0, 0)
        pillBg.ZIndex               = 5
        pillBg.Parent               = headerWrap
        local pillC = Instance.new("UICorner")
        pillC.CornerRadius = UDim.new(0, 5)
        pillC.Parent       = pillBg

        local accentBar = Instance.new("Frame")
        accentBar.BackgroundColor3 = THEME.accent
        accentBar.BackgroundTransparency = 0.3
        accentBar.BorderSizePixel  = 0
        accentBar.Size             = UDim2.new(0, 2, 0.7, 0)
        accentBar.AnchorPoint      = Vector2.new(0, 0.5)
        accentBar.Position         = UDim2.new(0, 0, 0.5, 0)
        accentBar.ZIndex           = 6
        accentBar.Parent           = pillBg
        local abc = Instance.new("UICorner")
        abc.CornerRadius = UDim.new(1, 0)
        abc.Parent       = accentBar

        local header = Instance.new("TextLabel")
        header.Text               = tostring(opts.name):upper()
        header.TextColor3         = THEME.accent
        header.TextTransparency   = 0.25
        header.Font               = Enum.Font.GothamBold
        header.TextSize           = 9
        header.BackgroundTransparency = 1
        header.TextXAlignment     = Enum.TextXAlignment.Left
        header.Size               = UDim2.fromOffset(0, 22)
        header.AutomaticSize      = Enum.AutomaticSize.X
        header.ZIndex             = 6
        header.Parent             = pillBg

        local hpad = Instance.new("UIPadding")
        hpad.PaddingLeft  = UDim.new(0, 8)
        hpad.PaddingRight = UDim.new(0, 8)
        hpad.Parent       = header
    end

    local sl = Instance.new("UIListLayout")
    sl.Padding   = UDim.new(0, 3)
    sl.SortOrder = Enum.SortOrder.LayoutOrder
    sl.Parent    = sectionFrame

    -- update canvas on layout change
    sl:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        if col and col:IsA("ScrollingFrame") then
            col.CanvasSize = UDim2.fromOffset(0, sl.AbsoluteContentSize.Y + 8)
        end
    end)

    local sc = { frame = sectionFrame, column = col, page = tabPage }

    function sc:additem(item)
        item.Parent = sectionFrame
    end

    function sc:toggle(o)
        o = o or {}; o._kind = "toggle"
        return makeElement(o, sectionFrame)
    end
    function sc:slider(o)
        o = o or {}; o._kind = "slider"
        return makeElement(o, sectionFrame)
    end
    function sc:button(o)
        o = o or {}; o._kind = "button"
        local el = makeElement(o, sectionFrame)
        function el:Fire() for _, cb in ipairs(self._cbs) do pcall(cb) end end
        return el
    end
    function sc:combo(o)
        o = o or {}; o._kind = "combo"
        return makeElement(o, sectionFrame)
    end
    function sc:color(o)
        o = o or {}; o._kind = "color"
        return makeElement(o, sectionFrame)
    end
    function sc:keybind(o)
        o = o or {}; o._kind = "keybind"
        return makeElement(o, sectionFrame)
    end
    function sc:label(o)
        o = o or {}; o._kind = "label"
        local el = makeElement(o, sectionFrame)
        function el:SetText(t) self._label.Text = tostring(t or "") end
        return el
    end

    -- dropdown = alias for combo (some call-sites use this name)
    function sc:dropdown(o)
        return sc:combo(o)
    end

    -- input / textbox element
    function sc:input(o)
        o = o or {}
        local val = tostring(o.default or "")
        local container2 = Instance.new("Frame")
        container2.BackgroundColor3     = THEME.elem
        container2.BackgroundTransparency = 0.06
        container2.BorderSizePixel      = 0
        container2.Size                 = UDim2.new(1, 0, 0, 30)
        container2.Parent               = sectionFrame
        local c2 = Instance.new("UICorner")
        c2.CornerRadius = UDim.new(0, 6)
        c2.Parent       = container2
        local lbl2 = Instance.new("TextLabel")
        lbl2.Text              = tostring(o.name or "")
        lbl2.TextColor3        = THEME.dim
        lbl2.Font              = Enum.Font.GothamMedium
        lbl2.TextSize          = 12
        lbl2.BackgroundTransparency = 1
        lbl2.TextXAlignment    = Enum.TextXAlignment.Left
        lbl2.Size              = UDim2.new(0.45, -8, 1, 0)
        lbl2.Position          = UDim2.fromOffset(10, 0)
        lbl2.ZIndex            = container2.ZIndex + 1
        lbl2.Parent            = container2
        local box = Instance.new("TextBox")
        box.AnchorPoint        = Vector2.new(1, 0.5)
        box.Position           = UDim2.new(1, -8, 0.5, 0)
        box.Size               = UDim2.new(0.5, -8, 0, 20)
        box.Text               = val
        box.TextColor3         = THEME.text
        box.PlaceholderColor3  = THEME.dim
        box.PlaceholderText    = tostring(o.placeholder or "")
        box.Font               = Enum.Font.GothamMedium
        box.TextSize           = 12
        box.ClearTextOnFocus   = false
        box.BackgroundColor3   = THEME.panel
        box.BorderSizePixel    = 0
        box.ZIndex             = container2.ZIndex + 2
        box.TextXAlignment     = Enum.TextXAlignment.Left
        box.Parent             = container2
        local bc2 = Instance.new("UICorner")
        bc2.CornerRadius = UDim.new(0, 4)
        bc2.Parent       = box
        local pad2 = Instance.new("UIPadding")
        pad2.PaddingLeft  = UDim.new(0, 6)
        pad2.PaddingRight = UDim.new(0, 6)
        pad2.Parent       = box
        local cbs = {}
        if type(o.callback) == "function" then table.insert(cbs, o.callback) end
        box.FocusLost:Connect(function()
            val = box.Text
            for _, cb in ipairs(cbs) do pcall(cb, val) end
        end)
        local el = { _container = container2, _label = lbl2, _value = val, _cbs = cbs }
        function el:get() return self._value end
        function el:set(v) self._value = tostring(v or ""); box.Text = self._value end
        function el:SetText(t) self._label.Text = tostring(t or "") end
        if type(o.flag) == "string" then
            local g = getgenv and getgenv() or _G
            if not g.Flags then g.Flags = {} end
            g.Flags[o.flag] = el
        end
        return el
    end

    -- spacer / divider
    function sc:divider(o)
        o = o or {}
        local f = Instance.new("Frame")
        f.BackgroundColor3     = THEME.line
        f.BackgroundTransparency = 0.5
        f.BorderSizePixel      = 0
        f.Size                 = UDim2.new(1, 0, 0, 1)
        f.Parent               = sectionFrame
        return { _container = f }
    end
    sc.spacer = sc.divider

    return sc
end

-- ──────────────── WINDOW ────────────────
local function newWindow(opts)
    opts = opts or {}
    local winSize  = typeof(opts.size) == "UDim2"   and opts.size   or UDim2.fromOffset(620, 420)
    local sideW    = type(opts.side)   == "number"   and opts.side   or 180
    local radius   = type(opts.radius) == "number"   and opts.radius or 8
    local logoId   = type(opts.logo)   == "string"   and opts.logo   or ""

    -- Shell
    local shell = Instance.new("Frame")
    shell.AnchorPoint        = Vector2.new(0.5, 0.5)
    shell.Position           = UDim2.fromScale(0.5, 0.5)
    shell.BackgroundTransparency = 1
    shell.BorderSizePixel    = 0
    shell.Active             = true
    shell.Size               = winSize
    shell.Parent             = screenGui

    -- Shadow host
    local shadowHost = Instance.new("Frame")
    shadowHost.BackgroundTransparency = 1
    shadowHost.ZIndex                 = 1
    shadowHost.BorderSizePixel        = 0
    shadowHost.Size                   = UDim2.fromScale(1, 1)
    shadowHost.Parent                 = shell

    local sh_c = Instance.new("UICorner")
    sh_c.CornerRadius = UDim.new(0, radius)
    sh_c.Parent       = shadowHost

    -- Root canvas
    local winRoot = Instance.new("CanvasGroup")
    winRoot.BackgroundColor3  = THEME.bg
    winRoot.GroupTransparency = 1
    winRoot.Active            = true
    winRoot.ClipsDescendants  = true
    winRoot.ZIndex            = 2
    winRoot.BorderSizePixel   = 0
    winRoot.Size              = UDim2.fromScale(1, 1)
    winRoot.Parent            = shell

    local wr_c = Instance.new("UICorner")
    wr_c.CornerRadius = UDim.new(0, radius)
    wr_c.Parent       = winRoot

    -- Border
    local border = Instance.new("Frame")
    border.BackgroundTransparency = 1
    border.ZIndex                 = 20
    border.BorderSizePixel        = 0
    border.Size                   = UDim2.fromScale(1, 1)
    border.Parent                 = winRoot

    local brc = Instance.new("UICorner")
    brc.CornerRadius = UDim.new(0, radius)
    brc.Parent       = border

    -- Top accent glow strip
    local topAccentLine = Instance.new("Frame")
    topAccentLine.BackgroundColor3 = THEME.accent
    topAccentLine.BackgroundTransparency = 0.55
    topAccentLine.BorderSizePixel  = 0
    topAccentLine.Size             = UDim2.new(0.45, 0, 0, 1)
    topAccentLine.AnchorPoint      = Vector2.new(0.5, 0)
    topAccentLine.Position         = UDim2.new(0.5, 0, 0, 0)
    topAccentLine.ZIndex           = 21
    topAccentLine.Parent           = border
    local tagc = Instance.new("UIGradient")
    tagc.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 1),
        NumberSequenceKeypoint.new(0.15, 0),
        NumberSequenceKeypoint.new(0.85, 0),
        NumberSequenceKeypoint.new(1, 1),
    })
    tagc.Parent = topAccentLine

    local bst = Instance.new("UIStroke")
    bst.Color       = THEME.accent
    bst.Transparency = 0.82
    bst.Thickness   = 1
    bst.Parent      = border

    -- Sidebar
    local sidebar = Instance.new("Frame")
    sidebar.ClipsDescendants = true
    sidebar.BackgroundColor3 = THEME.side
    sidebar.ZIndex           = 5
    sidebar.BorderSizePixel  = 0
    sidebar.Size             = UDim2.new(0, sideW, 1, 0)
    sidebar.Parent           = winRoot

    local sid_c = Instance.new("UICorner")
    sid_c.CornerRadius = UDim.new(0, radius)
    sid_c.Parent       = sidebar

    -- Fill right corner of sidebar
    local sideFill = Instance.new("Frame")
    sideFill.AnchorPoint       = Vector2.new(1, 0)
    sideFill.Position          = UDim2.fromScale(1, 0)
    sideFill.BackgroundColor3  = THEME.side
    sideFill.ZIndex            = 5
    sideFill.BorderSizePixel   = 0
    sideFill.Size              = UDim2.new(0, radius, 1, 0)
    sideFill.Parent            = sidebar

    -- Sidebar divider
    local divider = Instance.new("Frame")
    divider.AnchorPoint        = Vector2.new(0.5, 0.5)
    divider.Position           = UDim2.new(0, sideW, 0.5, 0)
    divider.ZIndex             = 8
    divider.BackgroundTransparency = 1
    divider.Size               = UDim2.new(0, 16, 1, 0)
    divider.Parent             = winRoot

    local divLine = Instance.new("Frame")
    divLine.AnchorPoint        = Vector2.new(0.5, 0.5)
    divLine.Position           = UDim2.fromScale(0.5, 0.5)
    divLine.BackgroundColor3   = THEME.accent
    divLine.ZIndex             = 9
    divLine.BorderSizePixel    = 0
    divLine.Size               = UDim2.new(0, 1, 1, 0)
    divLine.Parent             = divider

    local divGrad = Instance.new("UIGradient")
    divGrad.Rotation    = 90
    divGrad.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0,    1),
        NumberSequenceKeypoint.new(0.08, 0.6),
        NumberSequenceKeypoint.new(0.5,  0.3),
        NumberSequenceKeypoint.new(0.92, 0.6),
        NumberSequenceKeypoint.new(1,    1),
    })
    divGrad.Parent = divLine

    -- Logo
    local logoImg = Instance.new("ImageLabel")
    logoImg.ImageColor3         = THEME.text
    logoImg.ScaleType           = Enum.ScaleType.Fit
    logoImg.AnchorPoint         = Vector2.new(0.5, 0)
    logoImg.Image               = logoId
    logoImg.Position            = UDim2.new(0.5, 0, 0, 14)
    logoImg.BackgroundTransparency = 1
    logoImg.ZIndex              = 7
    logoImg.BorderSizePixel     = 0
    logoImg.Size                = UDim2.fromOffset(math.min(sideW - 20, 80), math.min(sideW - 20, 80))
    logoImg.Parent              = sidebar

    -- Logo separator
    local logoSep = Instance.new("Frame")
    logoSep.AnchorPoint        = Vector2.new(0.5, 0)
    logoSep.BackgroundTransparency = 0.55
    logoSep.Position           = UDim2.new(0.5, 0, 0, 104)
    logoSep.BackgroundColor3   = THEME.line
    logoSep.ZIndex             = 7
    logoSep.BorderSizePixel    = 0
    logoSep.Size               = UDim2.new(1, -28, 0, 1)
    logoSep.Parent             = sidebar

    -- Tabs list
    local tabsList = Instance.new("ScrollingFrame")
    tabsList.Active             = false
    tabsList.ScrollBarThickness = 0
    tabsList.BackgroundTransparency = 1
    tabsList.Position           = UDim2.fromOffset(6, 118)
    tabsList.CanvasSize         = UDim2.new()
    tabsList.ZIndex             = 7
    tabsList.BorderSizePixel    = 0
    tabsList.Size               = UDim2.new(1, -12, 1, -190)
    tabsList.Parent             = sidebar

    local tabsLayout = Instance.new("UIListLayout")
    tabsLayout.Padding   = UDim.new(0, 3)
    tabsLayout.SortOrder = Enum.SortOrder.LayoutOrder
    tabsLayout.Parent    = tabsList

    tabsLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        tabsList.CanvasSize = UDim2.fromOffset(0, tabsLayout.AbsoluteContentSize.Y + 4)
    end)

    -- User card at bottom of sidebar
    local userSep = Instance.new("Frame")
    userSep.AnchorPoint        = Vector2.new(0.5, 1)
    userSep.BackgroundTransparency = 0.55
    userSep.Position           = UDim2.new(0.5, 0, 1, -56)
    userSep.BackgroundColor3   = THEME.line
    userSep.ZIndex             = 7
    userSep.BorderSizePixel    = 0
    userSep.Size               = UDim2.new(1, -28, 0, 1)
    userSep.Parent             = sidebar

    local userCard = Instance.new("Frame")
    userCard.AnchorPoint         = Vector2.new(0.5, 1)
    userCard.BackgroundTransparency = 0.25
    userCard.Position            = UDim2.new(0.5, 0, 1, -8)
    userCard.BackgroundColor3    = THEME.head
    userCard.ZIndex              = 7
    userCard.BorderSizePixel     = 0
    userCard.Size                = UDim2.new(1, -12, 0, 40)
    userCard.Parent              = sidebar

    local ucc = Instance.new("UICorner")
    ucc.CornerRadius = UDim.new(0, 7)
    ucc.Parent       = userCard

    local ucst = Instance.new("UIStroke")
    ucst.Color       = THEME.accent
    ucst.Transparency = 0.78
    ucst.Thickness   = 1
    ucst.Parent      = userCard

    local ucAvatar = Instance.new("ImageLabel")
    ucAvatar.ScaleType          = Enum.ScaleType.Crop
    ucAvatar.AnchorPoint        = Vector2.new(0, 0.5)
    ucAvatar.Image              = "rbxthumb://type=AvatarHeadShot&id=" .. Players.LocalPlayer.UserId .. "&w=150&h=150"
    ucAvatar.Position           = UDim2.new(0, 6, 0.5, 0)
    ucAvatar.BackgroundColor3   = THEME.panel
    ucAvatar.ZIndex             = 8
    ucAvatar.BorderSizePixel    = 0
    ucAvatar.Size               = UDim2.fromOffset(28, 28)
    ucAvatar.Parent             = userCard

    local ucAc = Instance.new("UICorner")
    ucAc.CornerRadius = UDim.new(1, 0)
    ucAc.Parent       = ucAvatar

    local dispName = Instance.new("TextLabel")
    dispName.TextColor3         = THEME.text
    dispName.Text               = Players.LocalPlayer.DisplayName
    dispName.BackgroundTransparency = 1
    dispName.TextXAlignment     = Enum.TextXAlignment.Left
    dispName.Font               = Enum.Font.GothamBold
    dispName.Position           = UDim2.fromOffset(42, 5)
    dispName.TextTruncate       = Enum.TextTruncate.AtEnd
    dispName.ZIndex             = 8
    dispName.TextSize           = 12
    dispName.Size               = UDim2.new(1, -48, 0, 14)
    dispName.Parent             = userCard

    local userName = Instance.new("TextLabel")
    userName.TextColor3         = THEME.dim
    userName.TextTransparency   = 0.3
    userName.Text               = "@" .. Players.LocalPlayer.Name
    userName.BackgroundTransparency = 1
    userName.TextXAlignment     = Enum.TextXAlignment.Left
    userName.Font               = Enum.Font.GothamBold
    userName.Position           = UDim2.fromOffset(42, 21)
    userName.TextTruncate       = Enum.TextTruncate.AtEnd
    userName.ZIndex             = 8
    userName.TextSize           = 10
    userName.Size               = UDim2.new(1, -48, 0, 12)
    userName.Parent             = userCard

    Players.LocalPlayer:GetPropertyChangedSignal("DisplayName"):Connect(function()
        dispName.Text = Players.LocalPlayer.DisplayName
    end)

    -- Main content area
    local mainContent = Instance.new("Frame")
    mainContent.BackgroundColor3  = THEME.bg
    mainContent.Position          = UDim2.fromOffset(sideW, 0)
    mainContent.ClipsDescendants  = true
    mainContent.ZIndex            = 1
    mainContent.BorderSizePixel   = 0
    mainContent.Size              = UDim2.new(1, -sideW, 1, 0)
    mainContent.Parent            = winRoot

    local mc_c = Instance.new("UICorner")
    mc_c.CornerRadius = UDim.new(0, radius)
    mc_c.Parent       = mainContent

    local mcFill = Instance.new("Frame")
    mcFill.BackgroundColor3  = THEME.bg
    mcFill.ZIndex            = 1
    mcFill.BorderSizePixel   = 0
    mcFill.Size              = UDim2.new(0, radius, 1, 0)
    mcFill.Parent            = mainContent

    -- Pages container
    local pagesContainer = Instance.new("Frame")
    pagesContainer.Position           = UDim2.fromOffset(16, 16)
    pagesContainer.ZIndex             = 4
    pagesContainer.BackgroundTransparency = 1
    pagesContainer.Size               = UDim2.new(1, -32, 1, -32)
    pagesContainer.Parent             = mainContent

    -- Drag
    do
        local dragging, dragStart, startPos = false, nil, nil
        local titleBar = Instance.new("Frame")
        titleBar.BackgroundTransparency = 1
        titleBar.Size                   = UDim2.new(1, 0, 0, 30)
        titleBar.ZIndex                 = 10
        titleBar.Parent                 = mainContent

        titleBar.InputBegan:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging  = true
                dragStart = inp.Position
                startPos  = shell.Position
            end
        end)
        UserInputService.InputEnded:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = false
            end
        end)
        UserInputService.InputChanged:Connect(function(inp)
            if dragging and inp.UserInputType == Enum.UserInputType.MouseMovement then
                local delta = inp.Position - dragStart
                shell.Position = UDim2.new(
                    startPos.X.Scale, startPos.X.Offset + delta.X,
                    startPos.Y.Scale, startPos.Y.Offset + delta.Y
                )
            end
        end)
    end

    -- Fade in
    shell.Visible = true
    windowOpenSound:Play()
    local fadeConn2
    fadeConn2 = RunService.RenderStepped:Connect(function(dt)
        local t = winRoot.GroupTransparency
        if t <= 0 then
            winRoot.GroupTransparency = 0
            fadeConn2:Disconnect()
            return
        end
        winRoot.GroupTransparency = math.max(0, t - dt * 7)
    end)

    -- Active tab tracking
    local activePage = nil
    local activeTabBtn = nil
    local allTabs = {} -- {btn, page, accent, icon, title}

    local function deactivateAll()
        for _, td in ipairs(allTabs) do
            tween(td.btn, 0.2, { BackgroundTransparency = 1, BackgroundColor3 = THEME.side })
            tween(td.accent, 0.2, { Size = UDim2.new(0, 2, 0, 0), BackgroundTransparency = 1 })
            tween(td.icon, 0.2, { ImageColor3 = THEME.dim, ImageTransparency = 0.5 })
            tween(td.title, 0.2, { TextColor3 = THEME.dim, TextTransparency = 0.5 })
            if td.page then td.page.Visible = false end
        end
    end

    local function activateTab(td)
        deactivateAll()
        tween(td.btn, 0.2, { BackgroundTransparency = 0.72, BackgroundColor3 = THEME.accent })
        tween(td.accent, 0.2, { Size = UDim2.new(0, 2, 0, 18), BackgroundTransparency = 0 })
        tween(td.icon, 0.2, { ImageColor3 = THEME.accent, ImageTransparency = 0 })
        tween(td.title, 0.2, { TextColor3 = THEME.text, TextTransparency = 0 })
        if td.page then td.page.Visible = true end
        activePage = td.page
        toggleSound:Play()
    end

    -- Window controller
    local winCtrl = {}

    function winCtrl:tab(tabOpts)
        tabOpts = tabOpts or {}
        local tabName = tostring(tabOpts.name or "Tab")
        local tabTip  = tostring(tabOpts.tip  or "")
        local tabIcon = resolveIcon(tabOpts.icon)

        -- Sidebar button
        local tabBtn = Instance.new("Frame")
        tabBtn.LayoutOrder         = #allTabs + 1
        tabBtn.BackgroundColor3    = THEME.side
        tabBtn.BackgroundTransparency = 1
        tabBtn.ZIndex              = 7
        tabBtn.BorderSizePixel     = 0
        tabBtn.Size                = UDim2.new(1, 0, 0, 40)
        tabBtn.Parent              = tabsList

        local tbc = Instance.new("UICorner")
        tbc.CornerRadius = UDim.new(0, 6)
        tbc.Parent       = tabBtn

        local tabStroke = Instance.new("UIStroke")
        tabStroke.Color       = THEME.line
        tabStroke.Transparency = 1
        tabStroke.Parent      = tabBtn

        local tabAccent = Instance.new("Frame")
        tabAccent.AnchorPoint        = Vector2.new(0, 0.5)
        tabAccent.BackgroundTransparency = 1
        tabAccent.Position           = UDim2.new(0, 0, 0.5, 0)
        tabAccent.BackgroundColor3   = THEME.accent
        tabAccent.ZIndex             = 8
        tabAccent.BorderSizePixel    = 0
        tabAccent.Size               = UDim2.new(0, 2, 0, 0)
        tabAccent.Parent             = tabBtn

        local tac = Instance.new("UICorner")
        tac.CornerRadius = UDim.new(1, 0)
        tac.Parent       = tabAccent

        local tabIconImg = Instance.new("ImageLabel")
        tabIconImg.ImageColor3        = THEME.dim
        tabIconImg.ImageTransparency  = 0.4
        tabIconImg.AnchorPoint        = Vector2.new(0, 0.5)
        tabIconImg.Image              = tabIcon
        tabIconImg.ScaleType          = Enum.ScaleType.Fit
        tabIconImg.Position           = UDim2.new(0, 9, 0.5, 0)
        tabIconImg.ZIndex             = 8
        tabIconImg.BackgroundTransparency = 1
        tabIconImg.Size               = UDim2.fromOffset(15, 15)
        tabIconImg.Parent             = tabBtn

        local tabTitleLbl = Instance.new("TextLabel")
        tabTitleLbl.TextColor3         = THEME.dim
        tabTitleLbl.TextTransparency   = 0.4
        tabTitleLbl.Text               = tabName
        tabTitleLbl.BackgroundTransparency = 1
        tabTitleLbl.TextXAlignment     = Enum.TextXAlignment.Left
        tabTitleLbl.Font               = Enum.Font.GothamBold
        tabTitleLbl.Position           = UDim2.new(0, 30, 0, 5)
        tabTitleLbl.TextTruncate       = Enum.TextTruncate.AtEnd
        tabTitleLbl.ZIndex             = 8
        tabTitleLbl.TextSize           = 12
        tabTitleLbl.Size               = UDim2.new(1, -38, 0, 15)
        tabTitleLbl.Parent             = tabBtn

        local tabTipLbl = Instance.new("TextLabel")
        tabTipLbl.TextColor3         = THEME.dim
        tabTipLbl.TextTransparency   = 0.7
        tabTipLbl.Text               = tabTip
        tabTipLbl.BackgroundTransparency = 1
        tabTipLbl.TextXAlignment     = Enum.TextXAlignment.Left
        tabTipLbl.Font               = Enum.Font.GothamMedium
        tabTipLbl.Position           = UDim2.new(0, 30, 0, 21)
        tabTipLbl.TextTruncate       = Enum.TextTruncate.AtEnd
        tabTipLbl.ZIndex             = 8
        tabTipLbl.TextSize           = 9
        tabTipLbl.Size               = UDim2.new(1, -38, 0, 11)
        tabTipLbl.Parent             = tabBtn

        local tabHit = Instance.new("ImageButton")
        tabHit.AutoButtonColor    = false
        tabHit.BackgroundTransparency = 1
        tabHit.ImageTransparency  = 1
        tabHit.Size               = UDim2.fromScale(1, 1)
        tabHit.ZIndex             = 9
        tabHit.Parent             = tabBtn

        -- Tab page
        local tabPage = Instance.new("Frame")
        tabPage.Visible              = false
        tabPage.ZIndex               = 4
        tabPage.BackgroundTransparency = 1
        tabPage.Size                 = UDim2.fromScale(1, 1)
        tabPage.Parent               = pagesContainer

        -- Two-column layout inside tab page
        local leftColumn = Instance.new("ScrollingFrame")
        leftColumn.ZIndex               = 5
        leftColumn.BackgroundTransparency = 1
        leftColumn.Position             = UDim2.new(0, 0, 0, 0)
        leftColumn.CanvasSize           = UDim2.new()
        leftColumn.ScrollBarThickness   = 0
        leftColumn.BorderSizePixel      = 0
        leftColumn.Size                 = UDim2.new(0.5, -4, 1, 0)
        leftColumn.Parent               = tabPage

        local lcl = Instance.new("UIListLayout")
        lcl.Padding   = UDim.new(0, 6)
        lcl.SortOrder = Enum.SortOrder.LayoutOrder
        lcl.Parent    = leftColumn

        lcl:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            leftColumn.CanvasSize = UDim2.fromOffset(0, lcl.AbsoluteContentSize.Y + 8)
        end)

        local rightColumn = Instance.new("ScrollingFrame")
        rightColumn.ZIndex               = 5
        rightColumn.BackgroundTransparency = 1
        rightColumn.Position             = UDim2.new(0.5, 4, 0, 0)
        rightColumn.CanvasSize           = UDim2.new()
        rightColumn.ScrollBarThickness   = 0
        rightColumn.BorderSizePixel      = 0
        rightColumn.Size                 = UDim2.new(0.5, -4, 1, 0)
        rightColumn.Parent               = tabPage

        local rcl = Instance.new("UIListLayout")
        rcl.Padding   = UDim.new(0, 6)
        rcl.SortOrder = Enum.SortOrder.LayoutOrder
        rcl.Parent    = rightColumn

        rcl:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            rightColumn.CanvasSize = UDim2.fromOffset(0, rcl.AbsoluteContentSize.Y + 8)
        end)

        local td = {
            btn    = tabBtn,
            page   = tabPage,
            accent = tabAccent,
            icon   = tabIconImg,
            title  = tabTitleLbl,
        }
        table.insert(allTabs, td)

        tabHit.MouseButton1Click:Connect(function()
            activateTab(td)
        end)

        tabHit.MouseEnter:Connect(function()
            if activePage ~= tabPage then
                tween(tabBtn, 0.12, { BackgroundTransparency = 0.88, BackgroundColor3 = THEME.hover })
                tween(tabIconImg, 0.12, { ImageColor3 = THEME.text, ImageTransparency = 0.2 })
            end
        end)
        tabHit.MouseLeave:Connect(function()
            if activePage ~= tabPage then
                tween(tabBtn, 0.12, { BackgroundTransparency = 1, BackgroundColor3 = THEME.side })
                tween(tabIconImg, 0.12, { ImageColor3 = THEME.dim, ImageTransparency = 0.5 })
            end
        end)

        -- Auto-activate first tab
        if #allTabs == 1 then
            activateTab(td)
        end

        -- Tab controller
        local tabCtrl = {}
        tabCtrl.page = tabPage

        function tabCtrl:section(o)
            return makeSection(o, leftColumn, rightColumn, tabPage)
        end

        -- Clone stub (3D viewport not available in executor context)
        function tabCtrl:clone(o)
            o = o or {}
            local stub = { viewport = nil }
            if type(o.callback) == "function" then
                pcall(o.callback, nil, { viewport = nil, parts = {}, active = false })
            end
            function stub:onrender(fn)
                if type(fn) == "function" then
                    pcall(fn, { active = false, viewport = nil, parts = {} })
                end
            end
            return stub
        end

        -- Gallery stub
        function tabCtrl:gallery(o)
            o = o or {}
            local cbs = {}
            if type(o.callback) == "function" then table.insert(cbs, o.callback) end
            local val = o.default
            local g = {}
            function g:get()         return val end
            function g:set(v)        val = v; for _, cb in ipairs(cbs) do pcall(cb, v) end end
            function g:setdata()     end
            function g:setdefault(v) val = v end
            function g:refresh()     end
            function g:clear()       val = nil end
            function g:all()         return {} end
            function g:search()      end
            return g
        end

        -- Color at tab level (theme recolor)
        function tabCtrl:color(o)
            o = o or {}
            return makeSection({ side = o.side or "left" }, leftColumn, rightColumn, tabPage):color(o)
        end

        -- Sub-tab stub (creates a section that acts as a sub-page)
        function tabCtrl:sub(o)
            local sc = self:section({ side = "left" })
            function sc:section(o2) return tabCtrl:section(o2) end
            function sc:clone(o2)   return tabCtrl:clone(o2) end
            function sc:gallery(o2) return tabCtrl:gallery(o2) end
            function sc:color(o2)   return tabCtrl:color(o2) end
            function sc:sub()       return tabCtrl:sub({}) end
            function sc:setopen()   end
            return sc
        end

        function tabCtrl:setopen() end

        -- configs: noop stub (config system not implemented)
        function tabCtrl:configs() end

        -- setfury: noop stub
        function tabCtrl:setfury() end

        -- dropdown at tab level routes to section
        function tabCtrl:dropdown(o)
            return self:section({ side = o and o.side or "left" }):dropdown(o)
        end

        return tabCtrl
    end

    -- toggle visibility
    local shown = true
    function winCtrl:toggle()
        shown = not shown
        if shown then
            shell.Visible = true
            winRoot.GroupTransparency = 1
            local fc
            fc = RunService.RenderStepped:Connect(function(dt)
                local t = winRoot.GroupTransparency
                if t <= 0 then winRoot.GroupTransparency = 0; fc:Disconnect(); return end
                winRoot.GroupTransparency = math.max(0, t - dt * 8)
            end)
        else
            local fc
            fc = RunService.RenderStepped:Connect(function(dt)
                local t = winRoot.GroupTransparency
                if t >= 1 then
                    winRoot.GroupTransparency = 1
                    shell.Visible = false
                    fc:Disconnect()
                    return
                end
                winRoot.GroupTransparency = math.min(1, t + dt * 8)
            end)
        end
        toggleSound:Play()
    end

    function winCtrl:setbind(key)
        -- key is Enum.KeyCode or string
        local kc
        if typeof(key) == "EnumItem" then
            kc = key
        elseif type(key) == "string" then
            pcall(function() kc = Enum.KeyCode[key] end)
        end
        if kc then
            UserInputService.InputBegan:Connect(function(inp, gp)
                if gp then return end
                if inp.KeyCode == kc then
                    winCtrl:toggle()
                end
            end)
        end
    end

    if opts.bind then
        winCtrl:setbind(opts.bind)
    end

    function winCtrl:setlogo(id)
        logoImg.Image = tostring(id or "")
    end

    function winCtrl:setsize(newSize)
        tween(shell, 0.18, { Size = newSize })
    end

    function winCtrl:render()
        shell.Visible = true
        winRoot.GroupTransparency = 1
        local fc
        fc = RunService.RenderStepped:Connect(function(dt)
            local t = winRoot.GroupTransparency
            if t <= 0 then winRoot.GroupTransparency = 0; fc:Disconnect(); return end
            winRoot.GroupTransparency = math.max(0, t - dt * 7)
        end)
    end

    winCtrl.body  = mainContent
    winCtrl.pages = pagesContainer
    winCtrl.root  = winRoot
    winCtrl.shell = shell
    winCtrl.side  = sidebar
    winCtrl.tabs  = tabsList

    return winCtrl
end

-- ──────────────── PUBLIC API ────────────────
getgenv().shitaroebet = {
    alive      = true,
    browsers   = {},
    conns      = {},
    cursor     = false,
    cursorlist = {},
    cursors    = {},
    dir        = "shitarocfgs",
    drawmask   = {},
    forcemobile = false,
    hotkeys    = true,
    icons      = ICONS,
    logo       = "",
    mobile     = false,
    noticecap  = 5,
    notices    = true,
    opener     = false,
    scale      = 1,
    scr        = screenGui,
    shown      = false,
    sound      = false,
    theme      = THEME,
    tone       = "Click",
    tonelist   = { "Click", "Bubble" },
    tones      = {},
    ver        = "67",
    watermark  = true,
    wins       = {},

    -- ── window ──
    window = function(_, opts)
        return newWindow(opts)
    end,

    -- ── notify ──
    notify = function(_, opts)
        showNotif(opts)
    end,

    -- ── watermark ──
    setwatermark = function(_, v)
        watermarkOverlay.Visible = v ~= false
    end,

    -- ── opener button ──
    openerspot  = function() end,
    setopener   = function() end,
    openericon  = function() end,

    -- ── hotkeys ──
    hotkeyspot  = function() end,
    sethotkeys  = function() end,

    -- ── misc stubs (preserve API surface) ──
    apply       = function() end,
    ask         = function() end,
    browser     = function() end,
    chime       = function() end,
    closeask    = function() end,
    closepopup  = function() end,
    erase       = function() end,
    fetch       = function() end,
    freeze      = function() end,
    hook        = function() end,
    popup       = function() end,
    recolor     = function() end,
    retitle     = function() end,
    roster      = function()
        if not isfolder("shitarocfgs") then
            pcall(makefolder, "shitarocfgs")
        end
    end,
    setcursor   = function() end,
    setnotices  = function() end,
    setsound    = function() end,
    setstyle    = function() end,
    settone     = function() end,
    store       = function() end,
    thaw        = function() end,
    unhook      = function() end,
    wake        = function() end,
    watch       = function()
        pcall(makefolder, "shitarocfgs")
    end,
    watermarkspot = function() end,

    -- ── unload ──
    unload = function()
        screenGui:Destroy()
        getgenv().shitaroebet = nil
    end,

    -- ── logging (event notifier) ──
    _log = function(_, icon, text, dur, color)
        showLog(icon, text, dur, color)
    end,
}

return getgenv().shitaroebet
