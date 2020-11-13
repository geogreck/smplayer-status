POSITION=$(echo '{ "command": ["get_property_string", "time-pos"] }' | socat - /tmp/smplayer-mpv-22ba8 | jq .data | tr '"' ' ' | cut -d'.' -f 1)

printf '%d:%02d:%02d' $(($POSITION/3600)) $(($POSITION%3600/60)) $(($POSITION%60))
