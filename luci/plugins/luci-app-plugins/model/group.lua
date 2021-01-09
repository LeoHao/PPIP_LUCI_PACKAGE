-- Copyright 2020 LeoHao<blueseamyheart@hotmail.com>
-- Licensed to the public under the Apache License 2.0.

local log  = require "luci.log"
local fs   = require "nixio.fs"
local json = require "luci.json"
local utl  = require "luci.util"


m = Map("admin_plugins", translate("Interfaces"))
m.title = "自由组网"
m.curl_hostname = "ppip.paas.com"
m.pageaction = false

function get_group_status()
    local curl = "curl -H 'content-type: application/json' -X POST -d "
    local postdata = "{'sncode':'abcd'}"
    local host = "http://192.168.3.30/api/GetGroup"
    local data = luci.util.exec(curl.." "..postdata.." "..host)
    local data = '{"turbo_list":{"youtube":1,"facebook":1,"google":1,"twitter":1}}'
    return data
end

function get_group()
    local nets = { }
    local json_data = get_group_status()
    local group_list = json.decode(json_data)

    for name, value in utl.kspairs(group_list) do
    end
end
m.group_list = group_list
m:section(SimpleSection).template = "admin_plugins/group"

function init()
   get_group()
    return m
end
log.print_r(m)
return m
