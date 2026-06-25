local settings = require('falcon.settings').get()
local colours = require('falcon.colours')

local bgs = {
  windowBg = colours.bg,
  windowBgNC = colours.inactive_bg,
  statusBg = colours.status,
  statusBgNC = colours.inactive_status,
}

if not settings.inactive_bg then
  bgs.windowBgNC = colours.bg
end

if settings.transparent_bg then
  bgs.statusBg = 'NONE'
  bgs.statusBgNC = 'NONE'
  bgs.windowBg = 'NONE'
  bgs.windowBgNC = 'NONE'
end

return bgs
