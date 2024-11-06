# OpenVPN Config, then imported into the main configuration.nix file
{ config, pkgs, ... }:

{

services.openvpn = {
  enable = true;
  servers = {
    myVpnServer = {
      config = ''
        port 1194
        proto udp
        dev tun
        ca /path/to/ca.crt
        cert /path/to/server.crt
        key /path/to/server.key
        dh /path/to/dh.pem
        server 10.8.0.0 255.255.255.0
        ifconfig-pool-persist ipp.txt
        keepalive 10 120
        comp-lzo
        user nobody
        group nogroup
        persist-key
        persist-tun
        status openvpn-status.log
        verb 3
      '';
    };
  };
};
}
