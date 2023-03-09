{pkgs, fetchFromGitHub, ...}:
pkgs.vimUtils.buildVimPlugin {
  name = "odin.vim";
  src = fetchFromGitHub {
    owner = "Tetralux";
    repo = "odin.vim";
    rev = "11f8e9f25053d26bf1f616a8cc31406be4f7336b";
    sha256 = "tUtrGuwvOuBUUm23J4pfhOBM01XiVyIDmVo3au8bw78=";
  };
}
