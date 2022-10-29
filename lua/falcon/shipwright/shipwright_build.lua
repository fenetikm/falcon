local runners = {
  'alacritty',
  'foot',
  'iterm',
  'kitty',
  'windows_terminal',
}

for _, runner in pairs(runners) do
  require('falcon.shipwright.runners.' .. runner)
end
