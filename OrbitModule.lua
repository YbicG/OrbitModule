local OrbitModule = {}


--CREDITS: THIS WAS MADE BY YbicG#1258 on DISCORD and NotYbicG on ROBLOX. If you use this please don't remove this line. 


----------
-- MATH --
----------

local function Pythag(X)

	local Y

	Y = math.sqrt(X^2 - (X/2)^2)
	return Y
end

----------
-- MATH --
----------

function OrbitModule:CircularOrbit(Part:Part,  RotateAroundPos:Vector3, Time:number, Radius, Speed:number, OrbitDirection:string, isSpiraling:boolean, SpiralWidth:number)
	--[[
	
	-------------------------
		      ARGS
	-------------------------
	
	Part -> Part to be rotated.
	Time -> Time until completion.
	Speed -> Speed at which to rotate at.
	Radius -> The size to make the cirle.
	RotateAroundPos -> Position for Part to rotate around.
	isSpiraling -> If true move in a spiral.
	SpiralWidth -> Width between spirals.
	
	-------------------------
	
	-------------------------
]]
	
	local XOffset
	local YOffset
	local ZOffset

	
	if not RotateAroundPos then
		local XOffset = 0
		local YOffset = 0
		local ZOffset = 0
	else
		local XOffset = RotateAroundPos.X
		local YOffset = RotateAroundPos.Y
		local ZOffset = RotateAroundPos.Z
	end
	
	if not Part then
		return
	end
	
	if not Speed then
		Speed = 1
	end

	if not Time then
		Time = 3
	end
	
	if not SpiralWidth then
		SpiralWidth = 1
	end
	
	if not Radius then
		Radius = 20
	end
	
	if not OrbitDirection then
		OrbitDirection = "clockwise"
	elseif OrbitDirection ~= "clockwise" and OrbitDirection ~= "counterclockwise" then
		error("Invalid OrbitDirection \""..OrbitDirection.."\"\nValid directions are \"clockwise\" and \"counterclockwise\".")
	end
	----------------------------
	
	local degree = 0	
	local Finish = Time + os.time()
	
	while Finish > os.time() do
		
		if OrbitDirection == "clockwise" then
				if not RotateAroundPos then
					XOffset = 0
					YOffset = 0
					ZOffset = 0
				else
					XOffset = RotateAroundPos.X
					YOffset = RotateAroundPos.Y
					ZOffset = RotateAroundPos.Z
				end

				degree += Speed 

				local X = Radius * math.cos(math.rad(-degree)) + XOffset
				local Y = Radius * math.sin(math.rad(-degree)) + YOffset
				local Z

				if isSpiraling then
					Z = (degree * (SpiralWidth/100)) + ZOffset
				else
					Z = ZOffset
				end

				Part.Position = Vector3.new(X, Y, Z)
				task.wait()
		elseif OrbitDirection == "counterclockwise" then
				if not RotateAroundPos then
					XOffset = 0
					YOffset = 0
					ZOffset = 0
				else
					XOffset = RotateAroundPos.X
					YOffset = RotateAroundPos.Y
					ZOffset = RotateAroundPos.Z
				end

				degree += Speed 

				local X = Radius * math.cos(math.rad(degree)) + XOffset
				local Y = Radius * math.sin(math.rad(degree)) + YOffset
				local Z

				if isSpiraling then
					Z = (degree * (SpiralWidth/100)) + ZOffset
				else
					Z = ZOffset
				end

				Part.Position = Vector3.new(X, Y, Z)
				task.wait()
		end
	
	end
	
	
end

function OrbitModule:TriangularOrbit(Part:Part, RotateAroundPos:Vector3, Time:number, Width, Speed:number, OrbitDirection:string)
	------------------
	--Part -> Part to be rotated.
	--Time -> Time until completion.
	--Width -> Size to make the triangle.
	--RotateAroundPos -> Position for Part to rotate around.
	--Speed -> Speed at which to rotate.
	--OrbitDirection -> Direction to rotate in. Valid Directions are "clockwise" and "counterclockwise".
	------------------

	if not OrbitDirection then
		OrbitDirection = "clockwise"
	elseif OrbitDirection ~= "clockwise" and OrbitDirection ~= "counterclockwise" then
		error("Invalid OrbitDirection \""..OrbitDirection.."\"\nValid directions are \"clockwise\" and \"counterclockwise\".")
	end

	if not Time then
		Time = 3
	end

	if not Speed then
		Speed = 1
	else
		if Speed < 1 then
			Speed = 1
		end
	end
	
	if not Width then
		Width = 20
	end
	
	local IndvisTime = Time/3 -- split up time for each tween

	local IndvisTime = IndvisTime/Speed


	local Finish = Time + os.time()


	local Origin = RotateAroundPos - Vector3.new(Width/2, Width/3.5)

	while Finish > os.time() do

		if OrbitDirection == "clockwise" then

			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(Width/2, Pythag(Width), 0)})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(Width, 0, 0)})
			Tween:Play()
			Tween.Completed:Wait()
		elseif OrbitDirection == "counterclockwise" then
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(Width, 0, 0)})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(Width/2, Pythag(Width), 0)})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin})
			Tween:Play()
			Tween.Completed:Wait()
		end

	end

