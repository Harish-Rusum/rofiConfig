#!/usr/bin/env sh

[[ "${rofiScale}" =~ ^[0-9]+$ ]] || rofiScale=10

hypr_width=${hypr_width:-1}
hypr_border=${hypr_border:-10}

if [ ! -f "${roconf}" ]; then
    roconf="$(find "styles" -type f -name "style_1.rasi" | sort -t '_' -k 2 -n | head -1)"
fi

wind_border=$(( hypr_border * 3 ))
[ "${hypr_border}" -eq 0 ] && elem_border="10" || elem_border=$(( hypr_border * 2 ))

r_override="window {border: ${hypr_width}px; border-radius: ${wind_border}px;} element {border-radius: ${elem_border}px;}"
r_scale="configuration {font: \"JetBrainsMono Nerd Font ${rofiScale}\";}"

i_override="$(gsettings get org.gnome.desktop.interface icon-theme | sed "s/'//g")"
i_override="configuration {icon-theme: \"${i_override}\";}"

case "${1}" in
    d|--drun) r_mode="drun" ;; 
    w|--window) r_mode="window" ;;
    f|--filebrowser) r_mode="filebrowser" ;;
    h|--help)
        echo -e "$(basename "${0}") [action]"
        echo "d :  drun mode"
        echo "w :  window mode"
        echo "f :  filebrowser mode"
        exit 0
        ;;
    *) r_mode="drun" ;;
esac

rofi -show "${r_mode}" \
    -theme-str "${r_scale}" \
    -theme-str "${r_override}" \
    -theme-str "${i_override}" \
    -config "${roconf}"
