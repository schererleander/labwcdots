if [ $# -lt 1 ]; then
    echo "Please provide a wallpaper filename as an argument."
    exit 1
fi

wallpaper="$1"

function reload_gtk_theme() {
  theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
  gsettings set org.gnome.desktop.interface gtk-theme ''
  gsettings set org.gnome.desktop.interface gtk-theme $theme
}

swaybg -i $wallpaper

wal -i $wallpaper -n
labwc --reconfigure
reload_gtk_theme
