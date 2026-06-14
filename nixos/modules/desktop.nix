{ pkgs, ... }:

{
  programs.niri.enable = true;

  services.greetd = {
    enable = true;

    settings = {
      default_session = {
        command = "niri-session";
        user = "pedro";
      };
    };
  };

  hardware.bluetooth.enable = true;

  services.upower.enable = true;

  services.power-profiles-daemon.enable = true;

  xdg.portal.enable = true;

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  environment.systemPackages = with pkgs; [
    xwayland
    wl-clipboard
    firefox
  ];
}
