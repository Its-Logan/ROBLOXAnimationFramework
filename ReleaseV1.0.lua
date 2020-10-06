local AnimationFM = {}

local CurrentAnimations = {}

local Provider = game:GetService("KeyframeSequenceProvider")
local Cache = {}

function FindCurrentAnimation(Name, ObjectName)
	for _,v in next, CurrentAnimations do
		if v[ObjectName] == Name then return Name end
	end
end

local function GetAnimationLength(Animation)
	local AssetId = Animation.AnimationId
	if Cache[AssetId] then
		return Cache[AssetId]
	end

	local Sequence = Provider:GetKeyframeSequenceAsync(AssetId)
	local Keyframes = Sequence:GetKeyframes()
	
	local Length = 0
	for i = 1, #Keyframes do
		local Time = Keyframes[i].Time
		if Time > Length then
			Length = Time
		end
	end
	
	Sequence:Destroy()
	Cache[AssetId] = Length
	
	return Length
end

function WaitForAnimation(Animation)
	if Animation then repeat wait() until Animation.IsPlaying == false end
	return
end

function AnimationFM:Play(AnimationController, Animation, Object, Override)
	if AnimationController and Animation and Object and Animation:IsA("Animation") then
		local NewAnimation = AnimationController:LoadAnimation(Animation)
		if Override then else WaitForAnimation(CurrentAnimations[Object.Name]) CurrentAnimations[Object.Name]:Stop() end
		CurrentAnimations[Object.Name] = NewAnimation
		NewAnimation:Play()
		return NewAnimation
	end
	return false
end

function AnimationFM:Stop(Object)
	if CurrentAnimations[Object.Name] then
		CurrentAnimations[Object.Name]:Stop()
	end
end

return AnimationFM
