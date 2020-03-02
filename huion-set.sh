#!/bin/bash
session=$(loginctl list-sessions | grep -m 1 $USER | awk '{print $1}')
echo "Session: " $session
x=$(loginctl show-session $session | grep Type) 
session_type=${x#"Type="}
echo "Session Type: "$session_type
if [ $session_type != "x11" ]; then
    echo "Program do not work under $session_type!"
    exit 1
fi
declare -a selection
selection=()
x=$(xinput | grep 'Huion Tablet Pen Pen' | awk '{print $9}')
pen="${x#id=}"
if [ "x"$pen == "x" ];then
    echo "No huion Pen detected, exiting..."
    exit 2
fi
echo "Pen number is: $pen"
screens=$(xrandr | grep " connected" | awk '{print $1}')
i=0
echo "Select one of the screens:"
for x in $screens
do
    i=$((i+1))
    echo "$i - "$x
    selection+=( "$x" )
done
i=$((i+1))
echo "$i - All"
selection+=( "All" )
echo
read -p "Enter screen number : " screen
screen=$((screen-1))
$(xinput map-to-output $pen ${selection[$screen]})
x=$?
if [ "$x" -eq "0" ]; then
    echo "Huion confined to screen: ${selection[$screen]}"
else
    echo "Failed to setup Huion screen to ${selection[$screen]}"
fi    
echo

