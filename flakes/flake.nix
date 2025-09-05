{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
  };

  outputs = { self, nixpkgs }: {
     nixosConfigurations = {
       "nixos" = nixpkgs.lib.nixosSystem {
         system = "x86_64-linux";
         modules = [ ../hosts/rz-marijke/configuration.nix
                     ./bluetooth.nix ];
       };
     };
  };
}
