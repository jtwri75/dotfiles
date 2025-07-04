{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./fish.nix
    ./sway.nix
  ];
}
