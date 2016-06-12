#/bin/bash

grub2-reboot  "$(grep -i 'render' /boot/grub2/grub.cfg|cut -d"'" -f2)" && reboot
