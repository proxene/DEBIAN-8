#### [DDoS protection - Using Netfilter/iptables]

- Disable TCP loose mode
- Disable TCP forwarding
- Enable SYN cookies
- Enable TCP timestamping
- Use SYNPROXY module (Optional)

/etc/sysctl.conf
```
net.netfilter.nf_conntrack_tcp_loose = 0
net.ipv4.tcp_syncookies = 1
net.ipv4.tcp_timestamps = 1
net.ipv4.ip_forward = 0
```

#### [How To Build Your Own DDoS Protection With Linux & IPtables](https://javapipe.com/ddos/blog/iptables-ddos-protection/)

- Use the `mangle` table and the `PREROUTING` chain

![Iptables tables and chains Diagram](https://cloud.githubusercontent.com/assets/1711674/8742357/87e8b72e-2c32-11e5-997a-c6d081186da5.png)

Full iptables configuration:
https://github.com/proxene/debian-8/blob/master/iptables

Other notes:
- [synsanity](https://github.com/github/synsanity) only works on 3.x kernels
- [Google BBR](https://github.com/google/bbr) only available on 4.7+ kernels
- Use iptables instead of firewalld
