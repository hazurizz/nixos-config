{ pkgs, ... }:

{
  # OpenGL
  hardware.opengl = { # hardware.graphics on stable
    enable = true;
    driSupport32Bit = true;
  hardware.opengl.extraPackages = with pkgs; [
    rocmPackages.clr.icd
       mesa
       vulkan-loader
    ];
  };
}
