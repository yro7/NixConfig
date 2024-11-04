# /etc/nixos/home-manager.nix
# Home-Manager Config file, imported into configuration.nix 
{ config, pkgs, ... }: 
{
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";  # Add this line
    
    users.nix = { pkgs, ... }: {
      home = {
        packages = [
          pkgs.atool
          pkgs.httpie
        ];
        stateVersion = "24.05";
      };
      
      programs = {
        bash.enable = true;
        tmate.enable = true;
        
        zsh = {
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
            plugins = [ "git" ];
            theme = "robbyrussell";
          };
        };
        
        tmux = let
          confString = builtins.readFile ./tmux.conf;
        in {
          enable = true;
          extraConfig = confString;
          shortcut = "a";
          baseIndex = 1;
          newSession = true;
          escapeTime = 0;
          secureSocket = false;
          plugins = with pkgs; [
            tmuxPlugins.better-mouse-mode
          ];
        };
      };
    };
  };
}
