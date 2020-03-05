declare -i var=$1%2
[[ $var -eq 0 ]] && echo " $1 is even." || echo " $1 is odd."
