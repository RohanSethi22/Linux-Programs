cur=$(date)
if [[ $cur =~ ^Fri ]]
then
	echo "Thank Moses it's Friday!"
else
	echo "Not Friday."
fi
