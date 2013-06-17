  --/* nairodSeven::nlib */--


local __intern_local_nlib   = not script and 1 or script:IsA "LocalScript" or nil
local __intern_service      = Game.GetService
local __intern_run_service  = __intern_service(Game, "RunService")
local __intern_stepped_wait = __intern_run_service.Stepped.wait

local function __intern_get_lib_functions(lib, tbl)
	return function(tbl)
		local functions = {}
		for index, value in next, tbl do
			functions[value] = getfenv(1)[lib][value]
		end
		return functions
	end
end

local coroutine_lib = __intern_get_lib_functions "coroutine" {"create", "resume", "running", "status", "wrap", "yield"}
local string_lib    = __intern_get_lib_functions "string" {"byte", "char", "dump", "find", "format", "len", "lower", "match", "rep", "reverse", "sub", "upper", "gmatch", "gsub"}
local table_lib     = __intern_get_lib_functions "table" {"concat", "foreach", "foreachi", "getn", "insert", "maxn", "remove", "setn", "sort"}
local math_lib      = __intern_get_lib_functions "math" {"abs", "acos", "asin", "atan", "atan2", "ceil", "cos", "cosh", "deg", "exp", "floor", "fmod", "frexp", "huge", "ldexp", "log", "log10", "max", "min", "modf", "pi", "pow", "rad", "random", "randomseed", "sin", "sinh", "sqrt", "tan", "tanh"}

local service_reference = {
	Workspace                 = __intern_service(Game, "Workspace"),
	Players                   = __intern_service(Game, "Players"),
	Lighting                  = __intern_service(Game, "Lighting"),
	StarterGui                = __intern_service(Game, "StarterGui"),
	StarterPack               = __intern_service(Game, "StarterPack"),
	Debris                    = __intern_service(Game, "Debris"),
	SoundService              = __intern_service(Game, "SoundService"),
	NetworkClient             = __intern_local_nlib == 1 and __intern_service(Game, "NetworkClient") or nil,
	NetworkServer             = __intern_local_nlib == 1 and __intern_service(Game, "NetworkServer") or nil,
	RunService                = __intern_run_service,
	BadgeService              = __intern_service(Game, "BadgeService"),
	CoreGui                   = __intern_service(Game, "CoreGui"),
	ChangeHistoryService      = __intern_service(Game, "ChangeHistoryService"),
	Chat                      = __intern_service(Game, "Chat"),
	CollectionService         = __intern_service(Game, "CollectionService"),
	ContentFilter             = __intern_service(Game, "ContentFilter"),
	ContentProvider           = __intern_service(Game, "ContentProvider"),
	ControllerService         = __intern_service(Game, "ControllerService"),
	FlagStandService          = __intern_service(Game, "FlagStandService"),
	FriendService             = __intern_service(Game, "FriendService"),
	Geometry                  = __intern_service(Game, "Geometry"),
	GuiService                = __intern_service(Game, "GuiService"),
	GuidRegistryService       = __intern_service(Game, "GuidRegistryService"),
	InsertService             = __intern_service(Game, "InsertService"),
	LocalBackpack             = __intern_service(Game, "LocalBackpack"),
	MeshContentProvider       = __intern_service(Game, "MeshContentProvider"),
	PhysicsService            = __intern_service(Game, "PhysicsService"),
	ScriptContext             = __intern_service(Game, "ScriptContext"),
	ScriptInformationProvider = __intern_service(Game, "ScriptInformationProvider"),
	Selection                 = __intern_service(Game, "Selection"),
	SocialService             = __intern_service(Game, "SocialService"),
	SpawnerService            = __intern_service(Game, "SpawnerService"),
	Stats                     = __intern_service(Game, "Stats"),
	Teams                     = __intern_service(Game, "Teams"),
	TeleportService           = __intern_service(Game, "TeleportService"),
	TextService               = __intern_service(Game, "TextService"),
	VirtualUser               = __intern_service(Game, "VirtualUser"),
	Visit                     = __intern_service(Game, "Visit"),
	RenderHooksService        = __intern_service(Game, "RenderHooksService"),
	MarketplaceService        = __intern_service(Game, "MarketplaceService");
	CookiesService            = __intern_service(Game, "CookiesService"),
	GuiRoot                   = __intern_service(Game, "GuiRoot"),
	JointsService             = __intern_service(Game, "JointsService"),
	GamePassService           = __intern_service(Game, "GamePassService"),
	ContextActionService      = __intern_service(Game, "ContextActionService"),
	TextureContentProvider    = __intern_service(Game, "TextureContentProvider"),
	TweenService              = __intern_service(Game, "TweenService")
}

