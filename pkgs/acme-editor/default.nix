{pkgs, plan9port, ...}:
pkgs.writeShellScriptBin "acme-editor" ''
  exec ${pkgs.plan9port}/bin/9 acme -a -f /mnt/font/SourceCodePro-Regular/20a/font &
''

