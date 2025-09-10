{ config, pkgs, ... }:
{
 xfconf = {
    settings = {
      xfce4-desktop = {
          "backdrop/screen0/monitorDP-8/workspace1/image-style" = 1;
          "backdrop/screen0/monitorDP-8/workspace1/last-image" = "/home/mstein/.wallpapers/HfMDK-black.png";
          "backdrop/screen0/monitorDP-8/workspace1/rgba1" = [ 0.000000 0.000000 0.000000 1.000000 ];

          #"backdrop/screen0/monitorDP-10/workspace1/image-style" = 1;
          #"backdrop/screen0/monitorDP-10/workspace1/last-image" = "/home/mstein/.wallpapers/HfMDK-black.png";
          #"backdrop/screen0/monitorDP-10/workspace1/rgba1" = [ 0.000000 0.000000 0.000000 1.000000 ];

      };

      xfce4-panel = {
        "panels/panel-1/icon-size" = 16;
        "panels/panel-1/output-name" = "DP-8";
        "panels/panel-1/size" = 30;
      };

      xsettings = {
        "Gtk/FontName" = "Sans 11.5";
        "MonospaceFontName" = "Gtk/JetBrainsMono Nerd Font 10";
      };
    };
  };
}

