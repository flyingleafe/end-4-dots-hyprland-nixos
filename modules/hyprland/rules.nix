{
windowrulev2 = [
  # Uncomment to apply global transparency to all windows:
  # "opacity 0.89 override 0.89 override, class:.*"

  # Disable blur for XWayland windows (or context menus with shadow would look weird)
  "noblur, xwayland:1"

  # Floating
  "float, class:^(blueberry\.py)$"
  "float, class:^(steam)$"
  "float, class:^(guifetch)$"
  "float, class:^(pavucontrol)$"
  "size 45%, class:^(pavucontrol)$"
  "center, class:^(pavucontrol)$"
  "float, class:^(org.pulseaudio.pavucontrol)$"
  "size 45%, class:^(org.pulseaudio.pavucontrol)$"
  "center, class:^(org.pulseaudio.pavucontrol)$"
  "float, class:^(nm-connection-editor)$"
  "size 45%, class:^(nm-connection-editor)$"
  "center, class:^(nm-connection-editor)$"
  "float, class:.*plasmawindowed.*"
  "float, class:kcm_.*"
  "float, class:.*bluedevilwizard"
  "float, title:.*Welcome.*"

  # No appearance
  "float, class:^(plasma-changeicons)$"
  "noinitialfocus, class:^(plasma-changeicons)$"
  "move 999999 999999, class:^(plasma-changeicons)$"

  # Tiling
  "tile, class:^dev\.warp\.Warp$"

  # Picture-in-Picture
  "float, title:^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$"
  "keepaspectratio, title:^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$"
  "move 73% 72%, title:^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$"
  "size 25%, title:^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$"
  "float, title:^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$"
  "pin, title:^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$"

  # Dialog windows – float+center these windows.
  "center, title:^(Open File)(.*)$"
  "center, title:^(Select a File)(.*)$"
  "center, title:^(Choose wallpaper)(.*)$"
  "center, title:^(Open Folder)(.*)$"
  "center, title:^(Save As)(.*)$"
  "center, title:^(Library)(.*)$"
  "center, title:^(File Upload)(.*)$"
  "float, title:^(Open File)(.*)$"
  "float, title:^(Select a File)(.*)$"
  "float, title:^(Choose wallpaper)(.*)$"
  "float, title:^(Open Folder)(.*)$"
  "float, title:^(Save As)(.*)$"
  "float, title:^(Library)(.*)$"
  "float, title:^(File Upload)(.*)$"

  # --- Tearing ---
  "immediate, title:.*\\.exe"
  "immediate, class:^(steam_app)"

  # No shadow for tiled windows (matches windows that are not floating).
  "noshadow, floating:0"
];

workspace = [
  "special:special, gapsout:30"
];

layerrule = [
  "xray 1, .*"
  # "noanim, .*"
  "noanim, walker"
  "noanim, selection"
  "noanim, overview"
  "noanim, anyrun"
  "noanim, indicator.*"
  "noanim, osk"
  "noanim, hyprpicker"
  "noanim, noanim"
  "blur, gtk-layer-shell"
  "ignorezero, gtk-layer-shell"
  "blur, launcher"
  "ignorealpha 0.5, launcher"
  "blur, notifications"
  "ignorealpha 0.69, notifications"
  "blur, logout_dialog"
  # ags
  "animation slide left, sideleft.*"
  "animation slide right, sideright.*"
  "blur, session[0-9]*"
  "blur, bar[0-9]*"
  "ignorealpha 0.6, bar[0-9]*"
  "blur, barcorner.*"
  "ignorealpha 0.6, barcorner.*"
  "blur, dock[0-9]*"
  "ignorealpha 0.6, dock[0-9]*"
  "blur, indicator.*"
  "ignorealpha 0.6, indicator.*"
  "blur, overview[0-9]*"
  "ignorealpha 0.6, overview[0-9]*"
  "blur, cheatsheet[0-9]*"
  "ignorealpha 0.6, cheatsheet[0-9]*"
  "blur, sideright[0-9]*"
  "ignorealpha 0.6, sideright[0-9]*"
  "blur, sideleft[0-9]*"
  "ignorealpha 0.6, sideleft[0-9]*"
  "blur, indicator.*"
  "ignorealpha 0.6, indicator.*"
  "blur, osk[0-9]*"
  "ignorealpha 0.6, osk[0-9]*"

  # Quickshell
  "blurpopups, quickshell:.*"
  "blur, quickshell:.*"
  "ignorealpha 0.79, quickshell:.*"
  "animation slide, quickshell:bar"
  "animation fade, quickshell:screenCorners"
  "animation slide right, quickshell:sidebarRight"
  "animation slide left, quickshell:sidebarLeft"
  "animation slide bottom, quickshell:osk"
  "animation slide bottom, quickshell:dock"
  "blur, quickshell:session"
  "noanim, quickshell:session"
  "ignorealpha 0, quickshell:session"
  "animation fade, quickshell:notificationPopup"
  "blur, quickshell:backgroundWidgets"
  "ignorealpha 0.05, quickshell:backgroundWidgets"

  # Launchers need to be FAST
  "noanim, quickshell:overview"
  "noanim, gtk4-layer-shell"

  # outfoxxed's stuff
  "blur, shell:bar"
  "ignorezero, shell:bar"
  "blur, shell:notifications"
  "ignorealpha 0.1, shell:notifications"
];
}