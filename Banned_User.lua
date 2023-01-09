local banned = {4024419747,}
for _,v in pairs(game.Players:GetDescendants()) do
    if table.find(banned, v.UserId) then
        if v.Character then
            game.Players.LocalPlayer:Kick("Banned From Tide Hub")
            wait(10)
            game:shutdown()
        end
    end
end
