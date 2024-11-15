
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
	  settings = {
	    ORPort =  9001;
	    BridgeRelay = true;
	  };
		
	};
	

	services.snowflake-proxy = {
	  enable = true;
	  capacity = 10;
	};
	
		
}
