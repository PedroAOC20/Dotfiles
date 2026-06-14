{ config, pkgs, ... }:

{
  networking.hostName = "nixos_note";
  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";
  
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  i18n.defaultLocale = "pt_BR.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  users.users.pedro = {
    isNormalUser = true;
    description = "pedro";

    extraGroups = [
      "wheel"
      "networkmanager"
    ];

    shell = pkgs.fish;
  };

  programs.fish.enable = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 14d";
  };

  nix.optimise.automatic = true;

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.11";
}
