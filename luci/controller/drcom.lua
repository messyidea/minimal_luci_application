module("luci.controller.drcom", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/drcom") then
		return
	end

	local page

	page = entry({"admin", "network", "drcom"}, cbi("drcom/drcom"), _("drcom"))
	page.dependent = true

end

