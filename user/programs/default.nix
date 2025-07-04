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
    ./neovim.nix
    ./sway.nix
  ];
}
