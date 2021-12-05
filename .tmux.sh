echo -n $( uptime -p )' '$( cat /proc/loadavg | cut -d' ' -f1-3 )
