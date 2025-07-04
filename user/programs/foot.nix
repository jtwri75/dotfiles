{
  config,
  pkgs,
  ...
}: let
  family = "JetBrainsMono Nerd Font";
  size = 11;
in {
  programs.foot = {
    enable = true;
    settings.main = {
      pad = "4x4 center";
      font = "${family}:size=${builtins.toString size}:style=SemiBold";
      font-bold = "${family}:size=${builtins.toString size}:style=Bold";
      font-italic = "${family}:size=${builtins.toString size}:style=SemiBold Italic";
      font-bold-italic = "${family}:size=${builtins.toString size}:style=Bold Italic";
    };
  };
}
