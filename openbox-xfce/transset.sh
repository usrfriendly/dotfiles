#/bin/bash
trans="$(dmenu -p "Transparency (1-100)" -fn "Droid Sans Mono:10" -nf "#f9f9f9" -nb "#444444" -sb "#d64937" -sf "#f9f9f9")"

compton-trans ${trans}
