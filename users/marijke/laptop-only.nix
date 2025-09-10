{ config, pkgs, ... }:
{
 xfconf = {
    settings = {
      xfce4-desktop = {
        "backdrop/screen0/monitoreDP-1/workspace0/image-style" = 0;
        "backdrop/screen0/monitoreDP-1/workspace1/image-style" = 0;
      };

      xfce4-panel = {
        "panels/panel-1/icon-size" = 12;
        "panels/panel-1/output-name" = "eDP-1";
        "panels/panel-1/size" = 24;
      };

      xsettings = {
        "Gtk/FontName" = "Sans 11.5";
        "MonospaceFontName" = "Gtk/JetBrainsMono Nerd Font Medium 10";
      };
    };
  };
}
