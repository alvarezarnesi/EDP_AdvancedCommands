#!/bin/bash

#funcion para simular una tarea que duerme entre 1-10 segundos aleatoriamente

sim_time(){
	echo "Iniciando tarea $1..."
	sleep $((RANDOM % 10 + 1))
	echo "Tarea $1 terminada"
}

#Corro las tareas en el background

sim_time 1 &
sim_time 2 &
sim_time 3 &

wait && echo "tareas terminadas"
