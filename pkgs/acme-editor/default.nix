{pkgs, plan9port, ...}:
pkgs.runCommand "acme-editor" {
  buildInputs = [ pkgs.plan9port ];
} ''
	${pkgs.plan9port}/bin/9 acme -f /mnt/font/SourceCodePro-Regular/24a/font &
'';

