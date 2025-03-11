while read -r line; do
    if [[ -n $line ]]; then
        bash -c "$line" &
    fi
done < "$HOME/Scripts/autostart/apps.lst"
