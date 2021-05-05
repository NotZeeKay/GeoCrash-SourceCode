local lvl = script.Parent.Parent.Level
local Player = script.Parent
function resettimer()
  game.ServerStorage.Values.Timer.Value = 0
end

game.ReplicatedStorage.StartGame.OnServerEvent:Connect(function()
  resettimer()
  game.ServerStorage.Values.PlayerXVelocity = 0
  game.ServerStorage.Values.PlayerYVelocity = 0
  Player.Position = UDim2.new(-200, 0, -57, 0)
  while true do
    if Enum.Keypad.ArrowRight or Enum.Keypad.D == true then
      game.ServerStorage.Values.PlayerXVelocity = game.ServerStorage.Values.PlayerXVelocity + 1
    end
    if Enum.Keypad.ArrowLeft or Enum.Keypad.A == true then
      game.ServerStorage.Values.PlayerXVelocity = game.ServerStorage.Values.PlayerXVelocity + 1
    end
    game.ServerStorage.Values.PlayerXVelocity = game.ServerStorage.Values.PlayerXVelocity * 0.9
    if Player.Touching == lvl then
      print("Test")
    end
  end
end)
