git clone https://github.com/whyakari/lxc-dotfiles
cd lxc-dotfiles

ln -s /data/data/com.termux/files/usr/var/lib/lxc/ubuntu/config links/config
ln -s /data/data/com.termux/files/usr/share/lxc/config/common.conf.d/ubuntu.conf links/ubuntu.conf
ln -s /data/data/com.termux/files/usr/var/lib/lxc/ubuntu/rootfs/etc/shadow links/shadow

cd ..
rm -rf lxc-dotfiles
