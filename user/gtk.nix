{
  config,
  pkgs,
  ...
}: {
  gtk = {
    enable = true;
    font = {
      package = pkgs.inter;
      name = "Inter";
    };
    iconTheme = {
      package = pkgs.papirus-nord;
      name = "Papirus-Dark";
    };
    theme = {
      package = pkgs.nordic;
      name = "Nordic";
    };
  };
}
