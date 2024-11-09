
{config, pkgs, ... } :

{

	
	services.tor = {
		  enable = true;
		  openFirewall = true;
		  client.enable = false;
		  relay = {
		    enable = true;
		    role = "bridge";
		  };
	};

	services.snowflake-proxy = {
	  enable = true;
	  capacity = 10;
	};
	
		
}
