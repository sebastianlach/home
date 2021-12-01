echo -n $( hostname ) @ $( uname -s ) | tr '[:upper:]' '[:lower:]'
echo -n -$( uname -r | cut -d "-" -f1 )
