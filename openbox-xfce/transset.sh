#/bin/bash
trans="$(zenity --entry --text='Transparency' --entry-text=100)"

compton-trans ${trans}
