#!/bin/bash
SERVICE='gnome-terminal'
#lista de los id de los terminales abiertos
WINS=("$(xdotool search --onlyvisible --classname $SERVICE)")
if [ "$WINS" == "" ]; then
    $($SERVICE &>/dev/null)
    exit 0;
fi
for word in $WINS
do
    $(xdotool windowactivate --sync "$word");
done
