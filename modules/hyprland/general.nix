{
  input = {
    kb_layout = "us,ru";
    kb_options = "grp:caps_toggle";

    numlock_by_default = true;
    repeat_delay = 250;
    repeat_rate = 35;

    touchpad = {
      natural_scroll = true;
      disable_while_typing = true;
      clickfinger_behavior = true;
      scroll_factor = 0.5;
    };

    special_fallthrough = true;
    follow_mouse = 1;
  };


  gestures = {
    workspace_swipe = true;
    workspace_swipe_distance = 700;
    workspace_swipe_fingers = 3;
    workspace_swipe_min_fingers = true;
    workspace_swipe_cancel_ratio = 0.2;
    workspace_swipe_min_speed_to_force = 5;
    workspace_swipe_direction_lock = true;
    workspace_swipe_direction_lock_threshold = 10;
    workspace_swipe_create_new = true;
  };

  general = {
    gaps_in = 4;
    gaps_out = 5;
    gaps_workspaces = 50;
    border_size = 1;
    "col.active_border" = "rgba(0DB7D4FF)";
    "col.inactive_border" = "rgba(31313600)";
    resize_on_border = true;
    no_focus_fallback = true;
    allow_tearing = true;
    snap = {
      enabled = true;
    };
  };

  dwindle = {
    preserve_split = true;
    smart_split = false;
    smart_resizing = false;
    # precise_mouse_move = true;
  };

  decoration = {
    rounding = 18;
    blur = {
      enabled = true;
      xray = true;
      special = false;
      new_optimizations = true;
      size = 14;
      passes = 3;
      brightness = 1;
      noise = 0.01;
      contrast = 1;
      popups = true;
      popups_ignorealpha = 0.6;
      input_methods = true;
      input_methods_ignorealpha = 0.8;
    };
    shadow = {
      enabled = true;
      ignore_window = true;
      range = 30;
      offset = "0 2";
      render_power = 4;
      color = "rgba(00000010)";
    };
    dim_inactive = true;
    dim_strength = 0.025;
    dim_special = 0.07;
  };

  animations = {
    enabled = true;
    bezier = [
      "expressiveFastSpatial, 0.42, 1.67, 0.21, 0.90"
      "expressiveSlowSpatial, 0.39, 1.29, 0.35, 0.98"
      "expressiveDefaultSpatial, 0.38, 1.21, 0.22, 1.00"
      "emphasizedDecel, 0.05, 0.7, 0.1, 1"
      "emphasizedAccel, 0.3, 0, 0.8, 0.15"
      "standardDecel, 0, 0, 0, 1"
      "menu_decel, 0.1, 1, 0, 1"
      "menu_accel, 0.52, 0.03, 0.72, 0.08"
    ];
    animation = [
      "windowsIn, 1, 3, emphasizedDecel, popin 80%"
      "windowsOut, 1, 2, emphasizedDecel, popin 90%"
      "windowsMove, 1, 3, emphasizedDecel, slide"
      "border, 1, 10, emphasizedDecel"
      "layersIn, 1, 2.7, emphasizedDecel, popin 93%"
      "layersOut, 1, 2, menu_accel, popin 94%"
      "fadeLayersIn, 1, 0.5, menu_decel"
      "fadeLayersOut, 1, 2.2, menu_accel"
      "workspaces, 1, 7, menu_decel, slide"
      "specialWorkspaceIn, 1, 2.8, emphasizedDecel, slidevert"
      "specialWorkspaceOut, 1, 1.2, emphasizedAccel, slidevert"
    ];
  };

  misc = {
    disable_hyprland_logo = true;
    disable_splash_rendering = true;
    vfr = 1;
    vrr = 1;
    mouse_move_enables_dpms = true;
    key_press_enables_dpms = true;
    animate_manual_resizes = false;
    animate_mouse_windowdragging = false;
    enable_swallow = true;
    swallow_regex = "(foot|kitty|allacritty|Alacritty)";
    new_window_takes_over_fullscreen = 2;
    allow_session_lock_restore = true;
    initial_workspace_tracking = false;
    focus_on_activate = true;
  };

  binds = {
    scroll_event_delay = 0;
    hide_special_on_workspace_change = true;
  };

  cursor = {
    zoom_factor = 1;
    zoom_rigid = false;
  };

  plugin = {
    hyprexpo = {
      columns = 3;
      gap_size = 5;
      bg_col = "rgb(000000)";
      workspace_method = "first 1";
      enable_gesture = false;
      gesture_distance = 300;
      gesture_positive = false;
    };
  };
}