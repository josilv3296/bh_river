local WaterTypes = {
  [1] =  {["name"] = "Sea of Coronado",       ["waterhash"] = -247856387, ["watertype"] = "lake"},
  [2] =  {["name"] = "San Luis River",        ["waterhash"] = -1504425495, ["watertype"] = "river"},
  [3] =  {["name"] = "Lake Don Julio",        ["waterhash"] = -1369817450, ["watertype"] = "lake"},
  [4] =  {["name"] = "Flat Iron Lake",        ["waterhash"] = -1356490953, ["watertype"] = "lake"},
  [5] =  {["name"] = "Upper Montana River",   ["waterhash"] = -1781130443, ["watertype"] = "river"},
  [6] =  {["name"] = "Owanjila",              ["waterhash"] = -1300497193, ["watertype"] = "lake"},
  [7] =  {["name"] = "Hawks Eye Creek",       ["waterhash"] = -1276586360, ["watertype"] = "creek"},
  [8] =  {["name"] = "Little Creek River",    ["waterhash"] = -1410384421, ["watertype"] = "river"},
  [9] =  {["name"] = "Dakota River",          ["waterhash"] = 370072007, ["watertype"] = "river"},
  [10] =  {["name"] = "Beartooth Beck",       ["waterhash"] = 650214731, ["watertype"] = "river"},
  [11] =  {["name"] = "Lake Isabella",        ["waterhash"] = 592454541, ["watertype"] = "lake"},
  [12] =  {["name"] = "Cattail Pond",         ["waterhash"] = -804804953, ["watertype"] = "pond"},
  [13] =  {["name"] = "Deadboot Creek",       ["waterhash"] = 1245451421, ["watertype"] = "creek"},
  [14] =  {["name"] = "Spider Gorge",         ["waterhash"] = -218679770, ["watertype"] = "creek"},
  [15] =  {["name"] = "O'Creagh's Run",       ["waterhash"] = -1817904483, ["watertype"] = "lake"},
  [16] =  {["name"] = "Moonstone Pond",       ["waterhash"] = -811730579, ["watertype"] = "pond"},
  [17] =  {["name"] = "Kamassa River",        ["waterhash"] = -1229593481, ["watertype"] = "river"},
  [18] =  {["name"] = "Elysian Pool",         ["waterhash"] = -105598602, ["watertype"] = "lake"},
  [19] =  {["name"] = "Heartland Overflow",   ["waterhash"] = 1755369577, ["watertype"] = "lake"},
  [20] =  {["name"] = "Bayou NWA",            ["waterhash"] = -557290573, ["watertype"] = "swamp"},
  [21] =  {["name"] = "Lannahechee River",    ["waterhash"] = -2040708515, ["watertype"] = "river"},
  [22] =  {["name"] = "Calmut Ravine",        ["waterhash"] = 231313522, ["watertype"] = "lake"},
  [23] =  {["name"] = "Ringneck Creek",       ["waterhash"] = 2005774838, ["watertype"] = "creek"},
  [24] =  {["name"] = "Stillwater Creek",     ["waterhash"] = -1287619521, ["watertype"] = "creek"},
  [25] =  {["name"] = "Lower Montana River",  ["waterhash"] = -1308233316, ["watertype"] = "river"},
  [26] =  {["name"] = "Aurora Basin",         ["waterhash"] = -196675805, ["watertype"] = "lake"},
  [27] =  {["name"] = "Arroyo De La Vibora",  ["waterhash"] = -49694339, ["watertype"] = "river"},
  [28] =  {["name"] = "Whinyard Strait",      ["waterhash"] = -261541730, ["watertype"] = "creek"},
  [29] =  {["name"] = "Hot Springs",          ["waterhash"] = 1175365009, ["watertype"] = "pond"},
  [30] =  {["name"] = "Barrow Lagoon",        ["waterhash"] = 795414694, ["watertype"] = "lake"},
  [31] =  {["name"] = "Dewberry Creek",       ["waterhash"] = 469159176, ["watertype"] = "creek"},
  [32] =  {["name"] = "Cairn Lake",           ["waterhash"] = -1073312073, ["watertype"] = "pond"},
  [33] =  {["name"] = "Mattlock Pond",        ["waterhash"] = 301094150, ["watertype"] = "pond"},
  [34] =  {["name"] = "Southfield Flats",     ["waterhash"] = -823661292, ["watertype"] = "pond"},
  --[35] =  {["name"] = "Bahia De La Paz",      ["waterhash"] = -1168459546, ["watertype"] = "ocean"}, -- Disabled Ocean Water
}

