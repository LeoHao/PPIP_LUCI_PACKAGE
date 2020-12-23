module("luci.controller.plugins", package.seeall)
function index()
        local page
        entry({"admin", "plugins"}, alias("admin", "plugins", "pluginslist"), _("插件管理"), 35).index = true
        entry({"admin", "plugins", "special"}, cbi("admin_plugins/special"), _("专线网络"), 1)
        entry({"admin", "plugins", "turbo"}, cbi("admin_plugins/turbo"), _("站点加速"), 2)
        entry({"admin", "plugins", "group"}, cbi("admin_plugins/group"), _("自由组网"), 3)
end

