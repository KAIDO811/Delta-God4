-- DELTA GOD V24 | THE MASTER FIX & RECOVERY 👑
-- Key: HACK
local sg = Instance.new("ScreenGui", game.CoreGui)

-- [ 1. نظام المفتاح ]
local keyFrame = Instance.new("Frame", sg)
keyFrame.Size = UDim2.new(0, 300, 0, 200)
keyFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
keyFrame.BackgroundColor3 = Color3.fromRGB(30, 0, 0)
Instance.new("UICorner", keyFrame).CornerRadius = UDim.new(0, 15)

local keyInput = Instance.new("TextBox", keyFrame)
keyInput.Size = UDim2.new(0, 240, 0, 40)
keyInput.Position = UDim2.new(0.5, -120, 0, 70)
keyInput.PlaceholderText = "Enter Key (HACK)..."
keyInput.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", keyInput)

local enterBtn = Instance.new("TextButton", keyFrame)
enterBtn.Size = UDim2.new(0, 150, 0, 40)
enterBtn.Position = UDim2.new(0.5, -75, 0, 130)
enterBtn.Text = "LOGIN"
enterBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
enterBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", enterBtn)

-- [ 2. القائمة الرئيسية ]
local frame = Instance.new("Frame", sg)
frame.Size = UDim2.new(0, 280, 0, 520)
frame.Position = UDim2.new(0.5, -140, 0.5, -260)
frame.BackgroundColor3 = Color3.fromRGB(15, 0, 0)
frame.Visible = false
frame.Active = true
frame.Draggable = true
Instance.new("UICorner", frame)

-- الصورة الدائرية (ID الخاص بك)
local profileImg = Instance.new("ImageLabel", frame)
profileImg.Size = UDim2.new(0, 45, 0, 45)
profileImg.Position = UDim2.new(0, 10, 0, 5)
profileImg.Image = "rbxassetid://121111539317250"
profileImg.BackgroundTransparency = 1
Instance.new("UICorner", profileImg).CornerRadius = UDim.new(1, 0)

-- Rainbow Title
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, -70, 0, 55)
title.Position = UDim2.new(0, 60, 0, 0)
title.Text = "DELTA GOD V24"
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.TextSize = 20
title.TextXAlignment = Enum.TextXAlignment.Left
task.spawn(function()
    while task.wait() do title.TextColor3 = Color3.fromHSV(tick() % 5 / 5, 1, 1) end
end)

-- زر التصغير المستعاد
local miniBtn = Instance.new("TextButton", frame)
miniBtn.Size = UDim2.new(0, 30, 0, 30)
miniBtn.Position = UDim2.new(1, -35, 0, 12)
miniBtn.Text = "-"
miniBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
miniBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", miniBtn)

-- القائمة القابلة للتمرير
local mainScroll = Instance.new("ScrollingFrame", frame)
mainScroll.Size = UDim2.new(1, -10, 1, -180)
mainScroll.Position = UDim2.new(0, 5, 0, 60)
mainScroll.BackgroundTransparency = 1
mainScroll.CanvasSize = UDim2.new(0, 0, 4, 0)
mainScroll.ScrollBarThickness = 2
Instance.new("UIListLayout", mainScroll).Padding = UDim.new(0, 8)

local function createBtn(name, color, func)
    local btn = Instance.new("TextButton", mainScroll)
    btn.Size = UDim2.new(0, 240, 0, 40)
    btn.Text = name
    btn.BackgroundColor3 = color
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.SourceSansBold
    Instance.new("UICorner", btn)
    btn.MouseButton1Click:Connect(func)
end

-- [ الميزات ]
createBtn("🛡️ Auto Block (مطور)", Color3.fromRGB(0, 80, 150), function()
    _G.ABlock = not _G.ABlock
    task.spawn(function()
        while _G.ABlock do
            task.wait(0.1)
            game:GetService("VirtualUser"):ClickButton1(Vector2.new(0,0)) -- محاكاة الصد
        end
    end)
end)

