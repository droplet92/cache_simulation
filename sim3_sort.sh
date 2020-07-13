#!/bin/bash

order="64 128 256 512 1024 2048"

for i in $order
do
	echo "cc1: sim3/1way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/1way/split_${i}.cfg ../sorting 2>../CINT95/Results/cc1_1way_${i}.trace > ../CINT95/Results/cc1_1way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/cc1_1way_${i}.out" ]; then
			break
		fi
	done
	echo "done"


	echo "cc1: sim3/2way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/2way/split_${i}.cfg ../sorting 2>../CINT95/Results/cc1_2way_${i}.trace > ../CINT95/Results/cc1_2way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/cc1_2way_${i}.out" ]; then
			break
		fi
	done
	echo "done"


	echo "cc1: sim3/4way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/4way/split_${i}.cfg ../sorting 2>../CINT95/Results/cc1_4way_${i}.trace > ../CINT95/Results/cc1_4way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/cc1_4way_${i}.out" ]; then
			break
		fi
	done
	echo "done"


	echo "cc1: sim3/8way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/8way/split_${i}.cfg ../sorting 2>../CINT95/Results/cc1_8way_${i}.trace > ../CINT95/Results/cc1_8way_${i}.out)
	
	while true
	do
		if [ -f "../CINT95/Results/cc1_8way_${i}.out" ]; then
			break
		fi
	done
	echo "done"








done
