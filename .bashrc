vim ~/.bashrc

function whod() {
  2     join <(who | egrep -o "^[a-zA-Z0-9 ]+ pts/[0-9]+[ ]+[0-9]{4}-[0-9]{2}-[0-9]    {2} [0-9]{2}:[0-9]{2}" | sort) <(who | egrep -o '^[a-zA-Z0-9]+ ' | sort | xargs     -I{} sh -c "cat /etc/passwd | cut -d':' -f1,5 | cut -d',' -f1 | egrep {}" | tr     ":" " " | sort ) | uniq | cut -d" " -f1,2,4,5,6 | awk '{printf "%-10s %-20s %-    10s %-15s %s\n", $1, $4, $5, $2, $3}' | column -t
  3 }
  4 
  5 function whos() {
  6     echo "wwho who who"
  7 }

source ~/.bashrc
