local filesystem = require('gears.filesystem')
-- Thanks to jo148 on github for making rofi dpi aware!
local with_dpi = require('beautiful').xresources.apply_dpi
local get_dpi = require('beautiful').xresources.get_dpi
local rofi_command = 'env /usr/bin/rofi -dpi ' .. get_dpi() .. ' -width ' .. with_dpi(400) .. ' -show drun -theme ' .. filesystem.get_configuration_dir() .. '/configuration/rofi.rasi -run-command "/bin/bash -c -i \'shopt -s expand_aliases; {cmd}\'"'
return {
  -- List of apps to start by default on some actions
  default = {
    terminal = 'termite',
    rofi = rofi_command,
    lock = 'betterlockscreen -l',
    quake = 'termite',
    -- Editing these also edits the default program
    -- associated with each tag/workspace
    browser = 'brave',
    editor = 'code', -- gui text editor
    social = 'discord',
    game = 'lutris',
    files = 'nemo',
    music = 'spotify'
  }
  }
