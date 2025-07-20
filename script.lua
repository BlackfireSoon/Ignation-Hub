local placeIds = {
	[2000151171] = {'https://raw.githubusercontent.com/BlackfireSoon/Ignation-Hub/refs/heads/main/Build%20Island/yz-script.lua',
                        'https://raw.githubusercontent.com/BlackfireSoon/Ignation-Hub/refs/heads/main/Build%20Island/noctisadmin.lua'}; --Build Island 
	[1490130369] = {'https://raw.githubusercontent.com/BlackfireSoon/Ignation-Hub/refs/heads/main/Anomicrazy/script.lua'}; --Anomic
}

local urls = placeIds[game.GameId] or {'https://pastebin.com/raw/tQZYjYV0'}
for i, url in ipairs(urls) do
    print(i, ': ', url)
    loadstring(game:HttpGet(url))()
end
