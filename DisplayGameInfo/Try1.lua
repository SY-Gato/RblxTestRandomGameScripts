-- Meant for void script builder
print("DisplayGameInfo v1, created by SY-Gato (GitHub, roblox user: master200crate')")
warn("LICENSED UNDER MIT; Copyright (c) 2023 SY-Gato")
print("---------------------------")
print("Loading...")
print("Finding PlaceId and PlaceName...")
local placeid = game.PlaceId
local placename = game:GetService("MarketplaceService"):GetProductInfo(placeid)
--[[function GetServerRegion()
	local http = game:GetService("HttpService")

	local result
	
	local g,b = pcall(function()
		result = http:JSONDecode(http:GetAsync("https://api4.my-ip.io/ip.json"))
	end)

	local ip = result.ip
	
	if g and ip then
		local location
		local good,bad = pcall(function()
			location = http:JSONDecode(http:GetAsync("http://ip-api.com/json/"..ip))
		end)
		if good and location.region and location.regionName then
			return location.region , location.regionName
		else
			warn("fatal error fetching server geo location. error: "..bad)
			return nil, nil
		end
	else
		warn("fatal error fetching server ip. error: "..b)
		return nil, nil
	end
end
local sregion1,sregion2 = GetServerRegion()]]
print("Skipping Region Detection...")
local sregion1, sregion2 = "Region Detection Not Implemented"
local plrname, plruserid
if game:GetService("RunService"):IsClient() then
  plrname = tostring(game.Players.LocalPlayer.Name)
  plruserid = tostring(game.Players.LocalPlayer.UserId)
else
  plrname, plruserid = tostring("Unknown")
end

wait(0.3)
print("Place Name: "..placename.Name)
print("Place Id: "..placeid)
print("Server Region: "..tostring(sregion1).."/"..tostring(sregion2))
print("Player Count: "..tostring(#game:GetService("Players"):GetPlayers()))
print("Player Name: "..plrname)
print("Player UserId: "..plruserid)
print("------------------------------")
