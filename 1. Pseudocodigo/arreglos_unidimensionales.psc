Algoritmo arreglos_unidimensionales
	Escribir "Uso de arreglos de una dimensión o vector en PSeInt";
	Definir vector_estudiantes Como Caracter;
	Definir nombre_estudiante Como Caracter;
	Definir nota, nota_estudiante1, nota_estudiante2, nota_estudiante3, notafinal Como Real;
	Dimension vector_estudiantes[3];
	Escribir "Escriba el nombre del estudiante";
	Leer nombre_estudiante;
	vector_estudiantes[1] <- nombre_estudiante;
	Escribir "Escriba otro nombre de estudiante";
	Leer nombre_estudiante;
	vector_estudiantes[2] <- nombre_estudiante;
	Escribir "Escriba el ultimo nombre de estudiante";
	Leer nombre_estudiante;
	vector_estudiantes[3] <- nombre_estudiante;
	Escribir "Los estudiantes son: ", vector_estudiantes[1], ", ", vector_estudiantes[2], ", ", vector_estudiantes[3];
	//nota de conocimiento
	Dimension nota_estudiante1[3];
	Escribir "Escriba la nota de ", vector_estudiantes[1], " area de conocimiento";
	Leer nota;
	nota_estudiante1[1] <- nota;
	Escribir "Escriba la nota de ", vector_estudiantes[2], " area de conocimiento";
	Leer nota;
	nota_estudiante1[2] <- nota;
	Escribir "Escriba la nota de ", vector_estudiantes[3], " area de conocimiento";
	Leer nota;
	nota_estudiante1[3] <- nota;
	//nota del saber
	Dimension nota_estudiante2[3];
	Escribir "Escriba la nota de ", vector_estudiantes[1], " area de saber";
	Leer nota;
	nota_estudiante2[1] <- nota;
	Escribir "Escriba la nota de ", vector_estudiantes[2], " area de saber";
	Leer nota;
	nota_estudiante2[2] <- nota;
	Escribir "Escriba la nota de ", vector_estudiantes[3], " area de saber";
	Leer nota;
	nota_estudiante2[3] <- nota;
	//nota del ser
	Dimension nota_estudiante3[3];
	Escribir "Escriba la nota de ", vector_estudiantes[1], " area de ser";
	Leer nota;
	nota_estudiante3[1] <- nota;
	Escribir "Escriba la nota de ", vector_estudiantes[2], " area de ser";
	Leer nota;
	nota_estudiante3[2] <- nota;
	Escribir "Escriba la nota de ", vector_estudiantes[3], " area de ser";
	Leer nota;
	nota_estudiante3[3] <- nota;
	//nota final
	Dimension notafinal[3]
	notafinal[1] <- (nota_estudiante1[1] + nota_estudiante2[1] + nota_estudiante3[1]) / 3;
	notafinal[2] <- (nota_estudiante1[2] + nota_estudiante2[2] + nota_estudiante3[2]) / 3;
	notafinal[1] <- (nota_estudiante1[3] + nota_estudiante2[3] + nota_estudiante3[3]) / 3;
	//Escribir 
	Escribir "El estudiante ", vector_estudiantes[1], " tuvo una nota final acumulada de: ", notafinal[1];
	Escribir "El estudiante ", vector_estudiantes[2], " tuvo una nota final acumulada de: ", notafinal[2];
	Escribir "El estudiante ", vector_estudiantes[3], " tuvo una nota final acumulada de: ", notafinal[3];
FinAlgoritmo

