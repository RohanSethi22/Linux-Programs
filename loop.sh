for fruit in apple banana mango orange
do
	if [[ $fruit =~ ^m ]]
	then 
		count=10
		while [[ count -gt 0 ]]
		do
			echo "$count Mango is the king of fruits."
			let count=$count-1
		done
	else
		echo "$fruit is the people."
	fi
done
