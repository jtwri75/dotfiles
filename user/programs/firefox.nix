{
  config,
  inputs,
  pkgs,
  ...
}: {
  programs.firefox = {
    enable = true;
    profiles.marika = {
      id = 0;
      name = "marika";
      isDefault = true;
      settings = {
        "browser.uiCustomization.state" = builtins.toJSON {
          placements = {
            widget-overflow-fixed-list = [];
            unified-extensions-area = ["ublock0_raymondhill_net-browser-action" "sponsorblocker_ajay_app_browser-action"];
            nav-bar = ["back-button" "forward-button" "stop-reload-button" "urlbar-container" "downloads-button" "unified-extensions-button"];
            TabsToolbar = ["tabbrowser-tabs"];
            toolbar-menubar = ["menubar-items"];
            PersonalToolbar = ["personal-bookmarks"];
          };
          seen = ["developer-button" "screenshot-button" "sponsorblocker_ajay_app-browser-action" "ublock0_raymondhil_net-browser-action"];
          dirtyAreaCache = ["nav-bar" "PersonalToolbar" "toolbar-menubar" "TabsToolbar" "widget-overflow-fixed-list"];
          currentVersion = 22;
          newElementCount = 2;
        };

        "extensions.autoDisableScopes" = 0;
      };
      extensions.packages = with inputs.firefox-addons.packages.${pkgs.system}; [
        sponsorblock
        ublock-origin
      ];
    };
  };
}
