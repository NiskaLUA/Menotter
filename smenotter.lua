-- Server menotter 

AddEventHandler('chatMessage', function(source, n, message) 
  local args = stringsplit(message, " ")

  if (args[1] == "/menotter") then 
    CancelEvent() 

    if (args[2] ~= nil) then 
      local playerID = tonumber(args[2])
    
      if (playerID < 1 or playerID > 32) then
    
        TriggerClientEvent('chatMessage', source, "SYSTEM", {200, 0, 0}, "Invalid PlayerID!")
        return 
      end


      TriggerClientEvent('mHandCuff', playerID) 
    else 
      local event = 'chatMessage' 
      local eventTarget = source 
      local messageSender = "SYSTEM" 
      local messageSenderColor = {200, 0, 0} 
      local message = "Usage: /cuff <PlayerID>" 
     
      TriggerClientEvent(event, eventTarget, messageSender, messageSenderColor, message) 

    end
  end
end)


function stringsplit(self, delimiter)
  local a = self:Split(delimiter)
  local t = {}

  for i = 0, #a - 1 do
     table.insert(t, a[i])
  end

  return t
end
