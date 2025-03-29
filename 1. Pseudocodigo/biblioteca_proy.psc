Algoritmo proyecto_biblioteca
    Definir parar, pararuser, continuar Como Logico;
    Dimension libros[100, 4]; // titulo, autor, a�o, disponibilidad
    Dimension usuarios[100, 2]; // nombre e identificacion
    Dimension prestamos[100, 4]; // usuario, libro, fecha y devolucion
    Definir accion, cantidad_libros, cantidad_usuarios, cantidad_prestamos, indice, i Como Entero;
    Definir nombre, identificacion, fecha_prestamo, fecha_devolucion Como Caracter;
    pararuser <- Verdadero;
    parar <- Verdadero;
    cantidad_libros <- 0;
    cantidad_usuarios <- 0;
    cantidad_prestamos <- 0;
	
    // Gesti�n de usuarios
    Escribir "bienvenido al sistema de biblioteca. Antes de continuar gestione los usuarios.";
    Escribir "cuantos usuarios desea registrar inicialmente?";
    Leer cantidad_usuarios;
    Mientras pararuser = Verdadero Hacer
        Si cantidad_usuarios > 0 y cantidad_usuarios <= 100 Entonces
            Para i <- 1 Hasta cantidad_usuarios Hacer
                Escribir "Ingrese el nombre del usuario ", i, ":";
                Leer usuarios[i, 1];
                Escribir "Ingrese la identificaci�n del usuario ", i, ":";
                Leer usuarios[i, 2];
            FinPara
            pararuser <- Falso;
        SiNo
            Escribir "Cantidad inv�lida. Intente nuevamente.";
            Leer cantidad_usuarios;
        FinSi
    FinMientras
	
    // menu principal
    Mientras parar = Verdadero Hacer
        Escribir "Seleccione que desea hacer:";
        Escribir "1 - Registrar Libros / 2 - Consultar Libros / 3 - Actualizar Libros";
        Escribir "4 - Gestionar Pr�stamos / 5 - Consultas Avanzadas / 6 - Salir";
        Leer accion;
		
        Segun accion Hacer
            1: 
                // Registrar libros
                Escribir "Cu�ntos libros desea registrar?";
                Leer cantidad_libros;
				
                Si cantidad_libros > 0 y cantidad_libros <= 100 Entonces
                    Para i <- 1 Hasta cantidad_libros Hacer
                        Escribir "Ingrese el t�tulo del libro ", i, ":";
                        Leer libros[i, 1];
						
                        Escribir "Ingrese el autor del libro ", i, ":";
                        Leer libros[i, 2];
						
                        Escribir "Ingrese el a�o de publicaci�n del libro ", i, ":";
                        Leer libros[i, 3];
						
                        libros[i, 4] <- "Disponible"; // Estado inicial del libro
                    FinPara
                SiNo
                    Escribir "Cantidad inv�lida.";
                FinSi
				
            2:
                // Consultar libros
                Si cantidad_libros = 0 Entonces
                    Escribir "No hay libros registrados.";
                SiNo
                    Para i <- 1 Hasta cantidad_libros Hacer
                        Escribir "Libro ", i, ":";
                        Escribir "T�tulo: ", libros[i, 1];
                        Escribir "Autor: ", libros[i, 2];
                        Escribir "A�o: ", libros[i, 3];
                        Escribir "Estado: ", libros[i, 4];
                        Escribir "-------------------------";
                    FinPara
                FinSi
				
            3:
                // Actualizar libros
                Si cantidad_libros = 0 Entonces
                    Escribir "No hay libros registrados para actualizar.";
                SiNo
                    Escribir "Ingrese el n�mero del libro que desea actualizar (1 a ", cantidad_libros, "):";
                    Leer indice;
					
                    Si indice >= 1 y indice <= cantidad_libros Entonces
                        Escribir "Libro seleccionado:";
                        Escribir "T�tulo: ", libros[indice, 1];
                        Escribir "Autor: ", libros[indice, 2];
                        Escribir "A�o: ", libros[indice, 3];
						
                        Escribir "Ingrese el nuevo t�tulo (o presione Enter para no cambiar):";
                        Leer libros[indice, 1];
                        Escribir "Ingrese el nuevo autor (o presione Enter para no cambiar):";
                        Leer libros[indice, 2];
                        Escribir "Ingrese el nuevo a�o de publicaci�n (o presione Enter para no cambiar):";
                        Leer libros[indice, 3];
						
                        Escribir "Informaci�n del libro actualizada correctamente.";
                    SiNo
                        Escribir "�ndice inv�lido.";
                    FinSi
                FinSi
				
            4:
                // Gesti�n de pr�stamos
                Escribir "1 - Prestar libro / 2 - Devolver libro";
                Leer accion;
				
                Segun accion Hacer
                    1:
                        // Prestar libro
                        Escribir "Ingrese el n�mero del usuario que solicita el pr�stamo (1 a ", cantidad_usuarios, "):";
                        Leer indice;
						
                        Si indice >= 1 y indice <= cantidad_usuarios Entonces
                            Escribir "Ingrese el n�mero del libro a prestar (1 a ", cantidad_libros, "):";
                            Leer i;
							
                            Si i >= 1 y i <= cantidad_libros y libros[i, 4] = "Disponible" Entonces
                                libros[i, 4] <- "Prestado";
                                Escribir "Ingrese la fecha de pr�stamo (dd/mm/aaaa):";
                                Leer fecha_prestamo;
								
                                Escribir "Ingrese la fecha de devoluci�n (dd/mm/aaaa):";
                                Leer fecha_devolucion;
								
                                cantidad_prestamos <- cantidad_prestamos + 1;
                                prestamos[cantidad_prestamos, 1] <- usuarios[indice, 1];
                                prestamos[cantidad_prestamos, 2] <- libros[i, 1];
                                prestamos[cantidad_prestamos, 3] <- fecha_prestamo;
                                prestamos[cantidad_prestamos, 4] <- fecha_devolucion;
								
                                Escribir "Pr�stamo registrado exitosamente.";
                            SiNo
                                Escribir "Libro no disponible o �ndice inv�lido.";
                            FinSi
                        SiNo
                            Escribir "�ndice de usuario inv�lido.";
                        FinSi
						
                    2:
                        // Devolver libro
                        Escribir "Ingrese el n�mero del libro a devolver (1 a ", cantidad_libros, "):";
                        Leer i;
						
                        Si i >= 1 y i <= cantidad_libros y libros[i, 4] = "Prestado" Entonces
                            libros[i, 4] <- "Disponible";
                            Escribir "Devoluci�n registrada correctamente.";
                        SiNo
                            Escribir "Libro no est� prestado o �ndice inv�lido.";
                        FinSi
                FinSegun
				
            5:
                // Consultas avanzadas
                Escribir "1 - Listar libros disponibles / 2 - Buscar por t�tulo o autor / 3 - Ver historial de pr�stamos";
                Leer accion;
				
                Segun accion Hacer
                    1:
                        // Listar libros disponibles
                        Para i <- 1 Hasta cantidad_libros Hacer
                            Si libros[i, 4] = "Disponible" Entonces
                                Escribir "T�tulo: ", libros[i, 1], " | Autor: ", libros[i, 2];
                            FinSi
                        FinPara
						
                    2:
                        // Buscar por t�tulo o autor
                        Escribir "Ingrese el t�tulo o autor a buscar:";
                        Leer nombre;
						
                        Para i <- 1 Hasta cantidad_libros Hacer
                            Si libros[i, 1] = nombre o libros[i, 2] = nombre Entonces
                                Escribir "T�tulo: ", libros[i, 1], " | Autor: ", libros[i, 2], " | Estado: ", libros[i, 4];
                            FinSi
                        FinPara
						
                    3:
                        // Ver historial de pr�stamos
                        Escribir "Historial de pr�stamos:";
                        Para i <- 1 Hasta cantidad_prestamos Hacer
                            Escribir "Usuario: ", prestamos[i, 1], " | Libro: ", prestamos[i, 2];
                            Escribir "Fecha Pr�stamo: ", prestamos[i, 3], " | Fecha Devoluci�n: ", prestamos[i, 4];
                            Escribir "-------------------------";
                        FinPara
                FinSegun
				
            6:
				Escribir "Hasta luego!";
                parar <- Falso;
        FinSegun
    FinMientras

FinAlgoritmo
