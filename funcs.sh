function plier {
	product=1
	for i in $@
	do
		let product=$product*$i
	done
	echo $product
}

function isiteven {
	declare -i ans=$1\%2
	[[ $ans -eq 0 ]] && echo 1 || echo 0
}

function nevens {
	ans=0
	for i in $@
	do
		x=$(isiteven $i)
		let ans=$ans+$x
	done
	echo $ans
}

function howodd {
	v=$(nevens $@)
	declare -i ans=$v*100/$#
	echo $ans%
}

function fib {
	if [[ $1 -eq 1 ]]
	then
		echo 0
	elif [[ $1 -eq 2 ]]
	then
		echo 1
	else
		num1=0
		num2=1
		declare -i count=$1-2
		declare -i ans=0
		arr=$num1' '$num2' '
		while [[ $count -gt 0 ]]
		do
			ans=$num1+$num2
			arr=$arr$ans' '
			let num1=$num2
			let num2=$ans
			let count=$count-1
		done
		echo $arr
	fi
}
