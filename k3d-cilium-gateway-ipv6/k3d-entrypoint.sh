set -e

echo "Mount bpf"
mount bpffs -t bpf /sys/fs/bpf
mount --make-shared /sys/fs/bpf

echo "Mount cgroups"
mkdir -p /run/cilium/cgroupv2
mount -t cgroup2 none /run/cilium/cgroupv2
mount --make-shared /run/cilium/cgroupv2/