Algoritmo calculo_salario_minimo_integral
	Escribir "Ingrese el nombre del empleado a remunerar";
	Leer nombre_empleado;
	Escribir "Ingrese remuneracion basica";
	Leer valor_remuneracion;
	Escribir "Ingrese auxilio de transporte";
	Leer valor_auxilio;
	Escribir "Ingrese bonos de productividad";
	Leer bonos;
	descuentosalud <- (valor_remuneracion * 0.04);
	descuentopension <- (valor_remuneracion * 0.04);
	descuentostotales <- descuentopension + descuentosalud;
	Escribir "Deducciones del salario por ley";
	Escribir "Deduccion salud: ", descuentosalud;
	Escribir "Deduccion pension: ", descuentopension;
	Escribir "Deducciones finales total: ", descuentostotales;
	salarioneto <- (valor_remuneracion + valor_auxilio + bonos - descuentostotales);
	Escribir " Salario neto del empleado: ", salarioneto;
	Escribir "Hasta luego, ", nombre_empleado;

FinAlgoritmo
