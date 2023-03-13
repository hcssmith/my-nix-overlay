{pkgs, dwm, fetchFromGitHub, ...}:
dwm.overrideAttrs (oldAttrs: rec{
  src = fetchFromGitHub {
    owner = "hcssmith";
    repo = "dwm";
    rev = "511e2b3d8808c4bec61baba11ff8af1e17928625";
    sha256 = "bBvZ4Mw6UkIkfPC724C18f9mQe8518kHSxCcNV5+/Tw=";
  };
})