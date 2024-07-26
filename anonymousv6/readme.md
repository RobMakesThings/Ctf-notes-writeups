
Enumerate the machine.  How many ports are open?

4
What service is running on port 21?

ftp
What service is running on ports 139 and 445?

smb
There's a share on the user's computer.  What's it called?


 smbmap -H 10.10.24.36 -p 139
[+] Guest session       IP: 10.10.24.36:445     Name: 10.10.24.36                                       
        Disk                                                    Permissions     Comment
        ----                                                    -----------     -------
        print$                                                  NO ACCESS       Printer Drivers
        pics                                                    READ ONLY       My SMB Share Directory for Pics
        IPC$                                                    NO ACCESS       IPC Service (anonymous server (Samba, Ubuntu))

Answer format: ****
user.txt

Answer format: ********************************
root.txt

Answer format: ********************************


in FTP there was a scripts folder, you could override the script, reverse from there, just bash read line from rev shells. 
then ran linpeas, from server on attack machine, found env with suid, gtfobins ftw

/usr/bin/env /bin/sh -p