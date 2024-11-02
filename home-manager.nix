# /etc/nixos/home-manager.nix
# Home-Manager Config file, imported into the configuration.nix 
{ config, pkgs, ... }:

{
    
  home-manager.users.nix = { pkgs, ... } : {
  	home.packages = [
  		pkgs.atool
  		pkgs.httpie
  	];
  	programs.bash.enable = true;
	programs.zsh = {
		enable = true;
		enableCompletion = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;

		shellAliases = {
			update = "sudo nixos-rebuild switch";
			cdconfig = "cd /etc/nixos";
			config = "sudo micro /etc/nixos/configuration.nix";
		};
		oh-my-zsh = {
			enable = true;
			plugins = ["git" "thefuck"];
			theme = "robbyrussell";
		};			
	};
  	home.stateVersion = "24.05";
  };

}
