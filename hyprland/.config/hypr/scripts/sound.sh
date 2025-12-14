#!/bin/bash

handle() {
  case $1 in
  openwindow*) paplay /home/misha/Documents/AUDIO_APPEARANCE.wav & ;;
  closewindow*) paplay /path/to/your/close-sound.wav ;;
    # Add more cases as needed
  esac
}

socat -U - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do
  handle "$line"
done
