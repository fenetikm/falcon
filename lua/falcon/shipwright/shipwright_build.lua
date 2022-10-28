local runners = {
  'alacritty',
  'foot',
  'iterm',
  'kitty',
}

for _, runner in pairs(runners) do
  require('falcon.shipwright.runners.' .. runner)
end
