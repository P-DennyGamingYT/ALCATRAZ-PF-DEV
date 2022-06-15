local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("ALCATRAZ UI v1.0.2a")

local as = win:Server("Aimbot", "")

local sa = serv:Channel("Silent Aim")

local md = win:Server("Mods", "")

local ex = win:Server("Extras", "")

sa:Toggle(
    "Silent Aim",
    false,
    function(state)
        config.aimbot.silent_aim = state
    end
)

local drop =
    sa:Dropdown(
    "Hit Part",
    {"Head", "Torso"},
    function(state)
        config.aimbot.target_part = state
    end
)

local sldr =
    sa:Slider(
    "Hit Chance",
    0,
    100,
    80,
    function(state)
        config.aimbot.hit_chance = state
    end
)

local tgls = serv:Channel("FOV")

tgls:Toggle(
    "FOV",
    false,
    function(state)
        config.aimbot.field_of_view = state
    end
)

local sldr =
    tgls:Slider(
    "Range",
    0,
    360,
    180,
    function(state)
        config.aimbot.field_of_view_range = state
        fov_circle.Radius = state
    end
)

tgles:Colorpicker(
    "Color",
    Color3.fromRGB(255, 255, 255),
    function(state)
        fov_circle.Color = state
    end
)

tgls:Toggle(
    "Visible",
    false,
    function(state)
        fov_circle.Visible = state
    end
)

tgls:Toggle(
    "Visible",
    false,
    function(state)
        fov_circle.Filled = state
    end
)

local sldr =
    sldrs:Slider(
    "Transparency",
    0,
    1,
    1,
    function(state)
        fov_circle.Transparency = state
    end
)

local sldrs = md:Channel("Gun Mods")

sldrs:Toggle(
    "Instant Reload",
    false,
    function(state)
        config.gunmod.fast_reload = state
    end
)

sldrs:Toggle(
    "Instant Equip",
    false,
    function(state)
        config.gunmod.fast_equip = state
    end
)

local drops = md:Channel("Player Mods")

drops:Toggle(
    "Walkspeed",
    false,
    function(state)
        config.character.walkspeed = state
    end
)

drops:Toggle(
    "Jumppower",
    false,
    function(state)
        config.character.jumppower = state
    end
)

drops:Toggle(
    "Auto Deploy",
    false,
    function(state)
        config.character.auto_deploy = state
    end
)

drops:Toggle(
    "Fake Lag",
    false,
    function(state)
        config.character.fake_lag = state
    end
)

local clrs = md:Channel("Mod Settings")

local sldr =
    clrs:Slider(
    "Walkspeed",
    0,
    100,
    16,
    function(state)
        set_speed(state)
    end
)

local sldr =
    clrs:Slider(
    "Jumppower",
    0,
    100,
    16,
    function(state)
        set_jump_power(state)
    end
)

local sldr =
    clrs:Slider(
    "Fake Lag",
    0,
    20,
    15,
    function(state)
        config.character.fake_lag_limit = state
    end
)

local am = ex:Channel("Anti Aim")

am:Toggle(
    "Anti Aim",
    false,
    function(state)
        config.character.antiaim = state
    end
)

local drop =
    am:Dropdown(
    "Stance Type",
    {"Prone", "Crouch", "Stand"},
    function(state)
        config.character.antiaim_stance = state
    end
)

local creds = ex:Channel("Credits")


creds:Label("Made By Payson Holmes")
creds:Label("github.com/P-DennyGamingYT")
creds:Label("youtube.com/P-Denny")
creds:Label("twitch.tv/paysonism)

creds:Bind(
    "Hide UI",
    Enum.KeyCode.RightShift,
    function(hide)
        win:Destroy()
    end
)