print("Output v1 Beta, created by SY-Gato (GitHub, roblox user: master200crate')")
warn("LICENSED UNDER MIT; Copyright (c) 2023 SY-Gato")
warn("WARNING! THIS PROJECT IS STILL IN BETA, AND MAY HAVE ERRORS.")
print("------------------------------------------------------")
print("Testing Script Side..")
local runServ = game:GetService("RunService")
local plrs = game:GetService("Players")
local plr
local function findPlayerParent(obj)
  local insa = obj
  local thingy = nil
  while true do
    if insa.Parent == game then
      warn("Could not find player")
      break
    else
      if insa.Parent:IsA("Player") then
        thingy = insa.Parent
        break
      end
      insa = insa.Parent
    end
  end
  return thingy
end
if runServ:IsClient() then
  print("Script Side Detected! Type: Client!")
  warn("Script Must Be Ran As Server! Fatal Error!")
  error("Fatal Error Occurred.")
else
  print("Script Side Detected! Type: Server!")
  print("No errors found! Continuing...")
  plr = findPlayerParent(script)
  if not plr then
    error("Could not find player!")
  elseif plr then
    print("Player found! "..plr.Name)
  end
end
