`eOS PXE` is an "elementary OS Preboot eXecution Environment", a standalone self-contained PXE server which could be started in any execution environment like Linux or Mac OS without installing system software. The server allows boot unmodified elementaryOS Live CD ISO on any PXE-supported hardware. A very useful tool for booting on machines without CD-ROM drive or for save time on USB boot flash creation. Ethernet patch cord is the only hardware you need.

How to start:

1. Ensure you have Ansible, Vagrant and Virtual Box installed on your host OS.
2. Download `elementaryos-stable-i386.20130810.iso` (elementaryOS 0.2 Luna) to `files` directory.
3. Edit config in `roles/common/default/main.yml`.
4. Run `start.sh`.
5. Connect host and target machines with Ethernet patch cord.
6. On a target machine alter BIOS boot order to have PXE boot before HDD boot.
7. Restart target machine and enjoy fast-booted elementaryOS live system! 