local player_reference = __intern_local_nlib and {
	player    = service_reference.Players.LocalPlayer,
	character = service_reference.Players.LocalPlayer.Character,
	camera    = service_reference.Workspace.CurrentCamera
} or nil

local roblox_data_reference = {
	instance_new         = Instance.new,
	axes_new             = Axes.new,
	brickcolor_new       = BrickColor.new,
	brickcolor_palette   = BrickColor.pallete,
	brickcolor_random    = BrickColor.Random,
	brickcolor_white     = BrickColor.White(),
	brickcolor_gray      = BrickColor.Gray(),
	brickcokor_dark_gray = BrickColor.DarkGray(),
	brickcolor_black     = BrickColor.Black(),
	brickcolor_red       = BrickColor.Red(),
	brickcolor_yellow    = BrickColor.Yellow(),
	brickcolor_green     = BrickColor.Green(),
	brickcolor_blue      = BrickColor.Blue(),
	cframe_new           = CFrame.new,
	cframe_angles        = CFrame.Angles,
	cframe_axis          = CFrame.fromAxisAngle,
	color_new            = Color3.new,
	ray_new              = Ray.new,
	region3_new          = Region3.new,
	region3_int16_new    = Region3int16.new,
	udim_new             = UDim.new,
	udim2_new            = UDim2.new,
	vector2_new          = Vector2.new,
	vector3_new          = Vector3.new,
	vector3_normal_id    = Vector3.fromNormalId,
	vector3_axis         = Vector3.FromAxis,
	vector3_int16_new    = Vector3int16.new
}

local function __intern_using_index_coroutine_lib(self, value) return coroutine_lib[value] or self[1][value] end
local function __intern_using_index_string_lib(self, value) return string_lib[value] or self[1][value] end
local function __intern_using_index_table_lib(self, value) return table_lib[value] or self[1][value] end
local function __intern_using_index_math_lib(self, value) return math_lib[value] or self[1][value] end
local function __intern_using_index_service_reference(self, value) return service_reference[value] or self[1][value] end
local function __intern_using_index_player_reference(self, value) return player_reference[value] or self[1][value] end
local function __intern_using_index_roblox_data_reference(self, value) return roblox_data_reference[value] or self[1][value] end
local function __intern_using_index_user_table_userdata(self, value) return self[2][value] or self[1][value] end

local function using(lib)
	if lib == "coroutine" then
		setfenv(2, setmetatable({getfenv(2)}, {__index = __intern_using_index_coroutine_lib}))
	elseif lib == "string" then
		setfenv(2, setmetatable({getfenv(2)}, {__index = __intern_using_index_string_lib}))
	elseif lib == "table" then
		setfenv(2, setmetatable({getfenv(2)}, {__index = __intern_using_index_table_lib}))
	elseif lib == "math" then
		setfenv(2, setmetatable({getfenv(2)}, {__index = __intern_using_index_math_lib}))
	elseif lib == "data" then
		setfenv(2, setmetatable({getfenv(2)}, {__index = __intern_using_index_roblox_data_reference}))
	elseif lib == "service" then
		setfenv(2, setmetatable({getfenv(2)}, {__index = __intern_using_index_service_reference}))
	elseif lib == "player" and __intern_local_nlib then
		setfenv(2, setmetatable({getfenv(2)}, {__index = __intern_using_index_player_reference}))
	elseif type(lib) == "table" or type(lib) == "userdata" then
		setfenv(2, setmetatable({getfenv(2), lib}, {__index = __intern_using_index_user_table_userdata}))
	end
end

local function wait_frame() __intern_stepped_wait(__intern_run_service) end

local function add_env(current_env, new_env)
	for index, value in next, new_env do
		current_env[index] = value
	end
	return current_env
end

local function table_add(...)
	local table_result = {}
	for i, v in next, {...} do
		for index, value in next, v do
			table_result[type(index) == "number" and #table_result + 1 or index] = value
		end
	end
	return table_result
end

local function instance(object)
	return function(properties)
		local object = Instance.new (object)
		for index, property in next, properties do
			object[index] = property
		end
	end
end

local function weld_part(p1, p2)
        local weld = Instance.new("Weld", p1)
        local cframe = p1.CFrame:inverse() * p2.CFrame
        weld.Part0 = p1
        weld.Part1 = p2
        weld.C0 = cframe
        p1.Anchored = false
        p2.Anchored = false
        return weld
end

-------

local nlib = setmetatable({
	--
	using      = using,
	wait_frame = wait_frame,
	add_env    = add_env,
	table_add  = table_add,
	instance   = instance,
	weld_part  = weld_part
	--
},{__call = function(self)
	setfenv(2, add_env(getfenv(2), self))
end}) 

_G.nlib = nlib

print "nairodSeven::nlib loaded"
