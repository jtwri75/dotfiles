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
  };
}
