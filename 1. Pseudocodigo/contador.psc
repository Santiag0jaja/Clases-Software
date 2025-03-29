Algoritmo contador
	Escribir "Uso de una variable con funcion de contador en PSeInt";
	Definir parar Como Logico;
	Definir contaador Como Entero;
	contaador <- 0;
	parar <- Verdadero;
	Definir estudiante Como Caracter;
	Escribir "ingrese el nombre del estudiante";
	Leer estudiante;
	Mientras parar = Verdadero Hacer
		Escribir "Hola compañero ", estudiante, ". Bienvenido a clase";
		contaador <- contaador + 1;
		Escribir "El contrador esta en: ", contaador;
		Escribir "Desea continuar el proceso? Ingrese 1 para si, y 0 para no";
		Leer parar;
	FinMientras
FinAlgoritmo
