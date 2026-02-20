local player = game.Players.LocalPlayer
local request = (syn and syn.request) or (http and http.request) or http_request or request
if request then
    request({
        Url = "https://discord.gg/EbYAXG7tDt",
        Method = "GET"
    })
end

local PlaceId = game.PlaceId
local url = 'https://raw.githubusercontent.com/BlackfireSoon/Ignation-Hub/refs/heads/main/games/'..PlaceId..'/index.luau'
local raw = game:HttpGet(raw)

if raw then
    loadstring(game:HttpGet(raw))()
else
    print("Ignation Hub does not support this game!")
end
