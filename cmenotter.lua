-- Menotter

local handCuffed = false 

RegisterNetEvent('mHandCuff') 


AddEventHandler('mHandCuff', function()

  handCuffed = not handCuffed
end)


Citizen.CreateThread(function() 
  while true do 
    Citizen.Wait(1) 

    if (handCuffed == true) then 
      RequestAnimDict('mp_arresting') 

    
      while not HasAnimDictLoaded('mp_arresting') do
        Citizen.Wait(0)
      end

      local myPed = PlayerPedId() 
      local animation = 'idle' 
      local flags = 49 


      TaskPlayAnim(myPed, 'mp_arresting', animation, 8.0, -8, -1, flags, 0, 0, 0, 0)
    end
  end
end)
