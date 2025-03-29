Algoritmo promedio_negativos
	Definir nums Como Entero;
	Dimension nums[10];
	sumanegativos <- 0
    contanegativos <- 0
    promedio <- 0
	Para i <- 1 Hasta 10 Hacer
		Escribir "Ingrese el numero ", i, ":";
		Leer nums[i];
		Si nums[i] < 0 Entonces 
			sumanegativos <- sumanegativos + nums[i];
			contanegativos <- contanegativos + 1;
		FinSi
	FinPara
	si contanegativos > 0 entonces
        promedio <- sumanegativos / contanegativos; 
        Escribir "El promedio de los números negativos es: ", promedio;
    sino
        Escribir "No se ingresaron números negativos.";
    fin si
FinAlgoritmo
