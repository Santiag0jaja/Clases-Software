Funcion valor_pasaje_menor <- descuento_menor_edad ( pasaje )
	Escribir "Tu descuento como menor de edad es del 10%";
	valor_pasaje_menor <- pasaje - (pasaje * 0.1);
FinFuncion
//---------------------------------
Funcion valor_pasaje_adulto <- descuento_adulto ( pasaje )
	Escribir "No tiene descuento como adulto";
	valor_pasaje_adulto <- pasaje;
FinFuncion 
// ------------------------------
Funcion valor_pasaje_mayor <- descuento_mayor ( pasaje )
	Escribir "Tu descuento como mayor de edad es del 5%";
	valor_pasaje_mayor <- pasaje - (pasaje * 0.05);
FinFuncion 
// -----------------------------
Funcion valor_pasaje_discapacidad <- descuento_pmc ( pasaje )
	Escribir "Tu descuento como discapacitado es del 20%";
	valor_pasaje_discapacidad <- pasaje - (pasaje * 0.2);
FinFuncion
//-------------------------------
Algoritmo uso_funciones
	Escribir "Uso de funciones PSeInt";
	Definir pasaje Como Real;
	pasaje <- 3800;
	Definir edad Como Entero;
	Definir parar, discapacidad Como Logico;
	parar <- Verdadero 
	Escribir "Tiene usted alguna discapacidad? 1 para si, 0 para no";
	Leer discapacidad;
	Si discapacidad = Verdadero Entonces 
		Escribir "Precio del pasaje: ", descuento_pmc(pasaje);
		parar <- Falso;
	FinSi
	Mientras parar = Verdadero Hacer
	Escribir "Por favor ingrese su edad";
	Leer edad;
	Si edad < 18 Entonces
		Escribir "Precio del pasaje: ", descuento_menor_edad(pasaje);
	SiNo
		Si edad >= 18 y edad < 55 Entonces 
			Escribir "Precio del pasaje: ", descuento_adulto(pasaje);
		SiNo
			Si edad >= 55 Entonces
				Escribir "Precio del pasaje: ", descuento_mayor(pasaje);
			FinSi
		FinSi
	FinSi
	Escribir "Desea continuar? 1 para si, 0 para salir";
	Leer parar;
FinMientras

	
FinAlgoritmo
