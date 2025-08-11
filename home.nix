{ config, pkgs, ... }:

{
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
    pkgs.rustup
    pkgs.starship

    pkgs.evince
    pkgs.gimp
    pkgs.git
    pkgs.keepassxc
    pkgs.rdesktop
    pkgs.signal-desktop
    pkgs.thunderbird

    pkgs.gnome-terminal

    pkgs.kdePackages.kate
    pkgs.kdePackages.okular

    pkgs.hyphen
    pkgs.hyphenDicts.de_DE
    pkgs.hyphenDicts.de-de
    pkgs.libreoffice

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

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.sessionVariables = {
    EDITOR = "mc";
  };

  programs.git = {
    enable = true;
    userName = "Marijke Stein";
    userEmail = "marijke.stein@hfmdk-frankfurt.de";
  };

  home.file.".config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml" = {
  text = ''
<?xml version="1.1" encoding="UTF-8"?>

<channel name="xfce4-desktop" version="1.0">
  <property name="last-settings-migration-version" type="uint" value="1"/>
  <property name="last" type="empty">
    <property name="window-width" type="int" value="714"/>
    <property name="window-height" type="int" value="547"/>
  </property>
  <property name="backdrop" type="empty">
    <property name="screen0" type="empty">
      <property name="monitorVirtual-1" type="empty">
        <property name="workspace0" type="empty">
          <property name="last-image" type="string" value="/nix/store/mw56lf6l8iyfhzhrr7rf401wmqrvbg1d-xfdesktop-4.20.1/share/backgrounds/xfce/xfce-blue.jpg"/>
          <property name="image-style" type="int" value="0"/>
        </property>
      </property>
    </property>
  </property>
</channel>
    '';
  };

  home.file.".config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml" = {
  text = ''
<?xml version="1.1" encoding="UTF-8"?>

<channel name="xfce4-panel" version="1.0">
  <property name="configver" type="int" value="2"/>
  <property name="panels" type="array">
    <value type="int" value="1"/>
    <property name="dark-mode" type="bool" value="true"/>
    <property name="panel-1" type="empty">
      <property name="position" type="string" value="p=6;x=0;y=0"/>
      <property name="length" type="uint" value="100"/>
      <property name="position-locked" type="bool" value="true"/>
      <property name="icon-size" type="uint" value="16"/>
      <property name="size" type="uint" value="36"/>
      <property name="plugin-ids" type="array">
        <value type="int" value="1"/>
        <value type="int" value="11"/>
        <value type="int" value="2"/>
        <value type="int" value="3"/>
        <value type="int" value="4"/>
        <value type="int" value="5"/>
        <value type="int" value="6"/>
        <value type="int" value="7"/>
        <value type="int" value="8"/>
        <value type="int" value="9"/>
        <value type="int" value="13"/>
        <value type="int" value="10"/>
        <value type="int" value="12"/>
      </property>
    </property>
  </property>
  <property name="plugins" type="empty">
    <property name="plugin-1" type="string" value="applicationsmenu"/>
    <property name="plugin-2" type="string" value="tasklist">
      <property name="grouping" type="uint" value="1"/>
    </property>
    <property name="plugin-3" type="string" value="separator">
      <property name="expand" type="bool" value="true"/>
      <property name="style" type="uint" value="0"/>
    </property>
    <property name="plugin-4" type="string" value="pager"/>
    <property name="plugin-5" type="string" value="separator">
      <property name="style" type="uint" value="0"/>
    </property>
    <property name="plugin-6" type="string" value="systray">
      <property name="square-icons" type="bool" value="true"/>
      <property name="known-legacy-items" type="array">
        <value type="string" value="ethernet network connection “wired connection 1” active"/>
      </property>
    </property>
    <property name="plugin-7" type="string" value="separator">
      <property name="style" type="uint" value="0"/>
    </property>
    <property name="plugin-8" type="string" value="clock">
      <property name="timezone" type="string" value="Europe/Berlin"/>
      <property name="digital-layout" type="uint" value="2"/>
      <property name="digital-date-font" type="string" value="Sans 12"/>
    </property>
    <property name="plugin-9" type="string" value="separator">
      <property name="style" type="uint" value="0"/>
    </property>
    <property name="plugin-10" type="string" value="actions"/>
    <property name="plugin-11" type="string" value="launcher">
      <property name="items" type="array">
        <value type="string" value="17543845271.desktop"/>
      </property>
    </property>
    <property name="plugin-12" type="string" value="launcher"/>
    <property name="plugin-13" type="string" value="clock">
      <property name="digital-layout" type="uint" value="3"/>
      <property name="digital-time-font" type="string" value="Sans 12"/>
    </property>
  </property>
</channel>
    '';
  };

  home.file.".config/xfce4/xfconf/xfce-perchannel-xml/xfce4-screensaver.xml" = {
  text = ''
<?xml version="1.1" encoding="UTF-8"?>

<channel name="xfce4-screensaver" version="1.0">
  <property name="saver" type="empty">
    <property name="mode" type="int" value="0"/>
    <property name="idle-activation" type="empty">
      <property name="enabled" type="bool" value="false"/>
    </property>
    <property name="enabled" type="bool" value="false"/>
  </property>
</channel>
    '';
  };

}
