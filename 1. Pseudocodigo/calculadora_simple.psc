Algoritmo calculadora_simple 
	Definir numero_uno, numero_dos, resultado Como Real;
	Definir es_suma, es_resta, es_multiplicacion, es_division, operacion Como Caracter;
	es_suma <- "+";
	es_resta <- "-";
	es_multiplicacion <- "*";
	es_division <- "/";
	Escribir "Calculadora basica simple";
	Escribir "A continuacion digite que operacion desea hacer (+, -, *, /):";
	Leer operacion; 
	Escribir "A continuacion, digite el primer digito:";
	Leer numero_uno;
	Escribir "A continuacion, digite el segundo digito:";
	Leer numero_dos;
	Segun operacion Hacer
		Caso es_suma:
			resultado <- numero_uno + numero_dos;
		Caso es_resta:
			resultado <- numero_uno - numero_dos;
		Caso es_multiplicacion:
			resultado <- numero_uno * numero_dos;
		Caso es_division:
			resultado <- numero_uno / numero_dos;
	FinSegun
	Escribir "El resultado es: ", resultado;
FinAlgoritmo
