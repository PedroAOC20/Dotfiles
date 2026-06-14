{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ghostty
    wezterm
    yazi
    superfile
    zellij
    lazygit
  ];
}