end

function OrbitModule:RectangularOrbit(Part:Part, RotateAroundPos:Vector3, Time:number, Width, Speed:number, OrbitDirection:string)
	------------------
	--Part -> Part to be rotated.
	--Time -> Time until completion.
	--Width -> Size to make the rectangle.
	--RotateAroundPos -> Position for Part to rotate around.
	--Speed -> Speed at which to rotate.
	--OrbitDirection -> Direction to rotate in. Valid Directions are "clockwise" and "counterclockwise".
	------------------

	if not OrbitDirection then
		OrbitDirection = "clockwise"
	elseif OrbitDirection ~= "clockwise" and OrbitDirection ~= "counterclockwise" then
		error("Invalid OrbitDirection \""..OrbitDirection.."\"\nValid directions are \"clockwise\" and \"counterclockwise\".")
	end

	if not Time then
		Time = 3
	end

	if not Speed then
		Speed = 1
	else
		if Speed < 1 then
			Speed = 1
		end
	end

	if not Width then
		Width = 10
	else
		Width = Width/2
	end

	local IndvisTime = Time/4 -- split up time for each tween

	local IndvisTime = IndvisTime/Speed


	local Finish = Time + os.time()


	local Origin = RotateAroundPos - Vector3.new(Width, Width/2, 0)

	while Finish > os.time() do

		if OrbitDirection == "clockwise" then

			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(0, Width, 0)})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(Width * 2, Width, 0)})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(Width * 2, 0, 0)})
			Tween:Play()
			Tween.Completed:Wait()
		elseif OrbitDirection == "counterclockwise" then
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(Width * 2, 0, 0)})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(Width * 2, Width, 0)})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(0, Width, 0)})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin})
			Tween:Play()
			Tween.Completed:Wait()
		end

	end

end

function OrbitModule:SquareOrbit(Part:Part, RotateAroundPos:Vector3, Time:number, Width, Speed:number, OrbitDirection:string)
	------------------
	--Part -> Part to be rotated.
	--Time -> Time until completion.
	--Width -> Size to make the square.
	--RotateAroundPos -> Position for Part to rotate around.
	--Speed -> Speed at which to rotate.
	--OrbitDirection -> Direction to rotate in. Valid Directions are "clockwise" and "counterclockwise".
	------------------

	if not OrbitDirection then
		OrbitDirection = "clockwise"
	elseif OrbitDirection ~= "clockwise" and OrbitDirection ~= "counterclockwise" then
		error("Invalid OrbitDirection \""..OrbitDirection.."\"\nValid directions are \"clockwise\" and \"counterclockwise\".")
	end

	if not Time then
		Time = 3
	end

	if not Speed then
		Speed = 1
	else
		if Speed < 1 then
			Speed = 1
		end
	end

	if not Width then
		Width = 10
	else
		Width = Width/2
	end

	local IndvisTime = Time/4 -- split up time for each tween

	local IndvisTime = IndvisTime/Speed


	local Finish = Time + os.time()


	local Origin = RotateAroundPos - Vector3.new(Width/2, Width/2, 0)

	while Finish > os.time() do

		if OrbitDirection == "clockwise" then

			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(0, Width, 0)})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(Width , Width, 0)})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(Width, 0, 0)})
			Tween:Play()
			Tween.Completed:Wait()
		elseif OrbitDirection == "counterclockwise" then
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(Width, 0, 0)})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(Width, Width, 0)})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin + Vector3.new(0, Width, 0)})
			Tween:Play()
			Tween.Completed:Wait()
			local Tween = game.TweenService:Create(Part, TweenInfo.new(IndvisTime, Enum.EasingStyle.Linear), {["Position"] = Origin})
			Tween:Play()
			Tween.Completed:Wait()
		end

	end

end

return OrbitModule
