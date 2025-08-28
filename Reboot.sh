#!/bin/bash
#Ask if the user want to reboot and wait for 1 keystroke as answer
#-n 1: read 1 keystroke
#-p "..." : show the text prompt
read -n 1 -p "Reboot computer? (s/S/y/Y): " answer
echo "" #help to format the output

#Verify what key was pressed
case "$answer" in
    [sSyY])
        #If the answer is s, S, y or Y, it will proceed to reboot
	reboot
        ;;
    *)
        #If any other key (including just "enter") is pressed, it doesn't reboot and leave the terminal running
        echo "Reboot aborted"
        ;;
esac