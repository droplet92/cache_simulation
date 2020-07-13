#!/bin/bash

order="64 128 256 512 1024 2048"

for i in $order
do
	echo "cc1: sim2/uni/uni_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim2/uni/uni_${i}.cfg ../CINT95/Programs/cc1.ss < ../CINT95/Input/1stmt.i 2>../CINT95/Results/cc1_uni_${i}.trace > ../CINT95/Results/cc1_uni_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/cc1_uni_${i}.out" ]; then
			break
		fi
	done
	echo "done"
	
	echo "compress95: sim2/uni/uni_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim2/uni/uni_${i}.cfg ../CINT95/Programs/compress95.ss < ../CINT95/Input/compress95.in 2>../CINT95/Results/compress95_uni_${i}.trace > ../CINT95/Results/compress95_uni_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/compress95_uni_${i}.out" ]; then
			break
		fi
	done
	echo "done"

	echo "anagram: sim2/uni/uni_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim2/uni/uni_${i}.cfg ../CINT95/Programs/anagram.ss < ../CINT95/Input/anagram.in 2>../CINT95/Results/anagram_uni_${i}.trace > ../CINT95/Results/anagram_uni_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/anagram_uni_${i}.out" ]; then
			break
		fi
	done
	echo "done"








	echo "cc1: sim2/donly/donly_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim2/donly/donly_${i}.cfg ../CINT95/Programs/cc1.ss < ../CINT95/Input/1stmt.i 2>../CINT95/Results/cc1_donly_${i}.trace > ../CINT95/Results/cc1_donly_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/cc1_donly_${i}.out" ]; then
			break
		fi
	done
	echo "done"
	
	echo "compress95: sim2/donly/donly_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim2/donly/donly_${i}.cfg ../CINT95/Programs/compress95.ss < ../CINT95/Input/compress95.in 2>../CINT95/Results/compress95_donly_${i}.trace > ../CINT95/Results/compress95_donly_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/compress95_donly_${i}.out" ]; then
			break
		fi
	done
	echo "done"

	echo "anagram: sim2/donly/donly_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim2/donly/donly_${i}.cfg ../CINT95/Programs/anagram.ss < ../CINT95/Input/anagram.in 2>../CINT95/Results/anagram_donly_${i}.trace > ../CINT95/Results/anagram_donly_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/anagram_donly_${i}.out" ]; then
			break
		fi
	done
	echo "done"










	echo "cc1: sim2/ionly/ionly_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim2/ionly/ionly_${i}.cfg ../CINT95/Programs/cc1.ss < ../CINT95/Input/1stmt.i 2>../CINT95/Results/cc1_ionly_${i}.trace > ../CINT95/Results/cc1_ionly_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/cc1_ionly_${i}.out" ]; then
			break
		fi
	done
	echo "done"
	
	echo "compress95: sim2/ionly/ionly_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim2/ionly/ionly_${i}.cfg ../CINT95/Programs/compress95.ss < ../CINT95/Input/compress95.in 2>../CINT95/Results/compress95_ionly_${i}.trace > ../CINT95/Results/compress95_ionly_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/compress95_ionly_${i}.out" ]; then
			break
		fi
	done
	echo "done"

	echo "anagram: sim2/ionly/ionly_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim2/ionly/ionly_${i}.cfg ../CINT95/Programs/anagram.ss < ../CINT95/Input/anagram.in 2>../CINT95/Results/anagram_ionly_${i}.trace > ../CINT95/Results/anagram_ionly_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/anagram_ionly_${i}.out" ]; then
			break
		fi
	done
	echo "done"





done
