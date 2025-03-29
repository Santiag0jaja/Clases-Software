Algoritmo busqueda_matriz
	Dimension matriz[3, 3];
	Definir fila, columna Como Entero;
	Definir numerobuscar Como Real;
	Para fila <- 1 Hasta 3 Hacer
		Para columna <- 1 Hasta 3 Hacer
			Escribir "Digite el numero en la posicion ", fila, ", ", columna;
			Leer matriz[fila, columna];
		FinPara
	FinPara
	Escribir "Ingrese el numero a buscar:";
	Leer numerobuscar;
	Para fila <- 1 Hasta 3 Hacer
		Para columna <- 1 Hasta 3 Hacer
			Si matriz[fila, columna] = numerobuscar Entonces
				Escribir "El numero a buscar (", numerobuscar, ") Se encuentra en la posicion:", fila, ", ", columna;
			FinSi
		FinPara
	FinPara
FinAlgoritmo
