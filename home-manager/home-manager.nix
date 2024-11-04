# /etc/nixos/home-manager.nix
# Home-Manager Config file, imported into configuration.nix 
{ config, pkgs, ... }: {
  home-manager.users.nix = { pkgs, ... }: {
    home = {
      packages = [
        pkgs.atool
        pkgs.httpie
      ];
      stateVersion = "24.05";
    };

    programs = {
      bash.enable = true;
      
      tmux = let
        confString = builtins.readFile ./tmux.conf;
      in {
        enable = true;
        extraConfig = confString;
      };
    };
  };
}
