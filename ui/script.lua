if game.PlaceId == 123 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() -- Library
    
    local Window = Library.CreateLib("ALCATRAZ PF", "DarkTheme") -- Title & Theme
    
    local mains = Window:NewTab("Main")
    local modss = Window:NewTab("Mods")
    local extras = Window:NewTab("Extra") -- Tabs
    
    local s = mains:NewSection("Silent Aim")
    local f = mains:NewSection("FOV")
    local pm = modss:NewSection("Player Mods")
    local gm = modss:NewSection("Gun Mods")
    local ms = modss:NewSection("Mod Settings")
    local l = extras:NewSection("Lag")
    local c = extras:NewSection("Credits")
    local ui = extras:NewSection("UI Settings") -- Sections
    
    s:NewToggle("Silent Aim", "Toggles Silent Aim.", function(state)
        config.aimbot.silent_aim = state
    end)
    
    s:NewDropdown("Hit Part", "Where to have the bullets hit.", {"head", "torso"}, function(state)
        config.aimbot.target_part = state
    end)
    
    s:NewSlider("Hit chance", "The chance of your bullets hitting.", 100, 1, function(state)
        config.aimbot.hit_chance = state
    end)
    
    f:NewToggle("FOV", "Toggles the FOV on or OFF", function(state)
        config.aimbot.field_of_view = state
    end)
    
    f:NewSlider("FOV Radius", "Changes the radius of your FOV.", 360, 0, function(state)
        config.aimbot.field_of_view_range = state
        fov_circle.Radius = state
    end)
    
    f:NewColorPicker("FOV Color", "Changes the Color of your FOV ring.", Color3.fromRGB(0,0,0), function(state)
        fov_circle.Color = state
    end)
    
    f:NewToggle("FOV Visibility", "Changes whether you can see your FOV or not.", function(state)
        fov_circle.Visible = state
    end)
    
    f:NewToggle("FOV Fill", "Changes whether your FOV circle is filled or not.", function(state)
        fov_circle.Filled = state
    end)
    
    f:NewSlider("FOV Transparency", "Changes the FOV transparency level.", 1, 0, function(state)
        fov_circle.Transparency = state
    end)
    
    pm:NewToggle("Walk Speed", "Toggles whether walkspeed mods are enabled.", function(state)
        config.character.walkspeed = state
    end)
    
    pm:NewToggle("Jump Power", "Toggles whether jump power mods are enabled", function(state)
        config.character.jumppower = state
    end)
    
    pm:NewToggle("Auto Deploy", "Automatically re-deploys your character after death.", function(state)
        config.character.auto_deploy = state
    end)
    
    pm:NewToggle("Anti-Aim", "Fakes your stance to trick enemies.", function(state)
        config.character.antiaim = state
    end)
    
    gm:NewToggle("Fast Reload", "Toggles whether you will reload fast or not.", function(state)
        config.gunmod.fast_reload = state
    end)
    
    gm:NewToggle("Fast Equip", "Toggles whether you will equip guns fast or not.", function(state)
        config.gunmod.fast_equip = state
    end)
    
    l:NewToggle("Lag", "Generates Lag.", function(state)
        config.character.fake_lag = state
    end)
    
    l:NewSlider("Lag Amount", "How much lag to generate.", 20, 0, function(state)
        set_speed(state)
    end)
    
    ms:NewSlider("Walkspeed", "How fast your character will walk/run.", 100, 16, function(state)
        set_speed(state)
    end)
    
    ms:NewSlider("Jump Power", "How high your character will jump.", 100, 50, function(state)
        set_jump_power(state)
    end)
    
    ms:NewDropdown("Anti-Aim", "Anti-Aim Stance Settings", {"prone", "crouch", "stand"}, function(state)
        config.character.antiaim_stance = state
    end)
    
    c:NewLabel("Made By Payson Holmes")
    
    c:NewLabel("https://dsc.gg/PDennSploit")
    
    c:NewLabel("https://github.com/P-DennyGamingYT/")
    
    ui:NewKeybind("Toggle UI", "Toggle the UI visibility.", Enum.KeyCode.P, function()
        Library:ToggleUI()
    end)
    
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "ALCATRAZ - v1.0.2",
        Text = "Made By Payson Holmes", 
        Duration = 8 
        })
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "Support",
            Text = "https://dsc.gg/PDennSploit", 
            Duration = 8 
            })
        print("=========================")
        print("ALCATRAZ By Payson Holmes")
        print("=========================")
    
    
    
    
    
    
    
    
    
    
    
    
    
    end