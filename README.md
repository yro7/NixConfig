# NixConfig

Some .nix files that I use for my personal NAS. 

Features :


* All in one directory config : clone the repo and you'll basically have the same configuration as me
* Jellyfin media server
* Separate Home-Manager config file (has the cons of making root access mandatory to edit the config, as it is imported in the configuration.nix file and has to be updated with nixos-rebuild) 
* Tor Snowflake Proxy (see https://snowflake.torproject.org/) & Tor bridge relay hosting
