Algoritmo par_o_impar
	Definir num Como Real;
	Definir paroimpar Como Caracter;
	Escribir "¿Numero Par o Impar?";
	Escribir "Escriba el numero a averiguar:";
	Leer num;
	Si num%2=0 Entonces 
		paroimpar <- "Numero Par";
	SiNo 
		paroimpar <- "Numero Impar";
	FinSi
	Escribir "Su numero es un ", paroimpar;
FinAlgoritmo
