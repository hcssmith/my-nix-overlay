{pkgs, noweb, fetchFromGitHub, ...}:
noweb.overrideAttrs (oldAttrs: rec{
  version = "2.13";

  src = fetchFromGitHub {
    owner = "nrnrnr";
    repo = "noweb";
    rev = "v${builtins.replaceStrings ["."] ["_"] version}";
    sha256 = "COcWyrYkheRaSr2gqreRRsz9SYRTX2PSl7km+g98ljs=";
  };
}
)
