--[ Notification System ]
game:service [[StarterGui]]:SetCore(
    [[SendNotification]],
    {
        Title = [[Noti System]],
        Text = [[legendary#0001]]
    }
)

--[ Local Variables ]
local LP = LocalPlayer
local plr = game.Players.LocalPlayer
local Prefix = ">"
local TP = game:GetService("TeleportService")
local Service = game:GetService [[Players]]

--[ Functions ]
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")

        --[ Commands ]
        if args[1] == Prefix .. [[adv]] then
            task.wait(0.8)
            local x = [[Test]]
            local y = [[all]]
            local msg = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(x, y)
        end
    end
)
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")
        if args[1] == Prefix .. [[rj]] then
            TP:TeleportToPlaceInstance(game.PlaceId, game.JobId, Service.LocalPlayer)
        end
    end
)
print([[legendary#0001]])
