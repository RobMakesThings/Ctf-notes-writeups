md5

hashcat -m 0 -a 0 -o cracked.txt '279412f945939ba78ce0758d3fd83daa' ~/Desktop/SecLists-master/Passwords/Leaked-Databases/rockyou.txt

sha1
hashcat -m 100 -a 0 --force -o cracked.txt 'CBFDAC6008F9CAB4083784CBD1874F76618D2A97 ' ~/Desktop/SecLists-master/Passwords/Leaked-Databases/rockyou.txt


SHA256

hashcat -m 1400 -a 0 --force -o cracked.txt '1C8BFE8F801D79745C4631D09FFF36C82AA37FC4CCE4FC946683D7B336B63032' ~/Desktop/SecLists-master/Passwords/Leaked-Databases/rockyou.txt

bcrypt 28400

hashcat -m 1400 -a 0 --force -o cracked.txt '$2y$12$Dwt1BZj6pcyc3Dy1FWZ5ieeUznr71EeNkJkUlypTsgbX1H68wsRom' ~/Desktop/SecLists-master/Passwords/Leaked-Databases/rockyou.txt

^\w{1,4}$
bcrypt blowfish





hashcat -m 1800  -a 0 -o cracked.txt '$6$aReallyHardSalt$6WKUTqzq.UQQmrm0p/T7MPpMbGNnzXPMAXi4bJMl9be.cfi3/qxIf.hsGpS41BqMhSrHVXgMpdjS6xeKZAs02.:aReallyHardSalt' /home/kali/Desktop/SecLists-master/Passwords/Leaked-Databases/rockyou.txt
