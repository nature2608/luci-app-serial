module("luci.controller.series", package.seeall)
function index()
        if not nixio.fs.access("/etc/config/series") then
                return
        end
        entry({"admin", "services", "series"}, cbi("series"), _("输入解锁码")).dependent = true
end