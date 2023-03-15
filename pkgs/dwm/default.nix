{pkgs, dwm, fetchFromGitHub, ...}:
dwm.overrideAttrs (oldAttrs: rec{
  src = fetchFromGitHub {
    owner = "hcssmith";
    repo = "dwm";
    rev = "a62bc049d4cf001ae345c94133e83a32528d9f65";
    sha256 = "uihqOZQJWpExDDmJe23Nd0SlzkC7KShz0sAiMlmGwp8=";
  };
})