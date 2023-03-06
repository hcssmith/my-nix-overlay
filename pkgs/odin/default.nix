{pkgs, odin, fetchFromGitHub, ...}:
odin.overrideAttrs (oldAttrs: rec{
  src = fetchFromGitHub {
    owner = "odin-lang";
    repo = "odin";
    rev = "fad330acd1ef2ffbf139ca1f52e93e3b367cf46f";
    sha256 = "ZQg/SaCzNIXnrFBwPAyGPpX9jGlUVntmOucb//dxBpQ=";
  };
  patchPhase = ''
    sed -i '1d' ./build_odin.sh
    sed -i 's/^GIT_SHA=.*$/GIT_SHA=/' ./build_odin.sh
    '';
    buildInputs = oldAttrs.buildInputs ++ [
      pkgs.which
      pkgs.llvm
    ];
})
