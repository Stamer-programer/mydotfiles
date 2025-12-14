OPEN_SOUND="/home/misha/Downloads/AUDIO_APPEARANCE.wav"
CLOSE_SOUND="/home/misha/Downloads/snd_cough.wav"

# Listen for Hyprland events
hyprctl -j listen | while read -r event; do
    # When a window opens
    if echo "$event" | grep -q '"openwindow"'; then
        paplay "$OPEN_SOUND" &

    # When a window closes
    elif echo "$event" | grep -q '"closewindow"'; then
        paplay "$CLOSE_SOUND" &
    fi
done