local buttons_prompt = GetRandomIntInRange(0, 0xffffff)
local near = 1000
local IsPlayerCrouching = nil

function Button_Prompt()
Citizen.CreateThread(function()
  local str = _U("fill_Canteen_Button")
  canteen = Citizen.InvokeNative(0x04F97DE45A519419)
  PromptSetControlAction(canteen, Config.Keys["fill_Canteen_Button"])
  str = CreateVarString(10, 'LITERAL_STRING', str)
  PromptSetText(canteen, str)
  PromptSetEnabled(canteen, true)
  PromptSetVisible(canteen, true)
  PromptSetHoldMode(canteen, true)
  PromptSetGroup(canteen, buttons_prompt)
  PromptRegisterEnd(canteen)
end)
end  

function Button_Prompt2()
Citizen.CreateThread(function()
  local str = _U("fill_Bucket_Button")
  bucket = Citizen.InvokeNative(0x04F97DE45A519419)
  PromptSetControlAction(bucket, Config.Keys["fill_Bucket_Button"])
  str = CreateVarString(10, 'LITERAL_STRING', str)
  PromptSetText(bucket, str)
  PromptSetEnabled(bucket, true)
  PromptSetVisible(bucket, true)
  PromptSetHoldMode(bucket, true)
  PromptSetGroup(bucket, buttons_prompt)
  PromptRegisterEnd(bucket)
end)
end
--[[
function Button_Prompt3()
Citizen.CreateThread(function()
    local str = _U("drink_Button")
    Drink = Citizen.InvokeNative(0x04F97DE45A519419)
    PromptSetControlAction(Drink, Config.Keys["drink_Button"])
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(Drink, str)
    PromptSetEnabled(Drink, true)
    PromptSetVisible(Drink, true)
    PromptSetHoldMode(Drink, true)
    PromptSetGroup(Drink, buttons_prompt)
    PromptRegisterEnd(Drink)
end)
end
]]
function Button_Prompt4()
Citizen.CreateThread(function()
    local str = _U("wash_Button")
    Wash = Citizen.InvokeNative(0x04F97DE45A519419)
    PromptSetControlAction(Wash, Config.Keys["wash_Button"])
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(Wash, str)
    PromptSetEnabled(Wash, true)
    PromptSetVisible(Wash, true)
    PromptSetHoldMode(Wash, true)
    PromptSetGroup(Wash, buttons_prompt)
    PromptRegisterEnd(Wash)
end)
end

Citizen.CreateThread(function()
while true do 
  Citizen.Wait(near)
  local coords = GetEntityCoords(PlayerPedId())
  local Water = Citizen.InvokeNative(0x5BA7A68A346A5A91,coords.x+3, coords.y+3, coords.z)
  local playerPed = PlayerPedId()
  for k,v in pairs(WaterTypes) do 
    if Water == WaterTypes[k]["waterhash"]  then
      if IsPedOnFoot(PlayerPedId()) then
        if IsEntityInWater(PlayerPedId()) then
          near = 5
          local pump = CreateVarString(10, 'LITERAL_STRING', _U("water_Zone_Names"))
          Button_Prompt()
          PromptSetActiveGroupThisFrame(buttons_prompt, pump)
          if PromptHasHoldModeCompleted(canteen) then
            local buttons_prompts = { bucket, canteen, Wash, Drink }
            for i, canteen in pairs(buttons_prompts) do
              PromptSetVisible(canteen, false)
            end
            TriggerServerEvent('checkcanteen')
            Citizen.Wait(15000)
            for i, canteen in pairs(buttons_prompts) do
              PromptSetVisible(canteen, true)
            end
          end
        else
          near = 1000
        end
      end
    end
  end
end
end)

Citizen.CreateThread(function()
  Button_Prompt2()
  while true do 
    Citizen.Wait(near)
    local coords = GetEntityCoords(PlayerPedId())
    local Water = Citizen.InvokeNative(0x5BA7A68A346A5A91,coords.x+3, coords.y+3, coords.z)
    local playerPed = PlayerPedId()
    for k,v in pairs(WaterTypes) do 
      if Water == WaterTypes[k]["waterhash"]  then
        if IsPedOnFoot(PlayerPedId()) then
          if IsEntityInWater(PlayerPedId()) then
            near = 5
            local pump = CreateVarString(10, 'LITERAL_STRING', _U("water_Zone_Names"))
            PromptSetActiveGroupThisFrame(buttons_prompt, pump)
            if PromptHasHoldModeCompleted(bucket) then
              local buttons_prompts = { bucket, Wash, Drink }
              for i, bucket in pairs(buttons_prompts) do
                PromptSetVisible(bucket, false)
              end
              TriggerServerEvent('checkbucket')
              Citizen.Wait(15000)
              for i, bucket in pairs(buttons_prompts) do
                PromptSetVisible(bucket, true)
              end
            end
          else
            near = 1000
          end
        end
      end
    end
  end
  end)
