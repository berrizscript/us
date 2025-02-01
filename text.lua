local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out) -- Smooth easing over 0.5 seconds
local goal = {}
goal.CFrame = humanoidRootPart.CFrame * CFrame.new(5, 0, 0) -- Move 5 studs to the right while keeping rotation

local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)
tween:Play()
