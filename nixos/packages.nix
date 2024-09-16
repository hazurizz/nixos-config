{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [ ];
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    rofi
    mpv
    firefox
    discord
    obs-studio

    # CLI utils
    git
    vim
    inxi
    htop
    lshw
    btop
    wget
    kitty
    dunst
    unzip
    clinfo
    swww
    heroic
    glxinfo   
    hwinfo
    glxinfo
    lazygit
    pciutils
    glances
    openssl
    starship
    alacritty
    fastfetch
    qbittorrent
    lm_sensors
    amdgpu_top

    # GUI utils
    feh
    dmenu
    xfce.thunar
    xfce.mousepad

    # Xorg stuff
    #xterm
    #xclip
    #xorg.xbacklight
    rofi
    polybar

    # Wayland stuff
    # wl-clipboard


    # Sound
    pavucontrol

    # GPU stuff 
    mesa
    amdvlk
    vulkan-loader
    rocm-opencl-icd

    # Screenshotting
    flameshot

    # Other
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    papirus-nord
  ];

  # OpenGL.
  hardware.opengl = { # hardware.graphics on stable
    enable = true;
    driSupport32Bit = true;
  };

  # Fonts.
  fonts.packages = with pkgs; [
    font-awesome
    noto-fonts-color-emoji
    material-design-icons
    source-han-sans-japanese
  (nerdfonts.override { fonts = [ "Iosevka" ]; })
];
}
