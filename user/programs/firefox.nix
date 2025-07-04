{
  config,
  pkgs,
  ...
}: {
  programs.firefox = {
    enable = true;
    profiles.marika = {
      id = 0;
      name = "marika";
      isDefault = true;
    };
  };
}
