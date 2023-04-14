		local runService=game:GetService("RunService")
		local camera=workspace.Camera
		local fov=70


		runService.RenderStepped:Connect(function()
			camera.FieldOfView=fov
			if fov>=120 then
				local dv=(1.7320508075688767*((camera.ViewportSize.Y/2)/math.tan(math.rad(fov/2))))/(camera.ViewportSize.Y/2)
				camera.CFrame*=CFrame.new(0,0,0,dv,0,0,0,dv,0,0,0,1)
			end
