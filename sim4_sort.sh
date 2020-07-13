#!/bin/bash

order="16 64 128 256 512"
for i in $order
do
	echo "sorting: sim4/uni_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim4/uni_${i}.cfg ../sorting 2>../CINT95/Results/sorting_${i}.trace > ../CINT95/Results/sorting_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/sorting_${i}.out" ]; then
			break
		fi
	done
	echo "done"
done