--[[
Citizen.CreateThread(function()
Button_Prompt3()
while true do 
  Citizen.Wait(near)
  local coords = GetEntityCoords(PlayerPedId())
  local Water = Citizen.InvokeNative(0x5BA7A68A346A5A91,coords.x+3, coords.y+3, coords.z)
  local playerPed = PlayerPedId()
  for k,v in pairs(WaterTypes) do 
    if Water == WaterTypes[k]["waterhash"]  then
      if IsPedOnFoot(PlayerPedId()) then
        if IsEntityInWater(PlayerPedId()) then
          near = 5
          local pump = CreateVarString(10, 'LITERAL_STRING', _U("water_Zone_Names"))
          PromptSetActiveGroupThisFrame(buttons_prompt, pump)
          if PromptHasHoldModeCompleted(Drink) then
            local buttons_prompts = { bucket, canteen, Wash, Drink }
            for i, Drink in pairs(buttons_prompts) do
              PromptSetVisible(Drink, false)
            end
            TriggerServerEvent('checkdrink')
            Citizen.Wait(15000)
            for i, Drink in pairs(buttons_prompts) do
              PromptSetVisible(Drink, true)
            end
          end
        else
          near = 1000
        end
      end
    end
  end
end
end)
]]
Citizen.CreateThread(function()
Button_Prompt4()
while true do 
  Citizen.Wait(near)
  local coords = GetEntityCoords(PlayerPedId())
  local Water = Citizen.InvokeNative(0x5BA7A68A346A5A91,coords.x+3, coords.y+3, coords.z)
  local playerPed = PlayerPedId()
  for k,v in pairs(WaterTypes) do 
    if Water == WaterTypes[k]["waterhash"]  then
      if IsPedOnFoot(PlayerPedId()) then
        if IsEntityInWater(PlayerPedId()) then
          near = 5
          local pump = CreateVarString(10, 'LITERAL_STRING', _U("water_Zone_Names"))
          PromptSetActiveGroupThisFrame(buttons_prompt, pump)
          if PromptHasHoldModeCompleted(Wash) then
            local buttons_prompts = { bucket, canteen, Wash, Drink }
            for i, Wash in pairs(buttons_prompts) do
              PromptSetVisible(Wash, false)
            end
            TriggerServerEvent("wash:start")
            StartWash("amb_misc@world_human_wash_face_bucket@ground@male_a@idle_d", "idle_l")
            Citizen.Wait(5000)
            TriggerServerEvent("wash:end")
            for i, Wash in pairs(buttons_prompts) do
              PromptSetVisible(Wash, true)
            end
          end
        else
          near = 1000
        end
      end
    end
  end
end
end)

RegisterNetEvent("checkcrouch")
AddEventHandler("checkcrouch", function(IsPlayerCrouch)
  IsPlayerCrouching = IsPlayerCrouch
  TriggerServerEvent("fillup1")
end)

RegisterNetEvent('canteencheck')
AddEventHandler('canteencheck', function()
  doPromptAnim(Config.Anims["fill_Canteen_A"], Config.Anims["fill_Canteen_B"], 2);
  Wait(10000)
  ClearPedTasks(PlayerPedId())
  TriggerServerEvent("fillup1")
end)

RegisterNetEvent('canteencheck_80')
AddEventHandler('canteencheck_80', function()
  doPromptAnim(Config.Anims["fill_Canteen_A"], Config.Anims["fill_Canteen_B"], 2);
  Wait(10000)
  ClearPedTasks(PlayerPedId())
  TriggerServerEvent("fillup1_80")
end)

RegisterNetEvent('canteencheck_60')
AddEventHandler('canteencheck_60', function()
  doPromptAnim(Config.Anims["fill_Canteen_A"], Config.Anims["fill_Canteen_B"], 2);
  Wait(10000)
  ClearPedTasks(PlayerPedId())
  TriggerServerEvent("fillup1_60")
end)

