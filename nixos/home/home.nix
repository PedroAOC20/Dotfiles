{ config, pkgs, inputs, ... }:

{
  imports = [
     inputs.noctalia.homeModules.default
    
    ./shell.nix
    ./terminal.nix
    ./editors.nix
    ./desktop.nix
    ./noctalia.nix
  ];

  home.username = "pedro";
  home.homeDirectory = "/home/pedro";

  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
}
