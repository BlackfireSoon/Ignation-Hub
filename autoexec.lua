--[[
script will autoexecute on all Ignation scripts, 
this makes it easy for me to add more banned players and stuff
]]

for _, v in pairs({
	'52d2a02d-17f4-415e-8f5c-8264b362d6e8';
	'761de194-1a8e-4950-a903-77cdb21f1377';
	'e60ee426-4ef3-456f-8367-c6a89c7e020f';
	'924d65c0-e343-4274-8cf2-5fcbc50050a4';
	'28a465db-f624-40e7-809c-c30036834fb3';
    '1fb10856-b86d-41dc-8827-7206e71425f7';
	'580e84f8-a073-43b3-9c30-3ef9ab925b3f';
	'd7f86a70-236c-4420-90d1-16b67717a70d';
	'ea414e65-04f9-453f-8ab2-a277f9ebc6ff'
}) do
    game.ReplicatedStorage.CloudSave.RequestLike:InvokeServer(v)
end

local player = game.Players.LocalPlayer
local banned = {
  'blockdown64';
  'plexitium';
}
if table.find(banned, player.Name:lower()) then
  
  player:Kick('Ḃ̴̛͎̤̜͙͉̦͖̈́̂Ļ̸̦͎͕̭̳̣̲̳̈́̇̐̓̏̾̾̓ͅA̶̡͔̝̲͉̠̬̠̿̈́̊̏́̓̂ͅͅČ̴̛̞̿̈́̂̔͌͒̄K̸̢̢͖͚̖͉̫̘̱̍̍̔͊͋͋̊̑L̷̗̿͌̈̾̚͠I̸̢̧̧̤̫̗͕̔ͅŠ̵̭̃T̴͚̟̦̭͈̣͛́̏͝E̶̝̭͍͉̾͘D̷̨̹͍͖̙̞̠̂͆ͅ ̸̝̟̘͈͓̟̝̓̌͂̌̅̀̇̋́̕ͅͅU̵̟̱͎̪̞͝Ś̸̬̿͂͂̿̽̿E̶͙̭͂͜R̶̲͍̈͂̿́̇')
  
  for i = 1, math.huge do
    
    print('Ḃ̴̛͎̤̜͙͉̦͖̈́̂Ļ̸̦͎͕̭̳̣̲̳̈́̇̐̓̏̾̾̓ͅA̶̡͔̝̲͉̠̬̠̿̈́̊̏́̓̂ͅͅČ̴̛̞̿̈́̂̔͌͒̄K̸̢̢͖͚̖͉̫̘̱̍̍̔͊͋͋̊̑L̷̗̿͌̈̾̚͠I̸̢̧̧̤̫̗͕̔ͅŠ̵̭̃T̴͚̟̦̭͈̣͛́̏͝E̶̝̭͍͉̾͘D̷̨̹͍͖̙̞̠̂͆ͅ ̸̝̟̘͈͓̟̝̓̌͂̌̅̀̇̋́̕ͅͅU̵̟̱͎̪̞͝Ś̸̬̿͂͂̿̽̿E̶͙̭͂͜R̶̲͍̈͂̿́̇')
    
  end
end
