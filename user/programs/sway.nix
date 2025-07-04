{
  config,
  pkgs,
  ...
}: let
  wallpaper = ../../wallpapers/minimal_nord.png;
in {
  wayland.windowManager.sway = {
    enable = true;
    checkConfig = false;
    wrapperFeatures.gtk = true;
    config = {
      modifier = "Mod4";
      terminal = "foot";
      bars = [];
      gaps = {
        inner = 4;
        outer = 4;
      };
      window = {
        border = 2;
        titlebar = false;
      };
      colors = {
        focused = {
          background = "#000000";
          text = "#000000";
          border = "#8fbcbb";
          indicator = "#8fbcbb";
          childBorder = "#8fbcbb";
        };
        focusedInactive = {
          background = "#000000";
          text = "#000000";
          border = "#3b4252";
          indicator = "#3b4252";
          childBorder = "#3b4252";
        };
        unfocused = {
          background = "#000000";
          text = "#000000";
          border = "#3b4252";
          indicator = "#3b4252";
          childBorder = "#3b4252";
        };
        urgent = {
          background = "#000000";
          text = "#000000";
          border = "#bf616a";
          indicator = "#bf616a";
          childBorder = "#bf616a";
        };
      };
      keybindings = let
        inherit (config.wayland.windowManager.sway.config) modifier terminal;
      in {
        "${modifier}+B" = "exec firefox";
        "${modifier}+Q" = "kill";
        "${modifier}+Return" = "exec ${terminal}";

        "${modifier}+1" = "workspace number 1";
        "${modifier}+2" = "workspace number 2";
        "${modifier}+3" = "workspace number 3";
        "${modifier}+4" = "workspace number 4";
        "${modifier}+5" = "workspace number 5";
        "${modifier}+6" = "workspace number 6";

        "${modifier}+Comma" = "workspace prev";
        "${modifier}+Period" = "workspace next";

        "${modifier}+Shift+1" = "move container to workspace number 1";
        "${modifier}+Shift+2" = "move container to workspace number 2";
        "${modifier}+Shift+3" = "move container to workspace number 3";
        "${modifier}+Shift+4" = "move container to workspace number 4";
        "${modifier}+Shift+5" = "move container to workspace number 5";
        "${modifier}+Shift+6" = "move container to workspace number 6";
      };
      output = {
        eDP-1.disable = "";
        HDMI-A-1.bg = "${wallpaper} fill";
      };
    };
  };
}
