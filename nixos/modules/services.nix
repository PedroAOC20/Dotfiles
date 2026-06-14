{
  services.printing.enable = true;

  services.syncthing = {
    enable = true;
    user = "pedro";
    group = "users";
    dataDir = "/home/pedro/sync";
    configDir = "/home/pedro/.config/syncthing";

    openDefaultPorts = true;

  };

  services.pulseaudio.enable = false;

  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;

    alsa.enable = true;
    alsa.support32Bit = true;

    pulse.enable = true;
  };
}
