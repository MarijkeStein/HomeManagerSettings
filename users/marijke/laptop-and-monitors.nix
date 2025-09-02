{ config, pkgs, ... }:
{
  home.activation.xrandrMonitors = ''
    $DRY_RUN_CMD ${pkgs.xorg.xrandr}/bin/xrandr --output eDP-1 --auto
    $DRY_RUN_CMD ${pkgs.xorg.xrandr}/bin/xrandr --output DP-9 --auto --left-of eDP-1
    $DRY_RUN_CMD ${pkgs.xorg.xrandr}/bin/xrandr --output DP-7 --auto --left-of DP-9
  '';

 xfconf = {
    settings = {
      xfce4-desktop = {
          "backdrop/screen0/monitoreDP-1/workspace1/image-style" = 0;
          "backdrop/screen0/monitoreDP-1/workspace1/last-image" = "/home/mstein/.wallpapers/HfMDK-black.png";
          "backdrop/screen0/monitoreDP-1/workspace1/rgba1" = [ 0.000000 0.000000 0.000000 1.000000 ];

          "backdrop/screen0/monitorDP-7/workspace1/image-style" = 0;
          "backdrop/screen0/monitorDP-7/workspace1/last-image" = "/home/mstein/.wallpapers/HfMDK-black.png";
          "backdrop/screen0/monitorDP-7/workspace1/rgba1" = [ 0.000000 0.000000 0.000000 1.000000 ];

          "backdrop/screen0/monitorDP-9/workspace1/image-style" = 0;
          "backdrop/screen0/monitorDP-9/workspace1/last-image" = "/home/mstein/.wallpapers/HfMDK-black.png";
          "backdrop/screen0/monitorDP-9/workspace1/rgba1" = [ 0.000000 0.000000 0.000000 1.000000 ];

      };

      xfce4-panel = {
        "panels/panel-1/icon-size" = 16;
        "panels/panel-1/output-name" = "DP-9";
        "panels/panel-1/size" = 30;
      };

      xsettings = {
        "Gtk/FontName" = "Sans 11.5";
        "MonospaceFontName" = "Gtk/JetBrainsMono Nerd Font 10";
      };
    };
  };
}

