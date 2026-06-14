{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix

    ./modules/system.nix
    ./modules/desktop.nix
    ./modules/development.nix
    ./modules/services.nix  ];
}
