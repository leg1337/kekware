-- credits to legendary#0001
-- https://goonlinetools.com/lua-beautifier/ is really cool

--[ Notification System ]
game:service [[StarterGui]]:SetCore(
    [[SendNotification]],
    {
        Title = [[Kekware v1.02 has loaded:]],
        Text = [[legendary#0001]]
    }
)

--[ Local Variables ]
local plr = game.Players.LocalPlayer
local Prefix = ">"
local TP = game:GetService[[TeleportService]]
local Service = game:GetService [[Players]]
local LP = game:GetService[[Players]].LocalPlayer
local CF = game:GetService[[Players]].LocalPlayer.Character.HumanoidRootPart.CFrame
local chr = game.Players.LocalPlayer.Character
local Tool = plr.Backpack:FindFirstChildOfClass("Tool")
local Humanoid = plr.Character.Humanoid:Clone()

--[ Commands ]
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")

        if args[1] == Prefix .. [[adv]] then
            task.wait(0.5)
            local x = [[Kekware v1.02]]
            local y = [[all]]
            local msg = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(x, y)
            game:service [[StarterGui]]:SetCore(
                [[SendNotification]],
                {
                    Title = [[Advertised Kekware v1.02]],
                    Text = [[Kekware v1.02]]
                }
            )
        end
    end
)
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")
        if args[1] == Prefix .. [[rj]] then
            TP:TeleportToPlaceInstance(game.PlaceId, game.JobId, Service.LocalPlayer)
            game:service [[StarterGui]]:SetCore(
                [[SendNotification]],
                {
                    Title = [[Rejoining...]],
                    Text = [[Kekware v1.02]]
                }
            )
        end
    end
)

plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")
        if args[1] == Prefix .. [[re]] then
            local CF = game:GetService [[Players]].LocalPlayer.Character.HumanoidRootPart.CFrame
            local chr = game.Players.LocalPlayer.Character
            for i, v in next, chr:GetDescendants() do
                if v:IsA [[Part]] and v.Name == [[HumanoidRootPart]] then
                end
            end
            chr.Parent = nil
            chr.Humanoid:Destroy()
            for i, v in pairs(LP.Character:GetChildren()) do
                if v:IsA [[MeshPart]] then
                    v.Anchored = true
                end
            end
            LP.CharacterAdded:wait()
            LP.Character:WaitForChild [[HumanoidRootPart]].CFrame = CF
            local FF = LP.Character:WaitForChild [[ForceField]]
            FF:Destroy()
            task.wait()
            game:service [[StarterGui]]:SetCore(
                [[SendNotification]],
                {
                    Title = [[Refreshed Character]],
                    Text = [[Kekware v1.02]]
                }
            )
        end
    end
)

plr.Chatted:Connect(
    function(msg)
        local args = msg:lower():split(" ")
        print(args[1], args[2])
        if args[1] == Prefix .. "bring" then
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character then
                    if
                        v.Name:lower():sub(1, #args[2]) == args[2]:lower() or
                            v.DisplayName:lower():sub(1, #args[2]) == args[2]:lower()
                     then
                        local CF = game:GetService[[Players]].LocalPlayer.Character.HumanoidRootPart.CFrame
                        local Tool = plr.Backpack:FindFirstChildOfClass("Tool")
                        local Humanoid = plr.Character.Humanoid:Clone()
                        plr.Character.Humanoid:UnequipTools()
                        plr.Character.Animate.Disabled = true
                        plr.Character.Humanoid:Destroy()
                        Humanoid.Parent = plr.Character
                        Tool.Parent = plr.Character
                        firetouchinterest(Tool.Handle, v.Character.HumanoidRootPart, 0)
                        LP.CharacterAdded:wait()
                        LP.Character:WaitForChild [[HumanoidRootPart]].CFrame = CF
                        local FF = LP.Character:WaitForChild [[ForceField]]
                        FF:Destroy()
                        game:service [[StarterGui]]:SetCore(
                            [[SendNotification]],
                            {
                                Title = [[Target Brought]],
                                Text = [[Kekware v1.02]]
                            }
                        )
                    end
                end
            end
        end
    end
)

while task.wait(2.1) do
print [[Kekware on top]]
end


