#!/bin/bash

VAR=$1
echo $VAR
X=$2
ABC=abcdefghijklmnopqrstuvwxyz

for i in $(seq $(echo -n $VAR | wc -c) ); do
	for j in $(seq $(echo -n $ABC | wc -c)); do
		if [[ ${VAR:$(($i-1)):1} == ${ABC:$(($j-1)):1} ]]; then
			RAV=$RAV${ABC:$(($(($j-1))+$X)):1}
		fi
		if [[ ${VAR:$(($i-1)):1} == " " ]]; then
                        RAV=$RAV$" "
                fi
	done
	#echo -n ${VAR:$(($i-1)):1}
done

echo $RAV
