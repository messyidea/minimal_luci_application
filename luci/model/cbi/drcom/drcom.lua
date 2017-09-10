local m, s, op
m = Map("drcom", translate("Control drcom"))
s = m:section(TypedSection, "drcom", "")
s.anonymous = true

op = s:option(ListValue, "operation", "Operation")
op.default = 0
op.datatype = "uinteger"
op:value(0, "start")
op:value(1, "stop")
op:value(2, "restart")

local apply = luci.http.formvalue("cbi.apply")
if apply then
    local op_val = tonumber(luci.http.formvalue("cbid.drcom.drcom.operation"))
    if op_val == 0 then
        io.popen("echo run your start command")
    elseif op_val == 1 then
        io.popen("echo run your stop command")
    elseif op_val == 2 then
        io.popen("echo run your restart command")
    end
end

return m

