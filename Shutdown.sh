#!/bin/bash
#Ask if the user want to shutdown and waits for 1 keystroke as answer
#-n 1: read 1 keystroke
#-p "..." : show the text prompt
read -n 1 -p "Shutdown computer? (s/S/y/Y): " answer
echo "" #help to format the output

#Verify what key was pressed
case "$answer" in
    [sSyY])
        #If the answer is s, S, y or Y, it will proceed to shutdown
	shutdown -h now
        ;;
    *)
        #If any other key (including just "enter") is pressed, it doesn't shutdown and leave the terminal running
        echo "Shutdown aborted"
        ;;
esac