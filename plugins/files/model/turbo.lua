-- Copyright 2020 LeoHao<blueseamyheart@hotmail.com>
-- Licensed to the public under the Apache License 2.0.

local log  = require "luci.log"
local fs   = require "nixio.fs"
local json = require "luci.json"
local utl  = require "luci.util"


m = Map("admin_plugins", translate("Interfaces"))
m.title = "站点加速"
m.curl_hostname = "ppip.paas.com"
m.pageaction = false

function get_turbo_status()
    local curl = "curl -H 'content-type: application/json' -X POST -d "
    local postdata = "{'sncode':'abcd'}"
    local host = "http://192.168.3.30/api/GetTurbo"
    local data = luci.util.exec(curl.." "..postdata.." "..host)
    local data = '{"turbo_list":{"youtube":1,"facebook":1,"google":1,"twitter":1}}'
    return data
end

function get_turbo()
    local nets = { }
    local json_data = get_turbo_status()
    local turbo_list = json.decode(json_data)

    for name, value in utl.kspairs(turbo_list) do
    end
end
m.turbolist = turbo_list
m:section(SimpleSection).template = "admin_plugins/turbo"

function init()
   get_turbo()
    return m
end
log.print_r(m)
return m
