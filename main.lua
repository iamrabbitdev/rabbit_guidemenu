local display = false

-- Key controls
Citizen.CreateThread(function()
	while true do
    Citizen.Wait(0)
			if IsControlJustReleased(0, 10) then
        if display then
          display = false
          TriggerEvent('rabbit_guidemenu:on', true)
        else
          display = true
          TriggerEvent('rabbit_guidemenu:off', true)
        end
			end
	end
end)

-- CONTROLS
RegisterCommand('rabbitguideon', function()
  Citizen.CreateThread(function()
    display = false
    TriggerEvent('rabbit_guidemenu:on', true)
  end)
end)

RegisterCommand('rabbitguideoff', function()
  Citizen.CreateThread(function()
    display = true
    TriggerEvent('rabbit_guidemenu:off', true)
  end)
end)

-- EVENTS
RegisterNetEvent('rabbit_guidemenu:on')
AddEventHandler('rabbit_guidemenu:on', function()
  SendNUIMessage({
    type = 'ui',
    display = true
  })
end)


RegisterNetEvent('rabbit_guidemenu:off')
AddEventHandler('rabbit_guidemenu:off', function()
  SendNUIMessage({
    type = 'ui',
    display = false
  })
end)
