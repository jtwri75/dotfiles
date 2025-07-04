{
  config,
  pkgs,
  ...
}: {
  home.pointerCursor = {
    enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 16;
    gtk.enable = true;
    sway.enable = true;
  };
}
