local backpack = game.Players.LocalPlayer.Backpack
local a = 1

getgenv().Crash = true

local found = backpack:FindFirstChild("[Cranberry]")

RunService.RenderStepped:Connect(function()
    if getgenv().Crash == true then
    local plr = game:GetService'Players'.LocalPlayer
    local gunName = '[Cranberry] - $3'
    local ITEM = game.Workspace.Ignored.Shop[gunName]
    local datplace = plr.Character.HumanoidRootPart.Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ITEM.Head.CFrame + Vector3.new(0, 3, 0)
    wait(0.5)
    fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
    fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(datplace)
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(datplace)

    if getgenv().Crash == true then
        for i,v in pairs(backpack:GetChildren()) do
            if v.Name == "[Cranberry]" then
                v.Parent = game.Players.LocalPlayer.Character
                a = a+1
                print("hi")
                if a == 4000 then
                    game.Players.LocalPlayer.Character:Destroy()
                end
            end
        end
    end

    end
end)
