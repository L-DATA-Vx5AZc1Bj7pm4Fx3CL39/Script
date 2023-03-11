local Player = game:GetService("Players").LocalPlayer
local Char = Player.Character or Player.CharacterAdded:Wait()
local Table = {
    "xpcall",
    "pcall",
    "Idle",
    "Deactivate",
    "PreloadAsync",
    "FindService",
    "collectgarbage",
    "GetPropertyChangedSignal",
    "getfenv",
    "Kick",
    "kick"
}
local Table2 = {Char, game:GetService("CoreGui"), Player,Player.Kick,}
local OldNameCall = nil
OldNameCall =
    hookmetamethod(
    game,
    "__namecall" or "__Index",
    function(self, ...)
        local Args = {...}
        if table.find(Table, getnamecallmethod()) and table.find(Table2, self) then
            return OldNameCall(self, ...)
        end
        return OldNameCall(self, ...)
    end
)
