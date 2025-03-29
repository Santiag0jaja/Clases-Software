Algoritmo acumulador
	Escribir "Uso de una variable con funcion de acumulador en PSeInt";
	Definir parar Como Logico;
	Definir acumuladoor, bonos Como Entero;
	acumuladoor <- 5800000;
	bonos <- 0;
	parar <- Verdadero;
	Mientras parar = Verdadero Hacer
		Escribir "Ingrese el bono por trabajo exitoso";
		Leer bonos;
		acumuladoor <- acumuladoor + bonos;
		Escribir "El acumulador esta en: ", acumuladoor;
		Escribir "Desea continuar el proceso? Ingrese 1 para si, y 0 para no";
		Leer parar;
	FinMientras
FinAlgoritmo
