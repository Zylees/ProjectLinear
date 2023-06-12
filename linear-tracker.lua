local Library = require(game:GetService("ReplicatedStorage"):WaitForChild("Library"))

local StartingDiamonds = Library.Save.Get().Diamonds
local StartingTick = tick()

local LinearFarmer = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local DropShadow = Instance.new("ImageLabel")
local UIGradient = Instance.new("UIGradient")
local DiamondIcon = Instance.new("ImageLabel")
local Statistics = Instance.new("Frame")
local Diamonds = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local TimeTaken = Instance.new("TextLabel")
local UIPadding_2 = Instance.new("UIPadding")
local CurrentSessionStats = Instance.new("TextLabel")
local UIPadding_3 = Instance.new("UIPadding")
local GlobalStats = Instance.new("TextLabel")
local UIPadding_4 = Instance.new("UIPadding")
local TotalDiamonds = Instance.new("TextLabel")
local UIPadding_5 = Instance.new("UIPadding")
local Logo = Instance.new("ImageLabel")
local UIGradient_2 = Instance.new("UIGradient")
local BG = Instance.new("Frame")


--[[task.spawn(function()
	while task.wait() do
		if not game.Lighting:FindFirstChild("LinearFarmerBlur") then
			local Blur = Instance.new("BlurEffect", game.Lighting)
			Blur.Name = "LinearFarmerBlur"
			Blur.Size = 18
		end
	end
end)]]

LinearFarmer.Name = "LinearFarmer"
LinearFarmer.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
LinearFarmer.IgnoreGuiInset = true

BG.Name = "BG"
BG.Parent = LinearFarmer
BG.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
BG.BackgroundTransparency = 0.250
BG.Size = UDim2.new(1, 0, 1, 0)
BG.ZIndex = -2

Main.Name = "Main"
Main.Parent = LinearFarmer
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 380, 0, 250)
Main.ZIndex = 0

UICorner.Parent = Main

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.GothamBold
Title.Text = "Linear Mystic Farmer"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16.000

DropShadow.Name = "DropShadow"
DropShadow.Parent = Main
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 53, 1, 53)
DropShadow.ZIndex = -1
DropShadow.Image = "rbxassetid://6014261993"
DropShadow.ImageTransparency = 0.500
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 136, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(67, 255, 255))}
UIGradient.Rotation = 90
UIGradient.Parent = DropShadow

DiamondIcon.Name = "DiamondIcon"
DiamondIcon.Parent = Main
DiamondIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DiamondIcon.BackgroundTransparency = 1.000
DiamondIcon.Position = UDim2.new(0, 4, 0, 4)
DiamondIcon.Size = UDim2.new(0, 22, 0, 22)
DiamondIcon.Image = "rbxassetid://13719367674"

Statistics.Name = "Statistics"
Statistics.Parent = Main
Statistics.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Statistics.BackgroundTransparency = 1.000
Statistics.Position = UDim2.new(0, 0, 0, 35)
Statistics.Size = UDim2.new(1, 0, 1, -50)

Diamonds.Name = "Diamonds"
Diamonds.Parent = Statistics
Diamonds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Diamonds.BackgroundTransparency = 1.000
Diamonds.Position = UDim2.new(0, 0, 0, 20)
Diamonds.Size = UDim2.new(0, 120, 0, 20)
Diamonds.Font = Enum.Font.GothamMedium
Diamonds.Text = "<font color=\"#00aaff\">Diamonds Earned:</font> 16,555,098\\n"
Diamonds.TextColor3 = Color3.fromRGB(255, 255, 255)
Diamonds.TextSize = 14.000
Diamonds.TextXAlignment = Enum.TextXAlignment.Left
Diamonds.TextYAlignment = Enum.TextYAlignment.Top
Diamonds.RichText = true

UIPadding.Parent = Diamonds
UIPadding.PaddingLeft = UDim.new(0, 8)

