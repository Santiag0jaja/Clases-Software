Algoritmo buscar_numero
	Dimension arreglo[10];
	Definir numeroabuscar, i Como Entero;
	Definir encontrado Como Logico;
	encontrado <- Falso
	Escribir "Ingrese 10 n�meros enteros para el arreglo:"
	Para i <- 1 Hasta 10 Hacer
		Escribir "N�mero ", i, ": ";
		Leer arreglo[i];
	Fin Para
	Escribir "Ingrese el n�mero a buscar en el arreglo:";
	Leer numeroabuscar;
	Para i <- 1 Hasta 10 Hacer
		Si arreglo[i] = numeroabuscar Entonces
			Escribir "El n�mero se encuentra en la posici�n: ", i;
			encontrado <- Verdadero;
			
		Fin Si
	Fin Para
	Si NO encontrado Entonces
		Escribir "El n�mero no se encuentra en el arreglo.";
	FinSi
FinAlgoritmo
