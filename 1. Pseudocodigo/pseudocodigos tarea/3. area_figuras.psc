Algoritmo area_figuras
	Definir radio, area, lado, altura, base, figura Como Real;
	Escribir "Calculadora areas de figuras";
	Escribir "A continuacion, digite que figura requiere del area";
	Escribir "( 1: círculo, 2: cuadrado, 3: rectángulo, 4: triangulo):";
	// Hice este espacio por pura belleza visual, añadi tambien el triangulo por mero gusto personal
	Leer figura;
	Segun figura Hacer
		1:
			Escribir "Digite a continuacion el radio del circulo:";
			Leer radio;
			area <- 3.14 * (radio * radio);
			Escribir "El area del circulo es: ", area;
		2: 
			Escribir "Digite cuanto mide uno de los lados del cuadrado:";
			Leer lado;
			area <- (lado * lado);
			Escribir "El area del cuadrado es: ", area;
		3: 
			Escribir "Digite a continuacion la altura del rectangulo:";
			Leer altura;
			Escribir "Ahora, digite la base del rectangulo:";
			Leer base;
			area <- base * altura;
			Escribir "El area del rectangulo es: ", area;
		4:
			Escribir "Digite la altura del triangulo:";
			Leer altura;
			Escribir "Digite la base del triangulo:";
			Leer base;
			area <- (base * altura) / 2;
			Escribir "El area del triangulo es: ", area;
	Fin Segun
FinAlgoritmo
