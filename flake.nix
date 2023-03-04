{
  description = "My nixpkgs overlay";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        overlays = [
          self.overlays.default
        ];
        config = { allowUnfree = true; };
      };
    in {
      overlay = final: prev: {
        vimPlugins = prev.vimPlugins // import ./vimPlugins {inherit prev;};
      };
      #overlay =  (final: prev: rec {
      #  vimPlugins = prev.vimPlugins // import ./vimPlugins {inherit prev;};
      #});
      packages.x86_64-linux = pkgs;
    };
}
