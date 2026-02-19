--[[
    This script will return the Library
    Get the library by ```local Lib = loadstring(libraryURL)()```
]]

local Lib = {}

local TweenService = game:GetService('TweenService')local Lib = {}

local TweenService = game:GetService('TweenService')
local UserInput = game:GetService('UserInputService')

local player = game.Players.LocalPlayer

function Lib:Tween(Instance:Instance, Properties:{[string]:any}, Time:number?, Style:Enum.EasingStyle?)
	local Info = TweenInfo.new(
		Time or 1, Style or Enum.EasingStyle.Linear, Enum.EasingDirection.Out
	)
	local Tween = TweenService:Create(Instance, Info, Properties or {})
	Tween:Play() return Tween
end

function Lib:FireAllRemotes(events:boolean?, functions:boolean?, parent:Instance?)
	events = events or true
	functions = functions or true
	parent = parent or game
	
	for i,v in ipairs(game:GetDescendants()) do
		if (events and v:IsA("RemoteEvent")) then
			v:FireServer()
		elseif (functions and v:IsA("RemoteFunction")) then
			v:InvokeServer()
		end
	end
end

_G.IgnLib = Lib
return Lib
local UserInput = game:GetService('UserInputService')

local player = game.Players.LocalPlayer

function Lib:Tween(Instance:Instance, Properties:{[string]:any}, Time:number?, Style:Enum.EasingStyle?)
	local Info = TweenInfo.new(
		Time or 1, Style or Enum.EasingStyle.Linear, Enum.EasingDirection.Out
	)
	local Tween = TweenService:Create(Instance, Info, Properties or {})
	Tween:Play() return Tween
end

function Lib:FireAllRemotes(events:boolean?, functions:boolean?, parent:Instance?)
	events = events or true
	functions = functions or true
	parent = parent or game
	
	for i,v in ipairs(game:GetDescendants()) do
		if (events and v:IsA("RemoteEvent")) then
			v:FireServer()
		elseif (functions and v:IsA("RemoteFunction")) then
			v:InvokeServer()
		end
	end
end

_G.IgnLib = Lib
return Lib
