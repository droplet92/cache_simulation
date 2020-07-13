#!/bin/bash

order="64 128 256 512"
for i in $order
do
	echo "sorting: sim1/uni_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim1/uni_${i}.cfg ../sorting 2>../CINT95/Results/sorting_uni_${i}.trace > ../CINT95/Results/sorting_uni_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/sorting_uni_${i}.out" ]; then
			break
		fi
	done
	echo "done"


	echo "sorting: sim1/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim1/split_${i}.cfg ../sorting 2>../CINT95/Results/sorting_split_${i}.trace > ../CINT95/Results/sorting_split_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/sorting_split_${i}.out" ]; then
			break
		fi
	done
	echo "done"

done
