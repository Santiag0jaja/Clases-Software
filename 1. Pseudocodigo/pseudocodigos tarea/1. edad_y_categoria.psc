Algoritmo edad_y_categoria 
	Escribir "Calculadora de categoria de edad";
	Definir edad Como Real;
	Definir categoria Como Caracter;
	Escribir "Ingrse su edad a continuacion:";
	Leer edad;
	Si edad < 12 Entonces
		categoria <- "Niño";
	SiNo
		Si edad > 12 y edad < 17 Entonces;
			categoria <- "Adolescente";
		SiNo
			Si edad > 17 y edad < 64 Entonces;
				categoria <- "Adulto";
			SiNo 
				Si edad > 64 Entonces;
					categoria <- "Adulto Mayor";
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir "Su categoria de edad es: ", categoria;
	Escribir "Hasta luego";
	// Hola profe Duber, generalmente no me gusta usar Si anidados ni ningun tipo de operadores anidados 
	// Sin embaego, en la recomendacion decia que se usaban si anidados, entonces los use para la creacion de este pseudocodigo
FinAlgoritmo
