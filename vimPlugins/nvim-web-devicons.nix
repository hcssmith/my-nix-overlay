
{pkgs, fetchFromGitHub, ...}:
pkgs.vimUtils.buildVimPlugin {
  name = "nvim-web-devicons";
  src = fetchFromGitHub {
    owner = "nvim-tree";
    repo = "nvim-web-devicons";
    rev = "c3c1dc4e36969370ff589b7025df8ec2e5c881a2";
    sha256 = "aLxgt3tV0RN1+s1gFmPyXX6z0+6Waw1jA5n10B7TW/4=";
  };
}
