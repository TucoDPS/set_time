RegisterCommand("time", function(source, args, raw)
  if #args == 2 then
    local hour = tonumber(args[1])
    local minute = tonumber(args[2])
    local second = 0
    SetClockTime(hour, minute, second)
    NetworkOverrideClockTime(hour, minute, second)
    Citizen.Wait(5000)
  elseif #args == 1 then
    local hour = tonumber(args[1])
    local minute = 0
    local second = 0
    SetClockTime(hour, minute, second)
    NetworkOverrideClockTime(hour, minute, second)
    Citizen.Wait(5000)
  else
    print("Uso correto: /time <hora> <minuto>")
  end
end)

RegisterCommand("manha", function(source)
  SetClockTime(6, 30, 0)
  NetworkOverrideClockTime(6, 30, 0)
  Citizen.Wait(5000)
end)

RegisterCommand("dia", function(source)
  SetClockTime(12, 0, 0)
  NetworkOverrideClockTime(12, 0, 0)
  Citizen.Wait(5000)
end)

RegisterCommand("tarde", function(source)
  SetClockTime(19, 30, 0)
  NetworkOverrideClockTime(19, 30, 0)
  Citizen.Wait(5000)
end)

RegisterCommand("noite", function(source)
  SetClockTime(0, 0, 0)
  NetworkOverrideClockTime(0, 0, 0)
  Citizen.Wait(5000)
end)
