{ config, pkgs, ... }:

let
    #monitorConfig = "laptop-only";
    monitorConfig = "laptop-and-monitors";
in
{
  imports = [
      ./${monitorConfig}.nix
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "mstein";
  home.homeDirectory = "/home/mstein";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    pkgs.bat
    pkgs.bottom
    pkgs.eza
    pkgs.fend
    pkgs.jetbrains.pycharm-community-bin
    pkgs.python313
    pkgs.python313Packages.ipython
    pkgs.rustup
    pkgs.starship
    pkgs.uv

    pkgs.eog
    pkgs.evince
    pkgs.gimp
    pkgs.git
    pkgs.gnome-terminal
    pkgs.keepassxc
    pkgs.rdesktop
    pkgs.signal-desktop
    pkgs.thunderbird
    pkgs.unzip
    pkgs.zip

    pkgs.libsForQt5.qt5ct
    pkgs.kdePackages.kate
    pkgs.kdePackages.kconfig
    pkgs.kdePackages.okular

    pkgs.mate.mate-calc
    pkgs.xfce.xfconf

    pkgs.corefonts
    pkgs.hyphen
    pkgs.hyphenDicts.de_DE
    pkgs.hyphenDicts.de-de
    pkgs.libreoffice
    pkgs.vistafonts

    pkgs.nmap

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.ls file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  nixpkgs.config.allowUnfree = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.sessionVariables = {
    EDITOR = "mc";
  };

  programs.git = {
    enable = true;
    userName = "Marijke Stein";
    userEmail = "marijke.stein@hfmdk-frankfurt.de";
    aliases = {
      st = "status";
    };
    extraConfig = {
      core.editor = "mcedit";
    };
  };

  home.file.".bashrc" = {
  text = ''
alias la="eza -l --icons --git"

eval "$(starship init bash)"
    '';
  };

  gtk.enable = true;
  gtk.theme.name = "Adwaita-dark";

  qt.enable = true;
  qt.style.name = "darker";

#   qt.kde.settings;

  xfconf = {
    settings = {
      xfce4-desktop = {
#         "backdrop/screen0/monitoreDP-1/workspace0/image-style" = 0;
#         "backdrop/screen0/monitoreDP-1/workspace1/image-style" = 0;
        "desktop-icons/file-icons/show-filesystem" = 0;
        "desktop-icons/file-icons/show-trash" = 1;
      };

      xfce4-notifyd = {
        "mute-sounds" = true;
      };

      xfce4-panel = {
        "panels/dark-mode" = true;
#         "panels/panel-1/icon-size" = 12;
#         "panels/panel-1/size" = 24;

        "plugin-1" = "applicationsmenu";

        "plugin-2" = "tasklist";
        "plugin-2/grouping" = 0;

        "plugin-3" = "separator";
        "plugin-3/expand" = true;
        "plugin-3/style" = 0;

        "plugin-4" = "pager";

        "plugin-5" = "separator";

        "plugin-6" = "systray";

        "plugin-7" = "separator";

        "plugin-8" = "clock";
        "plugin-8/digital-date-font" = "Sans 10";
        "plugin-8/timezone" = "Europe/Berlin";

        "plugin-9" = "separator";

        "plugin-10" = "actions";

        "plugin-11" = "power-manager-plugin";

        "plugin-13" = "clock";
        "plugin-13/digital-layout" = 3;
        "plugin-13/digital-time-font" = "Sans 10";
      };

      xfce4-screensaver = {
        "lock/saver-activation/enabled" = false;
        "saver/enabled" = false;
      };

      xsettings = {
#         "MonospaceFontName" = "Gtk/JetBrainsMono Nerd Font 10";
        "Net/IconThemeName" = "Adwaita";
        "Net/ThemeName" = "Adwaita-dark";
      };
    };
  };

}
