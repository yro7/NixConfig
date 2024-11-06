set-option -sa terminal-overrides ",xterm*:Tc"
set -g mouse on

unbind C-b
set -g prefix C-Space
bind C-Space send-prefix

<<<<<<< HEAD
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
	<home-manager/nixos>
	./home-manager/home-manager.nix
	./openvpn/openvpn.nix
    ];

  # Close lid behaviour
  services.logind.lidSwitch = "ignore";
  
  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/New_York";

  # 
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };
=======
# Start windows and panes at 1, not 0
set -g base-index 1
set -g pane-base-index 1
set-window-option -g pane-base-index 1
set-option -g renumber-windows on
>>>>>>> refs/remotes/origin/main


# Use Alt+ZQSD (WASD) keys without prefix key to switch panes
bind -n M-q select-pane -L
bind -n M-d select-pane -R
bind -n M-z select-pane -U
bind -n M-s select-pane -D

<<<<<<< HEAD
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.nix = {
    isNormalUser = true;
    description = "nix";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  users.users.test = {
	isNormalUser = true;
 	packages = with pkgs; [];
 };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile.
  environment.systemPackages = with pkgs; [
	wget
	micro
	pkgs.jellyfin
	pkgs.jellyfin-web
	pkgs.jellyfin-ffmpeg
	zsh
	xclip
	git
	gh
	github-cli
	neofetch
	openvpn
	tmux	
	tmate
	upower
	speedtest-cli
	easy-rsa
  ];
=======
# Use Alt+Arrow Keys keys without prefix key to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D
>>>>>>> refs/remotes/origin/main


# Shift arrow to switch windows
bind -n S-Left  previous-window
bind -n S-Right next-window


bind c killp
bind Tab split-window -v -c "#{pane_current_path}"
bind ':' split-window -h -c "#{pane_current_path}"

# Plugin section

set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'dreamsofcode-io/catppuccin-tmux'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'tmux-plugins/tmux-sidebar'
set -g @catppuccin_flavour 'mocha'

set -g @sidebar-tree 'e'


run '~/.tmux/plugins/tpm/tpm'
