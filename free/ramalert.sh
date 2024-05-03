#!/bin/bash

limite=2

memoria_en_uso(){
	memoria_en_uso=$(free -h | awk 'NR==2 {print $3}')
	echo "El consumo de RAM es $memoria_en_uso"

	if [ $memoria_en_uso > $limite ]; then
		echo "Warning: La memoria esta excediendo el limite $limite GB"
	else 
		echo "La memoria esta dentro de los limtes"
	fi
}

memoria_en_uso
