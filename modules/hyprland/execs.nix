{
  exec-once = [
    "swww-daemon --format xrgb --no-cache"
    "sleep 0.5; swww img \"$(cat ~/.local/state/quickshell/user/generated/wallpaper/path.txt)\" --transition-step 100 --transition-fps 120 --transition-type grow --transition-angle 30 --transition-duration 1"
    "/usr/lib/geoclue-2.0/demos/agent & gammastep"
    "qs &"
    "fcitx5"
    "gnome-keyring-daemon --start --components=secrets"
    "/usr/lib/polkit-kde-authentication-agent-1 || /usr/libexec/polkit-kde-authentication-agent-1  || /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 || /usr/libexec/polkit-gnome-authentication-agent-1"
    "hypridle"
    "dbus-update-activation-environment --all"
    "sleep 1 && dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
    "hyprpm reload"
    "easyeffects --gapplication-service"
    # "wl-paste --watch cliphist store &"
    "wl-paste --type text --watch cliphist store"
    "wl-paste --type image --watch cliphist store"
    "hyprctl setcursor Bibata-Modern-Classic 24"
  ];
}