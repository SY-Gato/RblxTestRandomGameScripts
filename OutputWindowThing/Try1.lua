print("Output v1 Beta, created by SY-Gato (GitHub, roblox user: master200crate')")
warn("LICENSED UNDER MIT; Copyright (c) 2023 SY-Gato")
warn("WARNING! THIS PROJECT IS STILL IN BETA, AND MAY HAVE ERRORS.")
print("------------------------------------------------------")
print("Testing Script Side..")
local runServ = game:GetService("RunService")
if runServ:IsClient() then
  print("Script Side Detected! Type: Client!")
  warn("Script Must Be Ran As Server! Fatal Error!")
  warn("Deleting Self and References...")
  script:Destroy()
else
  print("Script Side Detected! Type: Server!")
  print("No errors found! Continuing...")
  
