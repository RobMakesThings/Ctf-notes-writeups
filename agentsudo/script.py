#!/usr/bin/env

import string 

file = open("a-z.txt","a")
for letter in string.ascii_uppercase:
    file.write(f'{letter}\n')
for letter in string.ascii_lowercase:
    file.write(f'{letter}\n')

file.close