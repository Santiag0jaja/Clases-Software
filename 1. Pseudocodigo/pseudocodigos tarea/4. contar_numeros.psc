Algoritmo contar_numeros 
	Dimension nums[10];
	Definir positivos, negativos, ceros Como Entero;
	positivos <- 0;
	negativos <- 0;
	ceros <- 0;
	Para i <- 1 Hasta 10 Hacer
		Escribir "Ingresa un numero:";
		Leer nums[i];
	FinPara
	Para i <- 1 Hasta 10 Hacer
		Si nums[i] > 0 Entonces 
			positivos <- positivos + 1;
		FinSi
		Si nums[i] < 0 Entonces 
			negativos <- negativos + 1;
		FinSi
		Si nums[i] = 0 Entonces 
			ceros <- ceros + 1;
		FinSi
	FinPara
	// No anide los si porq no me gusta hacerlo
	Escribir "Positivos: ", positivos;
	Escribir "Negativos: ", negativos;
	Escribir "Ceros: ", ceros;
FinAlgoritmo
