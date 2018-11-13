# First, make a backup of the cluster:
cp -a /etc/pve /root/pve_backup

# Stop cluster service:
/etc/init.d/pve-cluster stop

# Umount /etc/pve if it is mounted:
umount /etc/pve

# Stop corosync service:
/etc/init.d/cman stop

# Remove cluster configuration:
rm /etc/cluster/cluster.conf
rm -rf /var/lib/pve-cluster/*

# Start again cluster service:
/etc/init.d/pve-cluster start

# ENJOY
