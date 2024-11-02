# OpenVPN Config, then imported into the main configuration.nix file
{ config, pkgs, ... }:

{

	services.openvpn.servers = {
		homeVPN = { 
			config = '' config /etc/nixos/openvpn.conf ''; 
			updateResolvConf = true;
		};
			
	};

}