TimeTaken.Name = "Time Taken"
TimeTaken.Parent = Statistics
TimeTaken.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TimeTaken.BackgroundTransparency = 1.000
TimeTaken.Position = UDim2.new(0, 0, 0, 40)
TimeTaken.Size = UDim2.new(0, 120, 0, 20)
TimeTaken.Font = Enum.Font.GothamMedium
TimeTaken.Text = "<font color=\"#00aaff\">Time Taken:</font> 17 seconds\\n\\n"
TimeTaken.TextColor3 = Color3.fromRGB(255, 255, 255)
TimeTaken.TextSize = 14.000
TimeTaken.TextXAlignment = Enum.TextXAlignment.Left
TimeTaken.TextYAlignment = Enum.TextYAlignment.Top
TimeTaken.RichText = true

UIPadding_2.Parent = TimeTaken
UIPadding_2.PaddingLeft = UDim.new(0, 8)

CurrentSessionStats.Name = "CurrentSessionStats"
CurrentSessionStats.Parent = Statistics
CurrentSessionStats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CurrentSessionStats.BackgroundTransparency = 1.000
CurrentSessionStats.Size = UDim2.new(0, 120, 0, 20)
CurrentSessionStats.Font = Enum.Font.GothamBold
CurrentSessionStats.Text = "Current Session Stats"
CurrentSessionStats.TextColor3 = Color3.fromRGB(255, 255, 255)
CurrentSessionStats.TextSize = 14.000
CurrentSessionStats.TextXAlignment = Enum.TextXAlignment.Left
CurrentSessionStats.TextYAlignment = Enum.TextYAlignment.Top

UIPadding_3.Parent = CurrentSessionStats
UIPadding_3.PaddingLeft = UDim.new(0, 6)

GlobalStats.Name = "GlobalStats"
GlobalStats.Parent = Statistics
GlobalStats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlobalStats.BackgroundTransparency = 1.000
GlobalStats.Position = UDim2.new(0, 0, 0, 60)
GlobalStats.Size = UDim2.new(0, 120, 0, 20)
GlobalStats.Font = Enum.Font.GothamBold
GlobalStats.Text = "Global Stats"
GlobalStats.TextColor3 = Color3.fromRGB(255, 255, 255)
GlobalStats.TextSize = 14.000
GlobalStats.TextXAlignment = Enum.TextXAlignment.Left
GlobalStats.TextYAlignment = Enum.TextYAlignment.Top

UIPadding_4.Parent = GlobalStats
UIPadding_4.PaddingLeft = UDim.new(0, 6)

TotalDiamonds.Name = "TotalDiamonds"
TotalDiamonds.Parent = Statistics
TotalDiamonds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TotalDiamonds.BackgroundTransparency = 1.000
TotalDiamonds.Position = UDim2.new(0, 0, 0, 80)
TotalDiamonds.Size = UDim2.new(0, 120, 0, 20)
TotalDiamonds.Font = Enum.Font.GothamMedium
TotalDiamonds.Text = "<font color=\"#00aaff\">Total Diamonds:</font> 641,461,902,881"
TotalDiamonds.TextColor3 = Color3.fromRGB(255, 255, 255)
TotalDiamonds.TextSize = 14.000
TotalDiamonds.TextXAlignment = Enum.TextXAlignment.Left
TotalDiamonds.TextYAlignment = Enum.TextYAlignment.Top
TotalDiamonds.RichText = true

UIPadding_5.Parent = TotalDiamonds
UIPadding_5.PaddingLeft = UDim.new(0, 8)

Logo.Name = "Logo"
Logo.Parent = Main
Logo.AnchorPoint = Vector2.new(0.50999999, 1)
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.Position = UDim2.new(0.5, 0, 1, 0)
Logo.Size = UDim2.new(0, 100, 0, 100)
Logo.Image = "rbxassetid://13732102272"

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 136, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(67, 255, 255))}
UIGradient_2.Rotation = 90
UIGradient_2.Parent = Logo

task.spawn(function()
	while task.wait() do
		Diamonds.Text = "<font color=\"#00aaff\">Diamonds Earned:</font> " ..  Library.Functions.Commas(Library.Save.Get().Diamonds - StartingDiamonds)
		TimeTaken.Text = "<font color=\"#00aaff\">Time Taken:</font> " .. math.round(tick() - StartingTick) .. " seconds"
		TotalDiamonds.Text = "<font color=\"#00aaff\">Total Diamonds:</font> " ..  Library.Functions.Commas(Library.Save.Get().Diamonds)
	end
end)
