local player = game.Players.LocalPlayer

local PlaceId = game.PlaceId
local URL = 'https://raw.githubusercontent.com/BlackfireSoon/Ignation-Hub/refs/heads/main/games/'..PlaceId..'/index.luau'

local call,raw = pcall(function()
    return game:HttpGet(URL)
end)

if call and raw and not raw:find('404') then
    loadstring(raw)()
else
    print('Ignation Hub does not support this game!', 'PlaceId: '..PlaceId)
end
