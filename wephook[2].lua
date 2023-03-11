local url = wephook[2]
local Text_Id = getgenv().DiscordId

local data = {
    ["content"] = "",
    ["embeds"] = {
        {
            ["type"] = "rich",
            ["title"] = "",
            ["color"] = tonumber(0x78da),
            ["fields"] = {
                {
                    ["name"] = "Cracker",
                    ["value"] = "```yml\n".. NameGames .."\n```"
                },
                {
                    ["name"] = "Discord Id",
                    ["value"] = "```yml\n".. Text_Id .."\n```"
                },
                {
                    ["name"] = "HWID",
                    ["value"] = "```yml\n".. game:GetService("RbxAnalyticsService"):GetClientId() .."\n```"
                },
            }
        }
    }
}

local newdata = game:GetService("HttpService"):JSONEncode(data) 
local headers = {
    ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
request({Url = url, Body = newdata, Method = "POST", Headers = headers})
