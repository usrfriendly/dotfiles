#/bin/bash
trans="$(echo "Transparency" | dmenu -p "Transparency (1-100)")"

compton-trans ${trans}
