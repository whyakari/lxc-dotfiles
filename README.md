# lxc for Ubuntu
> tested only on ubuntu!

### ubuntu rootfs (arm64!)
```sh
sudo lxc-create -t download -n ubuntu -- --no-validate -d ubuntu -r jammy -a arm64
```

### mount
```sh
mount -t tmpfs -o mode=755 tmpfs /sys/fs/cgroup
mkdir -p /sys/fs/cgroup/devices
mount -t cgroup -o devices cgroup /sys/fs/cgroup/devices
mkdir -p /sys/fs/cgroup/systemd && mount -t cgroup cgroup -o none,name=systemd /sys/fs/cgroup/systemd
mount -t tmpfs cgroup_root /sys/fs/cgroup
mkdir /sys/fs/cgroup/memory
mount -t cgroup -o memory memory /sys/fs/cgroup/memory
```

### login ubuntu
```sh
lxc-start -n ubuntu -d -F
```

### shell login
- user: root 
- pass: 123456
