Algoritmo hemoglobina
	Definir nivel, edad Como Real;
	Definir anemia Como Logico;
	Escribir "Hola, ingrese su edad a continuacion (Si es menor a un año, coloque 0. y los meses):";
	Leer edad;
	Escribir "A continuacion, ingrese su nivel de hemoglobina:";
	Leer nivel;
	anemia <- Verdadero;
	Si edad > 10 y edad <= 15 Entonces 
		Si nivel > 13 y nivel < 15.5 Entonces 
			anemia <- Falso;
		FinSi
	FinSi
	Si edad > 5 y edad <= 10 Entonces 
		Si nivel > 12.6 y nivel < 15.5 Entonces 
			anemia <- Falso;
		FinSi
	FinSi
	Si edad > 1 y edad <= 5 Entonces 
		Si nivel > 11.5 y nivel < 15 Entonces 
			anemia <- Falso;
		FinSi
	FinSi
	Si edad > 0.6 y edad <= 0.12 Entonces 
		Si nivel > 11 y nivel < 15 Entonces 
			anemia <- Falso;
		FinSi
	FinSi
	Si edad > 0 y edad <= 0.1 Entonces 
		Si nivel > 13 y nivel < 26 Entonces 
			anemia <- Falso;
		FinSi
	FinSi
	Escribir "Usted tiene anemia: ", anemia;
FinAlgoritmo
