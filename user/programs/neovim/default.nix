{
  config,
  pkgs,
  ...
}: {
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };

  xdg.configFile."nvim" = {
    source = ./config;
    recursive = true;
  };

  home.packages = with pkgs; [
    gcc
  ];
}
