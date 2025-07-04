{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./firefox.nix
    ./foot.nix
    ./git.nix
    ./neovim.nix
    ./sway.nix
  ];
}
