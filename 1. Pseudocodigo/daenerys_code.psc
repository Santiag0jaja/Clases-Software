Algoritmo daenerys_code
	Definir nombre, casa, personaje Como Caracter;
	Definir edad Como Entero;
	Definir daenerys, jon, robb, cersei, robert, info Como Caracter;
	daenerys <- "Daenerys";
	jon <- "Jon Snow";
	robb <- "Robb";
	cersei <- "Cersei";
	robert <- "Robert";
	Escribir "Bienvenido a la enciclopedia de personajes de Game Of Thrones!";
	Escribir "Digite a continuacion el personaje a buscar: ";
	Leer personaje;
	Si personaje = daenerys Entonces
		nombre <- "Daenerys Stormborn Targaryen";
		casa <- "Dinastia Targaryen";
		edad <- 24;
		info <- "La Madre de Dragones, conquistadora de los 7 reinos, khaleesi del gran mar de hierba";
	FinSi
	Si personaje = jon Entonces
		nombre <- "Jon Snow (o tambien Aegon Targaryen)";
		casa <- "Disputada entre la Casa Stark y la Dinastia Targaryen";
		edad <- 24;
		info <- "Hijo presuntamente bastardo de Eddard Stark, en la serie se revelo que era Aegon Targaryen. En los libros esta muerto";
	FinSi
	Si personaje = robb Entonces
		nombre <- "Robb Stark";
		casa <- "La Casa Stark de Winterfell";
		edad <- 20;
		info <- "Hijo mayor de Eddard Stark, heredero de Winterfell, actualmente muerto";
	FinSi
	Si personaje = cersei Entonces
		nombre <- "Cersei Lannister";
		casa <- "La Casa Lannister";
		edad <- 34;
		info <- "Casada con Robert Baratheon, reina de los 7 reinos, asesino a su esposo y tuvo varios hijos con su hermano el matarreyes";
	FinSi
	Si personaje = robert Entonces
		nombre <- "Robert Baratheon";
		casa <- "Dinastia Baratheon";
		edad <- 36;
		info <- "El demonio del tridente, lider de la casa baratheon que lidero la revelion contra la dinastia Targaryen";
	FinSi
	Escribir "Nombre completo de su personaje: ", nombre;
	Escribir "La casa de", " ", nombre, " es: ", casa;
	Escribir "La edad de", nombre, " es: ", edad;
	Escribir info;
FinAlgoritmo
