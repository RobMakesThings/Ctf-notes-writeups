# Nmap 7.92 scan initiated Fri Oct 14 02:21:52 2022 as: nmap -sC -sV -vv -oN nmap.md 10.10.50.109
Nmap scan report for 10.10.50.109
Host is up, received syn-ack (0.18s latency).
Scanned at 2022-10-14 02:21:52 EDT for 89s
Not shown: 998 filtered tcp ports (no-response)
PORT     STATE SERVICE       REASON  VERSION
80/tcp   open  http          syn-ack Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
3389/tcp open  ms-wbt-server syn-ack Microsoft Terminal Services
| ssl-cert: Subject: commonName=WIN-LU09299160F
| Issuer: commonName=WIN-LU09299160F
| Public Key type: rsa
| Public Key bits: 2048
| Signature Algorithm: sha256WithRSAEncryption
| Not valid before: 2022-10-13T06:21:28
| Not valid after:  2023-04-14T06:21:28
| MD5:   0504 1f30 e814 c161 1124 4306 6a70 b2ba
| SHA-1: 7f1e c38c cd21 c0ae 15db 82d6 f018 4ae3 db0d 41ef
| -----BEGIN CERTIFICATE-----
| MIIC4jCCAcqgAwIBAgIQfGeSGhyJhYtF6ZdshGS7QDANBgkqhkiG9w0BAQsFADAa
| MRgwFgYDVQQDEw9XSU4tTFUwOTI5OTE2MEYwHhcNMjIxMDEzMDYyMTI4WhcNMjMw
| NDE0MDYyMTI4WjAaMRgwFgYDVQQDEw9XSU4tTFUwOTI5OTE2MEYwggEiMA0GCSqG
| SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDA7uwcCFt8HHZrBpiYKlsoLRr1JgfwoZwS
| K9dZNd7hyM1vqogkY3yrxg1J8Owug4xMNfBn8AEdxYzpkqzR69troXnwkUvfe2jo
| n8LkhL4zJrwC0vtIuSFIpxt9/MGwo0WqizSHJB5ffluTFQq7DQHBJ/hUAPNOREWy
| pH93M5PBkr/WHC0qE2G4y4lbgl7Dq7kKTRBLAT8yHdx9s4r8RlDTGDvrxm6UCzdD
| 27d/DI/tQlPLlBLsXR0DKOpE2c0QmPPZb8zwli48f4XvSKIXwBz1FiKIZgiotOte
| /l98KD0TyrMEImQCKAQnL2IE7oU0cHmYRJfqFrrkmNHSl+wryntpAgMBAAGjJDAi
| MBMGA1UdJQQMMAoGCCsGAQUFBwMBMAsGA1UdDwQEAwIEMDANBgkqhkiG9w0BAQsF
| AAOCAQEAcn08ZNjvzD4m5BzQgG/2rR88IfydyfVPbzCGj4IIEjIcHQslUI/p7HG/
| /qrZhEAtTI48RrjpH0sb8e+pfbdZKo1evxJaPcpMybxl8ez5IDANop/2V5UJQPln
| yeSYt2cxy9S5oPN+J1MClAqmSV7h+JX7O0dZ+EITZphTqTIiam6pRciZ01gv6GtA
| +5Vh3mVJ5+KM59EszEE0Cu+z+yXQ1A3huU4VBhYkPn0HlGW87JB3nm8iVObQYIqT
| O5y5Z5azecAUejrgH9c6DtCiFigoQX/fXaKqdXusAMA9BlAaU4KhpW702RRweivz
| 6Fk35SULIg4jGsCe3tmIYhzTiI4t8g==
|_-----END CERTIFICATE-----
|_ssl-date: 2022-10-14T06:23:22+00:00; +1s from scanner time.
| rdp-ntlm-info: 
|   Target_Name: WIN-LU09299160F
|   NetBIOS_Domain_Name: WIN-LU09299160F
|   NetBIOS_Computer_Name: WIN-LU09299160F
|   DNS_Domain_Name: WIN-LU09299160F
|   DNS_Computer_Name: WIN-LU09299160F
|   Product_Version: 10.0.17763
|_  System_Time: 2022-10-14T06:22:23+00:00
Service Info: OS: Windows; CPE: cpe:/o:microsoft:windows

Host script results:
|_clock-skew: mean: 0s, deviation: 0s, median: 0s

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Fri Oct 14 02:23:21 2022 -- 1 IP address (1 host up) scanned in 89.80 seconds
