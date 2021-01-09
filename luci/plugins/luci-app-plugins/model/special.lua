-- Copyright 2020 LeoHao<blueseamyheart@hotmail.com>
-- Licensed to the public under the Apache License 2.0.

local log  = require "luci.log"
local fs   = require "nixio.fs"
local json = require "luci.json"
local utl  = require "luci.util"


m = Map("admin_plugins", translate("Interfaces"))
m.title = "专线"
m.curl_hostname = "ppip.paas.com"
m.pageaction = false

function get_special_status()
    local curl = "curl -H 'content-type: application/json' -X POST -d "
    local postdata = "{'sncode':'abcd'}"
    local host = "http://192.168.3.30/api/GetSpecialStatus"
    local data = luci.util.exec(curl.." "..postdata.." "..host)
    local data = '{"nodelist":{"china":[{"name":"北京"}],"world":[{"name":"美国纽约"}]},"status": 1,"limit": 50}'
    return data
end



function get_networks()
    local nets = { }
    local json_data = get_special_status()
    local special_list = json.decode(json_data)

    for name, value in utl.kspairs(special_list) do
        if name == 'status' then
            if value == 1 then
                m.special_status = '已连接'
            elseif value == nil or value == 0 then
                m.special_status = '未连接'
            end
        end
        if name == 'limit' then
            m.special_limit = value
        end
    end
end
m.special_list = special_list
m:section(SimpleSection).template = "admin_plugins/special"

function init()
   get_networks()
    return m
end
log.print_r(m)
return m
