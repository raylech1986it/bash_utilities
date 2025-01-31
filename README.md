## `ps_tree.sh`
Display the hierarchy of a process and all it's descendants. 

`sh ./ps_tree.sh -h` for help.

```
# ./ps_tree.sh 3856
UID          PID    PPID  C STIME TTY      STAT   TIME CMD
root        3856       1  0 Jan25 ?        Ss     0:47 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root      131156    3856  0 06:26 ?        Ss     0:00   sshd: ray [priv]
ray       131187  131156  0 06:26 ?        S      0:00     sshd: ray@pts/0
ray       131190  131187  0 06:26 pts/0    Ss     0:00       -bash
```

## `hide_comments.sh`
Remove all comments and empty lines from a file to make it more "readable".

A comment begins with either a '#' or ';'

Examples:
```
./hideComments.sh /etc/ssh/sshd_config
./hideComments.sh /etc/samba/smb.conf

cat /etc/ssh/sshd_config | ./hideComments.sh
cat /etc/samba/smb.conf | ./hideComments.sh
```

## `ping_hosts.sh`

Populate `/tmp/ips` with a list of IPs to ping
```
cat <<EOF >/tmp/ips
1.1.1.1
2.2.2.2
3.3.3.3
EOF
```

Then run the script:

```
sh ./ping_hosts.sh 
```

And if you **_REALLY_** wanna supercharge this command, use it with `watch` to periodically refresh the output:

```
watch -c sh ./ping_hosts.sh 
```

## Folder: `archived/`
Scripts no longer maintained and can be deleted any time. 
