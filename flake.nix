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
          self.overlay
        ];
        config = { allowUnfree = true; };
      };
    in {
      overlay = final: prev: {
        odin-latest = prev.callPackage ./pkgs/odin { };
        st-hcs = prev.callPackage ./pkgs/st { };
		acme-editor = prev.callPackage ./pkgs/acme-editor { };
        vimPlugins = prev.vimPlugins // import ./vimPlugins {inherit prev;};
      };
      packages.x86_64-linux = pkgs;
    };
}
