#!/bin/bash

order="64 128 256 512 1024 2048"

for i in $order
do
	echo "cc1: sim3/1way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/1way/split_${i}.cfg ../CINT95/Programs/cc1.ss < ../CINT95/Input/1stmt.i 2>../CINT95/Results/cc1_1way_${i}.trace > ../CINT95/Results/cc1_1way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/cc1_1way_${i}.out" ]; then
			break
		fi
	done
	echo "done"
	
	echo "compress95: sim3/1way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/1way/split_${i}.cfg ../CINT95/Programs/compress95.ss < ../CINT95/Input/compress95.in 2>../CINT95/Results/compress95_1way_${i}.trace > ../CINT95/Results/compress95_1way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/compress95_1way_${i}.out" ]; then
			break
		fi
	done
	echo "done"

	echo "anagram: sim3/1way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/1way/split_${i}.cfg ../CINT95/Programs/anagram.ss < ../CINT95/Input/anagram.in 2>../CINT95/Results/anagram_1way_${i}.trace > ../CINT95/Results/anagram_1way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/anagram_1way_${i}.out" ]; then
			break
		fi
	done
	echo "done"













	echo "cc1: sim3/2way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/2way/split_${i}.cfg ../CINT95/Programs/cc1.ss < ../CINT95/Input/1stmt.i 2>../CINT95/Results/cc1_2way_${i}.trace > ../CINT95/Results/cc1_2way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/cc1_2way_${i}.out" ]; then
			break
		fi
	done
	echo "done"
	
	echo "compress95: sim3/2way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/2way/split_${i}.cfg ../CINT95/Programs/compress95.ss < ../CINT95/Input/compress95.in 2>../CINT95/Results/compress95_2way_${i}.trace > ../CINT95/Results/compress95_2way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/compress95_2way_${i}.out" ]; then
			break
		fi
	done
	echo "done"

	echo "anagram: sim3/2way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/2way/split_${i}.cfg ../CINT95/Programs/anagram.ss < ../CINT95/Input/anagram.in 2>../CINT95/Results/anagram_2way_${i}.trace > ../CINT95/Results/anagram_2way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/anagram_2way_${i}.out" ]; then
			break
		fi
	done
	echo "done"










	echo "cc1: sim3/4way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/4way/split_${i}.cfg ../CINT95/Programs/cc1.ss < ../CINT95/Input/1stmt.i 2>../CINT95/Results/cc1_4way_${i}.trace > ../CINT95/Results/cc1_4way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/cc1_4way_${i}.out" ]; then
			break
		fi
	done
	echo "done"
	
	echo "compress95: sim3/4way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/4way/split_${i}.cfg ../CINT95/Programs/compress95.ss < ../CINT95/Input/compress95.in 2>../CINT95/Results/compress95_4way_${i}.trace > ../CINT95/Results/compress95_4way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/compress95_4way_${i}.out" ]; then
			break
		fi
	done
	echo "done"

	echo "anagram: sim3/4way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/4way/split_${i}.cfg ../CINT95/Programs/anagram.ss < ../CINT95/Input/anagram.in 2>../CINT95/Results/anagram_4way_${i}.trace > ../CINT95/Results/anagram_4way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/anagram_4way_${i}.out" ]; then
			break
		fi
	done
	echo "done"









	echo "cc1: sim3/8way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/8way/split_${i}.cfg ../CINT95/Programs/cc1.ss < ../CINT95/Input/1stmt.i 2>../CINT95/Results/cc1_8way_${i}.trace > ../CINT95/Results/cc1_8way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/cc1_8way_${i}.out" ]; then
			break
		fi
	done
	echo "done"
	
	echo "compress95: sim3/8way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/8way/split_${i}.cfg ../CINT95/Programs/compress95.ss < ../CINT95/Input/compress95.in 2>../CINT95/Results/compress95_8way_${i}.trace > ../CINT95/Results/compress95_8way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/compress95_8way_${i}.out" ]; then
			break
		fi
	done
	echo "done"

	echo "anagram: sim3/8way/split_${i}.cfg"
	echo $(../sim-cache -config ../configs/sim3/8way/split_${i}.cfg ../CINT95/Programs/anagram.ss < ../CINT95/Input/anagram.in 2>../CINT95/Results/anagram_8way_${i}.trace > ../CINT95/Results/anagram_8way_${i}.out)

	while true
	do
		if [ -f "../CINT95/Results/anagram_8way_${i}.out" ]; then
			break
		fi
	done
	echo "done"









done
