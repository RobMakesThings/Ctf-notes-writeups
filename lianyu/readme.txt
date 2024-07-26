Welcome to Lian_YU, this Arrowverse themed beginner CTF box! Capture the flags and have fun.


nmap -sC -sV -vv  -oN nmap.txt 10.10.197.99
111 and 80 look cute
111/tcp open  rpcbind syn-ack 2-4 (RPC #100000)





gobuster dir -u http://10.10.197.99  -w /usr/share/wordlists/dirb/big.txt 
/island
The Code Word is:vigilante
What is the Web Directory you found?
island doesnt work
many wordlists dont work, dirb regular, large gobuter 1.0
Directory is four letters supposedly
hint says numbers

dirbuster/directory-list-1.0.txt got ini
2100
darn, wrote a python script for a list. 


2100 directory is 
<!-- you can avail your .ticket here but how?   --> is there vigilante comes in ? no , note really 
what is the file name you found?.

run gobuster more i guess? 

.ticket is an extenstion, get -x with gobuser with big wordlist boomers
green_arrow.ticket


This is just a token to get into Queen's Gambit(Ship)


RTy8yhBQdscX

cybershef base something or other decode then 
FTP in to 
vigilante
!#th3h00d
ftp, i cd ../ up and found access to the whole box, could only use vigilante privs tho. other user is slade. 
in files in the vigilante directory you have leave me alone whcih says that password is basically the stegide phrase for one of the images. ssh in with slade and M3tahuman as pass, boom

run linpeas, should have run ls -la
What are you  Looking for ?

root Privileges ? 

try to find Secret_Mission
thanks to linpeas, thats in 
/tmp/.XIM-unix
/usr/src/Secret_Mission<<><<


slade@LianYu:/usr/src$ cat Secret_Mission 
Why do we need Mirakuru? 


Enhancements to strength, senses, stamina and endurance in particular were raised beyond human capability, while reflexes and agility where raised only to the peak of human capability. Primarily, the serum resulted in the subject developing an accelerated healing factor that allowed them to recover completely from the most crippling, debilitating, and grievous of wounds, so long as any injuries were not immediately fatal or if an entire body part or organ were not lost; for example, the drug didn't keep Isabel Rochev from dying when her neck was snapped by Nyssa. Slade Wilson was also unable to regenerate his eye after it was pierced with an arrow, however this may be due to the arrow being left in his eye while the Mirakuru in his system became dormant.





super powers do you need just go find it.


sudo -l with ssh pass worked to get a root shell via pkexec , found the line via gtfobins as always. 

sudo pkexec /bin/sh

overall this was a fun challenge. probably the CTF ive used the least of any writeups for. I wrote a python script on a tangent. it was all cool. Arrow was a cool show as well so it was a walk back memory lane. 