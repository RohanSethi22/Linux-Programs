function addseq {
	local sum=0
	for num in $@
	do
		let sum=$sum+$num
	done
	echo $sum
}
