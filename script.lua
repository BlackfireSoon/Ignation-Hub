local placeIds = {
--[[ Build Island ]]    [2000151171] = 'https://raw.githubusercontent.com/BlackfireSoon/Ignation-Hub/refs/heads/main/Build%20Island/yz-script.lua',
--[[    Anomic    ]]  	[1490130369] = 'https://raw.githubusercontent.com/BlackfireSoon/Ignation-Hub/refs/heads/main/Anomicrazy/script.lua'; 
}

local url = placeIds[game.GameId] or 'https://pastebin.com/raw/tQZYjYV0'
loadstring(url)()
