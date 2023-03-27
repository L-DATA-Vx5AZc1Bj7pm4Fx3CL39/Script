repeat
    wait()
until game:IsLoaded()
--loadstring(game:HttpGet('https://raw.githubusercontent.com/L-DATA-Vx5AZc1Bj7pm4Fx3CL39/Script/main/Secret.lua'))()

local Disables = {
    game:GetService("ScriptContext").Error,
    game:GetService("LogService").MessageOut
}

local Nos = {
    "PreloadAsync",
    "Kick",
    "kick",
    "xpcall",
    "gcinfo",
    "collectgarbage",
    "xpcall",
    "Deactivate",
    "FindService",
    "GetPropertyChangedSignal"
}

local Yes = {
    game:GetService("Players").LocalPlayer,
    game:GetService("CoreGui"),
}

local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(...)
    local Args = {...}
    local A, B, C = ...
    if table.find(Nos, A.Name) then
        return 
    end 
    return OldNameCall(...)
end)

for i,v in pairs(Disables) do 
    for i,v in pairs(getconnections(v)) do
        if v.Disable then
            v:Disable()
        elseif v.Disconnect then
            v:Disconnect()
        end 
    end 
end


if setfflag then
    setfflag("HumanoidParallelRemoveNoPhysics", "False")
    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
end

if setfpscap then
    setfpscap(75)
end
