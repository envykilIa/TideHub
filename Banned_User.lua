local banned = {4024419747,}
for _,v in pairs(game.Players:GetDescendants()) do
    if table.find(banned, v.UserId) then
        if v.Character then
            game.Players.LocalPlayer:Kick("Banned From Tide Hub")
        end
    end
end

wait(0.069)
game:shutdown()
