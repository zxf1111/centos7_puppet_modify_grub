# Add init3 menu to grub2
 file{'custom menu entry':
        path => '/etc/grub.d/40_custom',
        content => template("$PATH/etc/grub.d/40_custom.erb"),
        notify => Exec['update-grub2']
        }->
 
 exec{'update-grub2':
        command => '/usr/sbin/grub2-mkconfig > /boot/grub2/grub.cfg',
        refreshonly => true,
        }
