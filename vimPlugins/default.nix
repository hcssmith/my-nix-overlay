{prev, ...}:

{
  vim-miranda = prev.callPackage ./vim-miranda.nix { };
  nivm-web-devicons = prev.callPackage ./nvim-web-devicons.nic { };
}
