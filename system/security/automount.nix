{ ... }:

{
  # List services that you want to enable:
  services = { 
    gnome.gnome-keyring.enable = true;
    dbus  = {
       enable = true;
       packages = [ pkgs.dconf ];
    };  
    gvfs.enable = true;
    devmon.enable = true;
    udisks2.enable = true;
  };
}
