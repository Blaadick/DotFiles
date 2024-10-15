if [ $# = 0 ]; then
    echo There is no parameters
fi

while [ "$#" -gt 0 ]; do
    case "$1" in
        --brightness) 
            echo $(($(brightnessctl g) / 480))
        ;;
        
        --headset-battery)
            # Just because Arctis Nova Pro Wireless is shit
            falseCapacity=$(bluetoothctl info 28:9A:4B:FA:A4:69 | grep Percentage | awk '{print $4}' | tr -d '()')
            echo $(((falseCapacity - 20) * 100 / 80))
        ;;

        *)
            echo Unknown parameter
            break
        ;;
    esac
    
    shift
done
