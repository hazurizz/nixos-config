{ pkgs, userSettings, ... }:

{
  imports = [ 
              ./dbus.nix
              ./sound.nix
              ./gnome-keyring.nix
              ./fonts.nix
              ./zram.nix
              ./trim.nix
            ];

  # Configure X11
   services.xserver = {
    enable = true;
    windowManager.leftwm.enable = true;
     displayManager = {
       autoLogin.enable = true;
       autoLogin.user = userSettings.username;
       lightdm.enable = true;
       sessionCommands = ''
       xset -dpms
       xset s blank
       xset r rate 350 50
       xset s 300
    '';
    };

    xkb.layout = "us";
    xkb.variant = "";

    videoDrivers = [ "amdgpu" ];
    deviceSection = ''Option "TearFree" "True"'';
  };
}
