{ pkgs, ... }:

{
  # Fonts.
  fonts.packages = with pkgs; [
    font-awesome
    noto-fonts-color-emoji
    material-design-icons
    source-han-sans-japanese
  (nerdfonts.override { fonts = [ "Iosevka" ]; })
];

}