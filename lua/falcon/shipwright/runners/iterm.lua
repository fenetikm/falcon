-- taken from https://github.com/mcchrish/zenbones.nvim/blob/main/lua/zenbones/shipwright/runners/iterm.lua
-- kudos!
---@diagnostic disable: undefined-global
local overwrite = require('shipwright.transform.overwrite')
local builder = require('shipwright.builder')

local key_template = [[
  <key>$k Color</key>
]]

local color_template = [[
  <dict>
    <key>Alpha Component</key>
    <real>1</real>
    <key>Blue Component</key>
    <real>$b</real>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Green Component</key>
    <real>$g</real>
    <key>Red Component</key>
    <real>$r</real>
  </dict>]]

local start_template = [[<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
]]

local end_template = [[
</dict>
</plist>]]

local helpers = require "shipwright.transform.helpers"

local function hex_to_rgb(hex)
  local _, r, g, b = hex:match "(.)(..)(..)(..)"
  r, g, b =
    string.format("%0.16f", (tonumber(r, 16) / 255)),
    string.format("%0.16f", (tonumber(g, 16) / 255)),
    string.format("%0.16f", (tonumber(b, 16) / 255))
  return { r = r, g = g, b = b }
end

local function key_to_xml(key, color)
  local xml = helpers.apply_template(key_template, { k = key })
  local rgb = hex_to_rgb(color.hex)
  xml = xml .. helpers.apply_template(color_template, rgb)
  return xml
end

local iterm_colours = {
    ["Ansi 0"] = colours.black,
    ["Ansi 1"] = colours.red,
    ["Ansi 2"] = colours.green,
    ["Ansi 3"] = colours.yellow,
    ["Ansi 4"] = colours.purple,
    ["Ansi 5"] = colours.orange,
    ["Ansi 6"] = colours.cyan,
    ["Ansi 7"] = colours.normal_gray,
    ["Ansi 8"] = colours.bg,
    ["Ansi 9"] = colours.bright_red,
    ["Ansi 10"] = colours.bright_green,
    ["Ansi 11"] = colours.bright_yellow,
    ["Ansi 12"] = colours.blue_gray,
    ["Ansi 13"] = colours.bright_orange,
    ["Ansi 14"] = colours.bright_cyan,
    ["Ansi 15"] = colours.white,
    ["Foreground"] = colours.normal_gray,
    ["Background"] = colours.bg,
    ["Bold"] = colours.light_gray,
    ["Cursor"] = colours.br_yellow,
    ["Cursor Text"] = colours.inactive_bg,
    ["Cursor Guide"] = colours.blue_dark_gray,
    ["Link"] = colours.br_blue,
    ["Selection"] = colours.dark_indigo,
    ["Selected Text"] = colours.light_gray,
    ["Badge"] = colours.mid_gray,
    ["Tab"] = colours.normal_gray,
}

local template = start_template

local xml_compiled = {}
for k, c in pairs(iterm_colours) do
  table.insert(xml_compiled, key_to_xml(k, c))
end

template = template .. table.concat(vim.fn.sort(xml_compiled), "\n")
template = template .. end_template

builder.run(
  colours,
  to_iterm,
  {overwrite, 'iterm2/falcon.itermcolors'}
)
