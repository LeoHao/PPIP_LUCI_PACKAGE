local PPIP_PaaS_DOMAIN = "ppip.paas.com"
local PAAS_PLUGIN_SPECIAL_API = "/api/plugin/special/list"

local function Get_Special_API_URL()
	return PPIP_PaaS_DOMAIN..PAAS_PLUGIN_SPECIAL_API
end
