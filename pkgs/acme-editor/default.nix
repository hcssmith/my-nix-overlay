{pkgs, plan9port, ...}:
pkgs.writeShellScriptBin "acme-editor" ''
  exec ${pkgs.plan9port}/bin/9 acme -f /mnt/font/SourceCodePro-Regular/24a/font &
''

