dd if=/dev/zero of=ext4fs.img bs=1G count=0 seek=6
mkfs.ext4 ext4fs.img
losetup -fP --show ext4fs.img
mount /dev/loop0 /dev/ext4
