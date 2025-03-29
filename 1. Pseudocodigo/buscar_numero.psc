Algoritmo buscar_numero
	Dimension arreglo[10];
	Definir numeroabuscar, i Como Entero;
	Definir encontrado Como Logico;
	encontrado <- Falso
	Escribir "Ingrese 10 números enteros para el arreglo:"
	Para i <- 1 Hasta 10 Hacer
		Escribir "Número ", i, ": ";
		Leer arreglo[i];
	Fin Para
	Escribir "Ingrese el número a buscar en el arreglo:";
	Leer numeroabuscar;
	Para i <- 1 Hasta 10 Hacer
		Si arreglo[i] = numeroabuscar Entonces
			Escribir "El número se encuentra en la posición: ", i;
			encontrado <- Verdadero;
			
		Fin Si
	Fin Para
	Si NO encontrado Entonces
		Escribir "El número no se encuentra en el arreglo.";
	FinSi
FinAlgoritmo
