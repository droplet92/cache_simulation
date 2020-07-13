#!/bin/bash

order="16 64 128 256 512"
for i in $order
do
	echo "cc1: sim4/uni_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim4/uni_${i}.cfg ../CINT95/Programs/cc1.ss < ../CINT95/Input/1stmt.i 2>../CINT95/Results/cc1_${i}.trace > ../CINT95/Results/cc1_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/cc1_${i}.out" ]; then
			break
		fi
	done
	echo "done"
	
	echo "compress95: sim4/uni_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim4/uni_${i}.cfg ../CINT95/Programs/compress95.ss < ../CINT95/Input/compress95.in 2>../CINT95/Results/compress95_${i}.trace > ../CINT95/Results/compress95_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/compress95_${i}.out" ]; then
			break
		fi
	done
	echo "done"

	echo "anagram: sim4/uni_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim4/uni_${i}.cfg ../CINT95/Programs/anagram.ss < ../CINT95/Input/anagram.in 2>../CINT95/Results/anagram_${i}.trace > ../CINT95/Results/anagram_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/anagram_${i}.out" ]; then
			break
		fi
	done
	echo "done"

done
