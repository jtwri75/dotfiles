{
  config,
  pkgs,
  ...
}: {
  programs.sway = {
    enable = true;
    extraPackages = with pkgs; [wl-clipboard];
    wrapperFeatures.gtk = true;
  };
}
