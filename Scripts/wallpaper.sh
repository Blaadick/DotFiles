isNsfw=false

if [ $# = 0 ]; then
    echo There is no parameters
    exit
fi

for arg in "$@"; do
    case "$arg" in
        --nsfw) isNsfw=true ;;
    esac
done

while [ "$#" -gt 0 ]; do
    case "$1" in
        --nsfw) ;;
        
        random)
            if [ "$isNsfw" = true ]; then
                randomWallpaper=$(ls ~/Pictures/Wallpaper/*NS.png | shuf -n 1)
            else
                randomWallpaper=$(ls ~/Pictures/Wallpaper/*.png | grep -vE NS.png | shuf -n 1)
            fi

            hyprctl hyprpaper unload all
            hyprctl hyprpaper preload "$randomWallpaper"
            hyprctl hyprpaper wallpaper ", $randomWallpaper"

            break
        ;;
        
        set)
            if [ -z "$2" ]; then
                echo "No file path was specified"
                break
            elif [ ! -f "$2" ]; then
                echo "Not a file"
                break
            elif [[ ! "$2" =~ .(jpg|jpeg|png|gif|bmp|tiff) ]]; then
                echo "Not an image"
                break
            fi

            hyprctl hyprpaper unload all
            hyprctl hyprpaper preload "~/$2"
            hyprctl hyprpaper wallpaper ", ~/$2"

            break
        ;;

        *)
            echo Unknown parameter
            break
        ;;
    esac
    
    shift
done
