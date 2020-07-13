#!/bin/bash

order="64 128 256 512 1024 2048"

for i in $order
do
	echo "../sorting: sim2/uni/uni_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim2/uni/uni_${i}.cfg ../sorting 2>../CINT95/Results/../sorting_uni_${i}.trace > ../CINT95/Results/../sorting_uni_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/../sorting_uni_${i}.out" ]; then
			break
		fi
	done
	echo "done"



	echo "../sorting: sim2/donly/donly_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim2/donly/donly_${i}.cfg ../sorting 2>../CINT95/Results/../sorting_donly_${i}.trace > ../CINT95/Results/../sorting_donly_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/../sorting_donly_${i}.out" ]; then
			break
		fi
	done
	echo "done"


	echo "../sorting: sim2/ionly/ionly_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim2/ionly/ionly_${i}.cfg ../sorting 2>../CINT95/Results/../sorting_ionly_${i}.trace > ../CINT95/Results/../sorting_ionly_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/../sorting_ionly_${i}.out" ]; then
			break
		fi
	done
	echo "done"



done
