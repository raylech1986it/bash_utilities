
## Script: `list_processhandles.sh`
Show open handles - if any - for a particular file.
```
./list_processhandles.sh /etc/samba/smb.conf
```
## Script: `hide_comments.sh`
Remove all lines from a file that are comments or empty lines.

A comment begins with either a '#' or ';'

Examples:
```
./hideComments.sh /etc/ssh/sshd_config
./hideComments.sh /etc/samba/smb.conf
```
Or:
```
cat /etc/ssh/sshd_config | ./hideComments.sh
cat /etc/samba/smb.conf | ./hideComments.sh
```

## Folder: `archived/`
Scripts no longer maintained and can be deleted any time. 
