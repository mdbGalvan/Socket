***
>**Autora:**         *María D. Batista Galván*  
>**Fecha:**          *Lunes 4 de Marzo de 2013*  
>**Asignatura:**     *Redes y Sistemas Distribuidos*  
>**Cuestionario:**   *Actividad Adicional: Socket*  
***

#¿Qué es Socket?

>Un **socket** no es más que un **canal de comunicación** entre dos programas que corren sobre ordenadores distintos o incluso en el mismo ordenador. 

>Existen básicamente dos tipos de **canales de comunicación** o **sockets**, los ***orientados a conexión*** y los ***no orientados a conexión***.

>En el primer caso ambos programas deben conectarse entre ellos con un **socket** y hasta 
que no esté establecida correctamente la conexión, ninguno de los dos puede transmitir 
datos. Esta es la parte **TCP** del protocolo **TCP/IP**, y garantiza que todos los datos van a 
llegar de un programa al otro correctamente. Se utiliza cuando la información a transmitir 
es importante, no se puede perder ningún dato y ***no importa*** que los programas se queden 
***bloqueados*** esperando o transmitiendo datos. 

>En el segundo caso, no es necesario que los programas se conecten. Cualquiera de ellos 
puede transmitir datos en cualquier momento, independientemente de que el otro 
programa esté ***escuchando o no***. Es el llamado protocolo **UDP**, y garantiza que los datos 
que lleguen son correctos, pero no garantiza que lleguen todos. Se utiliza cuando es muy 
importante que el programa no se quede bloqueado y no importa que se pierdan datos. 

#Funcionamiento

>Para poder utilizarlo sólo hay que tener instalado un servidor, por ejemplo, el servidor HTTP apache, y en mi caso utilicé como host = 'localhost' y como puerto '8000', por eso, todas las opciones por defecto se refieren a estos dos parámetros. Y ruby.
Y para ejecutar el programa realizado, se pueden consultar las opciones posibles:  `C:\> rake -T`.  

>Pero una posible opción sería:

>* Para el **servidor**: 

>>>rake serverTCP2[port], que en mi caso sería:  
>>>rake serverTCP2[8000]

>* Para el **cliente**: 

>>>rake clientTCP2[hostname, port], que en mi caso sería:  
>>>rake clientTCP2['localhost', 8000]

>Aunque existen más opciones, incluso si quieren realizar un socket tipo **UDP**. 
