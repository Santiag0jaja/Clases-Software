Algoritmo estructura_condicional_simple
	Escribir "Probando estructura condicional (Si entonces)";
	Definir user, saludo_profe, saludo_estudiante, es_profesor, es_rector, es_estudiante, cargo, saludo_rector Como Caracter;
	es_profesor <- "Profesor";
	es_rector <- "Rector";
	es_estudiante <- "Estudiante";
	Escribir "Ingrese el nombre del usuario: ";
	Leer user;
	Escribir "¿Que cargo es usted?";
	Leer cargo;
	Si cargo = es_profesor Entonces 
		saludo_profe <- "Hola querido profesor";
	FinSi
	Si cargo = es_rector Entonces 
		saludo_rector <- "Hola querido rector";
	FinSi
	Si cargo = es_estudiante Entonces
		saludo_estudiante <- "Hola querido estudiante";
	FinSi
	
	Escribir "Bienvenido al curso Introduccion al Desarrollo de Software, ", user;
	Escribir saludo_profe, saludo_estudiante, saludo_rector;
	
	
	
	
FinAlgoritmo
