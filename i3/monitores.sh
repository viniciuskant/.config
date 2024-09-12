#!/bin/bash

# Detecta a presença de um monitor HDMI
xrandr | grep HDMI-1 > /dev/null
if [ $? -eq 0 ]; then
    # Se o monitor HDMI estiver conectado, atribua workspaces pares a eDP-1 e workspaces ímpares a HDMI-1
    i3-msg '1 output eDP-1'
    i3-msg '2 output HDMI-1'
    i3-msg '3 output eDP-1'
    i3-msg '4 output HDMI-1'
    i3-msg '5 output eDP-1'
    i3-msg '6 output HDMI-1'
    i3-msg '7 output eDP-1'
    i3-msg '8 output HDMI-1'
    i3-msg '9 output eDP-1'
    i3-msg '10 output HDMI-1'
else
    # Se o monitor HDMI não estiver conectado, atribua workspaces pares e ímpares a eDP-1
    i3-msg 'workspace 1 output eDP-1'
    i3-msg 'workspace 2 output eDP-1'
    i3-msg 'workspace 3 output eDP-1'
    i3-msg 'workspace 4 output eDP-1'
    i3-msg 'workspace 5 output eDP-1'
    i3-msg 'workspace 6 output eDP-1'
    i3-msg 'workspace 7 output eDP-1'
    i3-msg 'workspace 8 output eDP-1'
    i3-msg 'workspace 9 output eDP-1'
    i3-msg 'workspace 10 output eDP-1'
fi
