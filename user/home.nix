{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./cursor.nix
    ./gtk.nix
    ./programs
    ./services
  ];

  home = {
    username = "marika";
    homeDirectory = "/home/marika";
    stateVersion = "25.05";
  };
}
