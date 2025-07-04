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
