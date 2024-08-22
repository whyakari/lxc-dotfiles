# lxc for Ubuntu
> tested only on ubuntu!

### download pkgs
```sh
pkg in root-repo lxc tsu
```

### ubuntu rootfs (arm64!)
```sh
sudo lxc-create -t download -n ubuntu -- --no-validate -d ubuntu -r jammy -a arm64
```

### mount
```sh
sudo mount -t tmpfs -o mode=755 tmpfs /sys/fs/cgroup
sudo mkdir -p /sys/fs/cgroup/devices
sudo mount -t cgroup -o devices cgroup /sys/fs/cgroup/devices
sudo mkdir -p /sys/fs/cgroup/systemd && sudo mount -t cgroup cgroup -o none,name=systemd /sys/fs/cgroup/systemd
sudo mount -t tmpfs cgroup_root /sys/fs/cgroup
sudo mkdir /sys/fs/cgroup/memory
sudo mount -t cgroup -o memory memory /sys/fs/cgroup/memory
```

### get my dotfile
```sh
wget https://raw.githubusercontent.com/whyakari/lxc-dotfiles/main/main.sh && chmod +x main.sh && sudo sh ./main.sh
```


### login ubuntu
```sh
sudo lxc-start -n ubuntu -d -F
```

### shell login
- user: root 
- pass: 123456


## Features
- docker and **docker compose** both work;
- full systemd support;
- full systemctl support.
