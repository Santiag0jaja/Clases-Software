Algoritmo suma_matriz
	Definir suma Como Real;
	Dimension nums[2,2];
	// f = filas / c = columnas //
	Para f <- 1 Hasta 2 Hacer 
		Para c <- 1 Hasta 2 Hacer 
			Escribir "Ingresa el numero [", f, ",", c, "]:";
			Leer nums[f, c];
		FinPara
	FinPara
	suma <- 0;
	Para f <- 1 Hasta 2 Hacer
		Para c <- 1 Hasta 2 Hacer 
			suma <- suma + nums[f, c];
		FinPara
	FinPara
	Escribir "La suma de los elementos de la matriz es: ", suma;
FinAlgoritmo
