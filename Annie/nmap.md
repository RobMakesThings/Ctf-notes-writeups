# Nmap 7.92 scan initiated Sat Oct 15 21:34:16 2022 as: nmap -sC -sV -vv -oN nmap.md 10.10.226.60
Nmap scan report for 10.10.226.60
Host is up, received conn-refused (0.20s latency).
Scanned at 2022-10-15 21:34:17 EDT for 39s
Not shown: 998 closed tcp ports (conn-refused)
PORT     STATE SERVICE         REASON  VERSION
22/tcp   open  ssh             syn-ack OpenSSH 7.6p1 Ubuntu 4ubuntu0.6 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   2048 72:d7:25:34:e8:07:b7:d9:6f:ba:d6:98:1a:a3:17:db (RSA)
| ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDA0R7eKVAIQzgsQ1QLoI7zzRYcaNBJ0wZtCbG1n5lR51Jfr2CC6+IVVxzleo0wCtfV9tcgtRXVdrju+29xaBR/Hin16MAf7QM4cY5dt46pgADnbwSXAy8GpnuCT10tTrL27gpKM2ayqmlpnKSxL2daP5uhkuoZCI3EYOvbaoPn4/u4vKeH64bk/s5zTE2JeIV/CwQnheYc1ZhwiJQD5k11735k+NfhD7pmhNY+QpG6qZNyFZ4APqdktrnDFetksOkC2NF4D8/OOjDsYkmofeIe+2fe01BHO4KFnRrKI3aSNDQdeNIQIL7LgKufgQ+yP0WmRLOThsiwu22jUG/8Ot1f
|   256 72:10:26:ce:5c:53:08:4b:61:83:f8:7a:d1:9e:9b:86 (ECDSA)
| ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBH+EwC6q+M+qEr2TTccTtvcNF7dfougjgrZzZG4ShpTnNo1KXJy6iTnW/al9mxm/ecZVSF45w3Z3IYwAi9nfrdU=
|   256 d1:0e:6d:a8:4e:8e:20:ce:1f:00:32:c1:44:8d:fe:4e (ED25519)
|_ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBgcqbntpdHoH14/wXi5gysaIvv0hOk+VvCUNmVjhkMQ
7070/tcp open  ssl/realserver? syn-ack
|_ssl-date: TLS randomness does not represent time
| ssl-cert: Subject: commonName=AnyDesk Client
| Issuer: commonName=AnyDesk Client
| Public Key type: rsa
| Public Key bits: 2048
| Signature Algorithm: sha256WithRSAEncryption
| Not valid before: 2022-03-23T20:04:30
| Not valid after:  2072-03-10T20:04:30
| MD5:   3e57 6c44 bf60 ef79 7999 8998 7c8d bdf0
| SHA-1: ce6c 79fb 669d 9b19 5382 8cec c8d5 50b6 2e36 475b
| -----BEGIN CERTIFICATE-----
| MIICqDCCAZACAQEwDQYJKoZIhvcNAQELBQAwGTEXMBUGA1UEAwwOQW55RGVzayBD
| bGllbnQwIBcNMjIwMzIzMjAwNDMwWhgPMjA3MjAzMTAyMDA0MzBaMBkxFzAVBgNV
| BAMMDkFueURlc2sgQ2xpZW50MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC
| AQEAvFEAPxFPrh1v6FuKL9k1AiX5ml+soPQ3sfYSr+5y7uJlqwy2C6HZ2Kf83gc0
| MN/+GP4mWpB1LskMHDWf2173Sy8A+EBekxRn05tCs1gyxD19vHvqcorZD9JbN/Mz
| Pq6kEvloUrHNKgkYyYPq3neAZ4RxQSTjAOydR+0aGWiDV4QNdzmKvwaunlvz8zoZ
| Nr+tcI0UnP4jeAC3fSX7XfijPE7ANWaiwm4oVWOgiMXcTDGuJ78WptNJ7/XI+RFT
| lkN8T69uHWLRUyN2YHG7OSK28UExyDShM08t3MyztWQmCtHqQd4hExdZoIkIW9bP
| Qf4QS+mlal0rBYqNkZNXUNeX7QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQBe68Tz
| 6xMMwAxJb0xWz7DIK9ffSVEnnBe3Epdi0a76B2I1eu59+DzZu1euw8UAak7i1lL/
| +Yu/i6LfLHzjQuD7MMQUmGRlcsxMTOfYXiSbKAgAd8vt+a24Q8LKDASu8lmLNtj/
| /GglirQnYStt6zb9f4Ud3YpPGDcqfS636YlnFDttmLMapI9GJZs+GTp+ukbxCH9j
| hrhMjE+4d1Le5dFk0K2P2v/m8IMqc52Mkef7XR4CFMC+DOIRp8U3PN1i9rFOLFaE
| FuZmniIJ30KAE+BCCPD+Ozx5cCcA8OYcT/Wyua5pPepP7ryR5lVbZmcAR9ELgzvm
| mSn9KWFRlhAMUQ4V
|_-----END CERTIFICATE-----
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Sat Oct 15 21:34:56 2022 -- 1 IP address (1 host up) scanned in 40.01 seconds
