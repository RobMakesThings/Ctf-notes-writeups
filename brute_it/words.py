with open("5wordRock.txt", 'a') as my_file:
    
    with open("rockyou.txt") as list:
        for line in list:
            if len(line)==7: 
                my_file.write(line)
                
