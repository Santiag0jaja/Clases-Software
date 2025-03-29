Algoritmo estructura_segun
	Escribir "Probando estructura segun caso";
	Definir user, saludo_profe, saludo_estudiante, es_profesor, es_rector, es_estudiante, cargo, saludo_rector, saludo Como Caracter;
	es_profesor <- "Profesor";
	es_rector <- "Rector";
	es_estudiante <- "Estudiante";
	Escribir "Ingrese el nombre del usuario: ";
	Leer user;
	Escribir "¿Que cargo es usted?";
	Leer cargo;
	Segun cargo Hacer
		Caso es_profesor:
			saludo <- "Hola profe";
		Caso es_rector:
			saludo <- "Hola Rector";
		Caso es_estudiante:
			saludo <- "Hola estudiante";
		De Otro Modo:
			saludo <- "No reconozco tu cargo...";
	FinSegun
	Escribir saludo, " ", user;
FinAlgoritmo
