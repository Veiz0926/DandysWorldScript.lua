-- Скрипт для отримання 10,000 іхора та адміністративних прав в Dandy's World

local player = game.Players.LocalPlayer

-- Функція для надання прав адміністратора
local function giveAdminRights(player)
    if player then
        -- Додаємо адміністративні права (це приклад, налаштування можуть бути інші)
        player.Admin = true
        print("Адміністративні права надано гравцеві: " .. player.Name)
    else
        print("Гравець не знайдений.")
    end
end

-- Функція для надання 10,000 іхора
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

-- Викликаємо функції
giveAdminRights(player)
giveIchor(player, 10000)
