{
  general = {
    "col.active_border" = "rgba(F7DCDE39)";
    "col.inactive_border" = "rgba(A58A8D30)";
  };

  misc = {
    background_color = "rgba(1D1011FF)";
  };

  plugin = {
    hyprbars = {
      bar_text_font = "Rubik, Geist, AR One Sans, Reddit Sans, Inter, Roboto, Ubuntu, Noto Sans, sans-serif";
      bar_height = 30;
      bar_padding = 10;
      bar_button_padding = 5;
      bar_precedence_over_border = true;
      bar_part_of_window = true;

      bar_color = "rgba(1D1011FF)";
      "col.text" = "rgba(F7DCDEFF)";

      # example buttons (R -> L)
      # hyprbars-button = color, size, icon, on-click
      hyprbars-button = [
        "rgb(F7DCDE), 13, 󰖭, hyprctl dispatch killactive"
        "rgb(F7DCDE), 13, 󰖯, hyprctl dispatch fullscreen 1"
        "rgb(F7DCDE), 13, 󰖰, hyprctl dispatch movetoworkspacesilent special"
      ];
    };
  };

  windowrulev2 = [
    "bordercolor rgba(FFB2BCAA) rgba(FFB2BC77),pinned:1"
  ];
}