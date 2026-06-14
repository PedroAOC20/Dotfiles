{ pkgs, ... }:

{
  programs.fish.enable = true;

  programs.starship.enable = true;

  home.packages = with pkgs; [
    eza
    fzf
    zoxide
    fd
    bat
    git
    lazygit
  ];
}
