local placeIds = {
	[2000151171] = 'https://raw.githubusercontent.com/BlackfireSoon/Ignation-Hub/refs/heads/main/Build%20Island/yz-script.lua'; --Build Island 
	[1490130369] = 'https://raw.githubusercontent.com/BlackfireSoon/Ignation-Hub/refs/heads/main/Anomicrazy/script.lua'; --Anomic
	['else'] = 'https://pastebin.com/raw/tQZYjYV0'; --c00lkidd UI not made by Ignation
}
if placeIds[game.GameId] then
    loadstring(game:HttpGet(placeIds[game.GameId]))()
else
    loadstring(game:HttpGet(placeIds['else']))()
end
