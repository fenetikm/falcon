local runners = {
  'alacritty',
  'foot',
  'iterm',
  'kitty',
  'windows_terminal',
  'vim',
}

for _, runner in pairs(runners) do
  require('falcon.shipwright.runners.' .. runner)
end