createBtn("🚫 No Yield (ثبات كامل)", Color3.fromRGB(100, 100, 0), function()
    _G.NoYield = not _G.NoYield
    while _G.NoYield do
        task.wait()
        pcall(function()
            local hum = game.Players.LocalPlayer.Character.Humanoid
            hum.PlatformStand = false
            hum:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
            hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
            hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
        end)
    end
end)

createBtn("📏 Reach (مدى)", Color3.fromRGB(200, 100, 0), function()
    pcall(function()
        local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        if tool and tool:FindFirstChild("Handle") then
            tool.Handle.Size = Vector3.new(20,20,20)
            tool.Handle.Transparency = 0.8
        end
    end)
end)

createBtn("👁️ ESP (كشف)", Color3.fromRGB(255, 0, 0), function()
    for _, v in pairs(game.Players:GetPlayers()) do if v ~= game.Players.LocalPlayer and v.Character then local h = v.Character:FindFirstChild("Highlight") or Instance.new("Highlight", v.Character) h.FillColor = Color3.fromRGB(255, 0, 0) end end
end)

createBtn("✈️ Fly (طيران)", Color3.fromRGB(100, 0, 150), function()
    _G.Fly = not _G.Fly
    local r = game.Players.LocalPlayer.Character.HumanoidRootPart
    local bv = Instance.new("BodyVelocity", r) bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
    task.spawn(function() while _G.Fly do bv.velocity = workspace.CurrentCamera.CFrame.LookVector * 100 task.wait() end bv:Destroy() end)
end)

createBtn("⚡ Speed 120", Color3.fromRGB(0, 150, 0), function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120 end)
CreateBtn("⚔️ Kill Aura", Color3.fromRGB(255, 0, 0), function() 
    _G.A = not _G.A 
    while _G.A do 
        task.wait(0.1) 
        pcall(function()
            for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("HumanoidRootPart") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 20 then
                    -- محاكاة الضرب باتجاه العدو
                    game:GetService("VirtualUser"):ClickButton1(Vector2.new(0,0))
                    -- يمكنك إضافة سطر هنا لجعل الشخصية تنظر للعدو إذا أردت
                end
            end
        end)
    end 
end)

-- [ 3. قائمة الانتقال المستعادة ]
local tpPanel = Instance.new("ScrollingFrame", frame)
tpPanel.Size = UDim2.new(1, -20, 0, 80)
tpPanel.Position = UDim2.new(0, 10, 1, -90)
tpPanel.BackgroundColor3 = Color3.fromRGB(40, 0, 0)
tpPanel.CanvasSize = UDim2.new(0, 0, 10, 0)
tpPanel.ScrollBarThickness = 1
Instance.new("UICorner", tpPanel)
Instance.new("UIListLayout", tpPanel).Padding = UDim.new(0, 5)

local function updateTP()
    for _, c in pairs(tpPanel:GetChildren()) do if c:IsA("TextButton") then c:Destroy() end end
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer then
            local b = Instance.new("TextButton", tpPanel)
            b.Size = UDim2.new(1, 0, 0, 25)
            b.Text = "TP: "..p.DisplayName
            b.BackgroundColor3 = Color3.fromRGB(70, 0, 0)
            b.TextColor3 = Color3.fromRGB(255,255,255)
            Instance.new("UICorner", b)
            b.MouseButton1Click:Connect(function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame end)
        end
    end
end
updateTP()

-- [ نظام الدخول والتصغير ]
enterBtn.MouseButton1Click:Connect(function() if keyInput.Text == "HACK" then keyFrame.Visible = false frame.Visible = true end end)

local isMin = false
miniBtn.MouseButton1Click:Connect(function()
    isMin = not isMin
    frame:TweenSize(isMin and UDim2.new(0, 280, 0, 55) or UDim2.new(0, 280, 0, 520), "Out", "Quart", 0.3, true)
    mainScroll.Visible, tpPanel.Visible = not isMin, not isMin
    miniBtn.Text = isMin and "+" or "-"
end)

createBtn("❌ CLOSE", Color3.fromRGB(0,0,0), function() sg:Destroy() end)
