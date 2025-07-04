{
  config,
  pkgs,
  ...
}: {
  programs.git = {
    enable = true;
    userName = "jtwri75";
    userEmail = "jtwri75@gmail.com";
    signing = {
      format = "ssh";
      key = "${config.home.homeDirectory}/.ssh/id_ed25519.pub";
      signByDefault = true;
    };
    extraConfig = {
      init.defaultBranch = "master";
      push.autoSetupRemote = true;
    };
  };
}
