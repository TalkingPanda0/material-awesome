#!/usr/bin/env bash
numlockx on
function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}
run flameshot &
run pa-applet &
run picom &
run xfce4-power-manager &
#run discord &
#run variety &
