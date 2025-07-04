{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./firefox.nix
    ./fish.nix
    ./foot.nix
    ./git.nix
    ./neovim
    ./starship.nix
    ./sway.nix
  ];
}
