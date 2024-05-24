# EDP_AdvancedCommands
Repo con algunos ejercicios para ver como funcionan algunos comando de bash

1. En el directorio ps_top_signals tenemos un a high_cpu.sh, un script que genera un bucle infinito y empieza a consumir mucha CPU. Correr en la terminal el ejercicio de la siguiente manera:
./high_cpu.sh & 
El comando & deja el proceso en segundo plano. Intentar mandarle una seña Ctrl+C para matarlo y ver que pasa. Analizar con «ps» y «top» que pasa con la RAM.
Como se frenaria el proceso?

2.  En el directorio wait tenemos 2 sripts. Uno que se llama sim_time.sh y otro sim_time_NoWait.sh. Correr ambos y notar las diferencias entre uno y el otro.
Cuando se ejecutan las tareas con el & al final, el shell no espera a que se termine el proceso antes de seguir con la otra task, sin embargo con el «wait» , le estamos indicando que expresamente termine con los proceso en el background para continuar.
Un uso para el  comando «wait» puede ser para asegurarnos que las tareas corriendo en el background terminen antes de seguir con las tareas subsecuentes.

3. En el directorio free tenemos un script (ramalert.sh) que toma la memoria que tenemos en uso y nos tira una alerta si esta por arriba del limite que le seteamos. Ejecutar el script de la siguiente manera:
./ramalert.sh

4. En el directorio ping tenemos un script que hace ping a 3 hosts diferentes, 2 ellos funcionan o deberia funcionar bien, vemos que le tiramos 4 ICPM request y nos debería devolver una respuesta. El ultimo esta haciendo ping a un host desconocido y luego de intenar falla con 100% paquetes perdidos. ¿De que manera le podemos limitar cuanto queremos que tarde como maximo por cada ping?
Ejecutar el script de la siguiente forma:
./ping_host.sh
