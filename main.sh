git clone https://github.com/whyakari/lxc-dotfiles
cd lxc-dotfiles

ln -s /data/data/com.termux/files/usr/var/lib/lxc/ubuntu/config links/config
ln -s /data/data/com.termux/files/usr/share/lxc/config/common.conf.d/ubuntu.conf links/ubuntu.conf
ln -s /data/data/com.termux/files/usr/var/lib/lxc/ubuntu/rootfs/etc/shadow links/shadow
ln -s /data/data/com.termux/files/usr/bin/lxc-setup-cgroups links/lxc-setup-cgroups

cd ..
rm -rf lxc-dotfiles
