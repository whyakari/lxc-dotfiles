git clone https://github.com/whyakari/lxc-dotfiles
cd lxc-dotfiles

cp links/config /data/data/com.termux/files/usr/var/lib/lxc/ubuntu/config
cp links/ubuntu.conf /data/data/com.termux/files/usr/share/lxc/config/common.conf.d/ubuntu.conf
cp links/shadow /data/data/com.termux/files/usr/var/lib/lxc/ubuntu/rootfs/etc/shadow
cp links/lxc-setup-cgroups /data/data/com.termux/files/usr/bin/lxc-setup-cgroups 

cd ..
rm -rf lxc-dotfiles
