# Nmap 7.92 scan initiated Mon Oct 17 23:48:21 2022 as: nmap -sC -sV -vv -oN nmap.md 10.10.173.110
Nmap scan report for 10.10.173.110
Host is up, received syn-ack (0.18s latency).
Scanned at 2022-10-17 23:48:21 EDT for 44s
Not shown: 996 closed tcp ports (conn-refused)
PORT    STATE SERVICE     REASON  VERSION
22/tcp  open  ssh         syn-ack OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   2048 57:8a:da:90:ba:ed:3a:47:0c:05:a3:f7:a8:0a:8d:78 (RSA)
| ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3hfvTN6e0P9PLtkjW4dy+6vpFSh1PwKRZrML7ArPzhx1yVxBP7kxeIt3lX/qJWpxyhlsQwoLx8KDYdpOZlX5Br1PskO6H66P+AwPMYwooSq24qC/Gxg4NX9MsH/lzoKnrgLDUaAqGS5ugLw6biXITEVbxrjBNdvrT1uFR9sq+Yuc1JbkF8dxMF51tiQF35g0Nqo+UhjmJJg73S/VI9oQtYzd2GnQC8uQxE8Vf4lZpo6ZkvTDQ7om3t/cvsnNCgwX28/TRcJ53unRPmos13iwIcuvtfKlrP5qIY75YvU4U9nmy3+tjqfB1e5CESMxKjKesH0IJTRhEjAyxjQ1HUINP
|   256 c2:64:ef:ab:b1:9a:1c:87:58:7c:4b:d5:0f:20:46:26 (ECDSA)
| ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBJtovk1nbfTPnc/1GUqCcdh8XLsFpDxKYJd96BdYGPjEEdZGPKXv5uHnseNe1SzvLZBoYz7KNpPVQ8uShudDnOI=
|   256 5a:f2:62:92:11:8e:ad:8a:9b:23:82:2d:ad:53:bc:16 (ED25519)
|_ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICfVpt7khg8YIghnTYjU1VgqdsCRVz7f1Mi4o4Z45df8
80/tcp  open  http        syn-ack Apache httpd 2.4.29 ((Ubuntu))
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-generator: WordPress 5.0
|_http-title: Billy Joel&#039;s IT Blog &#8211; The IT blog
|_http-server-header: Apache/2.4.29 (Ubuntu)
|_http-favicon: Unknown favicon MD5: D41D8CD98F00B204E9800998ECF8427E
| http-robots.txt: 1 disallowed entry 
|_/wp-admin/
139/tcp open  netbios-ssn syn-ack Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
445/tcp open  netbios-ssn syn-ack Samba smbd 4.7.6-Ubuntu (workgroup: WORKGROUP)
Service Info: Host: BLOG; OS: Linux; CPE: cpe:/o:linux:linux_kernel

Host script results:
| smb2-security-mode: 
|   3.1.1: 
|_    Message signing enabled but not required
|_clock-skew: mean: 2s, deviation: 0s, median: 2s
| smb-security-mode: 
|   account_used: guest
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)
| nbstat: NetBIOS name: BLOG, NetBIOS user: <unknown>, NetBIOS MAC: <unknown> (unknown)
| Names:
|   BLOG<00>             Flags: <unique><active>
|   BLOG<03>             Flags: <unique><active>
|   BLOG<20>             Flags: <unique><active>
|   \x01\x02__MSBROWSE__\x02<01>  Flags: <group><active>
|   WORKGROUP<00>        Flags: <group><active>
|   WORKGROUP<1d>        Flags: <unique><active>
|   WORKGROUP<1e>        Flags: <group><active>
| Statistics:
|   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
|   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
|_  00 00 00 00 00 00 00 00 00 00 00 00 00 00
| smb2-time: 
|   date: 2022-10-18T03:48:47
|_  start_date: N/A
| p2p-conficker: 
|   Checking for Conficker.C or higher...
|   Check 1 (port 62680/tcp): CLEAN (Couldn't connect)
|   Check 2 (port 8657/tcp): CLEAN (Couldn't connect)
|   Check 3 (port 11338/udp): CLEAN (Failed to receive data)
|   Check 4 (port 46316/udp): CLEAN (Failed to receive data)
|_  0/4 checks are positive: Host is CLEAN or ports are blocked
| smb-os-discovery: 
|   OS: Windows 6.1 (Samba 4.7.6-Ubuntu)
|   Computer name: blog
|   NetBIOS computer name: BLOG\x00
|   Domain name: \x00
|   FQDN: blog
|_  System time: 2022-10-18T03:48:46+00:00

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Mon Oct 17 23:49:05 2022 -- 1 IP address (1 host up) scanned in 44.06 seconds