RegisterNetEvent('canteencheck_40')
AddEventHandler('canteencheck_40', function()
  doPromptAnim(Config.Anims["fill_Canteen_A"], Config.Anims["fill_Canteen_B"], 2);
  Wait(10000)
  ClearPedTasks(PlayerPedId())
  TriggerServerEvent("fillup1_40")
end)

RegisterNetEvent('canteencheck_20')
AddEventHandler('canteencheck_20', function()
  doPromptAnim(Config.Anims["fill_Canteen_A"], Config.Anims["fill_Canteen_B"], 2);
  Wait(10000)
  ClearPedTasks(PlayerPedId())
  TriggerServerEvent("fillup1_20")
end)

RegisterNetEvent('bucketcheck')
AddEventHandler('bucketcheck', function()
  doPromptAnim(Config.Anims["fill_Bucket_A"], Config.Anims["fill_Bucket_B"], 2);
  Wait(10000)
  ClearPedTasks(PlayerPedId())
  TriggerServerEvent("fillup2")
end)

RegisterNetEvent('drinkcheck')
AddEventHandler('drinkcheck', function()
  local _source = source
  doPromptAnim(Config.Anims["drink_A"], Config.Anims["drink_B"], 2);
  Wait(3000)
  ClearPedTasks(PlayerPedId())
  TriggerEvent("fred:consume", 0,Config.drinkAmount,0,0,0.0,0,0,0,0.0,0.0)
  PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
  TriggerServerEvent("drinkmsg")
end)


function doPromptAnim(dict, anim, loop)
  activate = false
  toggle = 0
  local playerPed = PlayerPedId()
  RequestAnimDict(dict)
  while not HasAnimDictLoaded(dict) do
      Citizen.Wait(100)
  end
  TaskPlayAnim(playerPed, dict, anim, 8.0, -8.0, 13000, loop, 0, true, 0, false, 0, false)
play_anim = false
end


--menu
--[[
Citizen.CreateThread(function()
while true do
  Citizen.Wait(1)
      local coords = GetEntityCoords(PlayerPedId())
      local Water = Citizen.InvokeNative(0x5BA7A68A346A5A91,coords.x+3, coords.y+3, coords.z)
      local playerPed = PlayerPedId()
          for k,v in pairs(WaterTypes) do 
            if Water == WaterTypes[k]["waterhash"]  then
                if IsPedOnFoot(PlayerPedId()) then
                    if IsEntityInWater(PlayerPedId()) then
                        DrawTxt("Press [~e~G~q~] to wash, [~e~ENTER~q~] to Drink Water", 0.15, 0.30, 0.1, 0.3, true, 255, 255, 255, 255, true, 10000)
                        if IsControlJustReleased(0, 0x760A9C6F) then -- wash G
                            StartWash("amb_misc@world_human_wash_face_bucket@ground@male_a@idle_d", "idle_l")
                        end
                        if IsControlJustReleased(0, 0xC7B5340A) then -- drink enter
                        TriggerEvent("drp:rio")
                        Citizen.Wait(10000)
                        TriggerEvent('fred:consume', 0,20,0,0,0.0,0,0,0,0.0,0.0) --Fred Metabolism
                        --TriggerEvent("vorpmetabolism:changeValue", "Thirst", 144) --Vorp Metabolism
                        PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
                        end
                        if IsControlJustReleased(0, 0xDFF812F9) then -- fill up empty canteen E
                          TriggerServerEvent("drp:fillemptycanteen")
                          Citizen.Wait(1000)
                          PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
                        end
                    end
                end
            end
          end
end
end)
AddEventHandler('drp:rio', function()
  local _source = source
          if rio ~= 0 then
              SetEntityAsMissionEntity(rio)
              DeleteObject(nativerioprop)
              rio = 0
              end
              local playerPed = PlayerPedId()
              Citizen.Wait(0)
              ClearPedTasksImmediately(PlayerPedId())
              TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_BUCKET_DRINK_GROUND'), -1, true, false, false, false)
              Citizen.Wait(17000)
              ClearPedTasks(PlayerPedId())
end)
AddEventHandler('drp:fill', function()
local _source = source
if rio ~= 0 then
    SetEntityAsMissionEntity(rio)
    DeleteObject(nativerioprop)
    rio = 0
end
  local playerPed = PlayerPedId()
  TriggerServerEvent("drp:addcanteen")
  ClearPedTasksImmediately(playerPed)
  TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_CAMP_LENNY_GUARD_CROUCH_TRACKS'), -1, true, false, false, false)
  Citizen.Wait(17000)
  ClearPedTasks(PlayerPedId())
end)
]]