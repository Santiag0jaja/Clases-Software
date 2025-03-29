Algoritmo proyecto_biblioteca
    Definir parar, pararuser, continuar Como Logico;
    Dimension libros[100, 4]; // titulo, autor, año, disponibilidad
    Dimension usuarios[100, 2]; // nombre e identificacion
    Dimension prestamos[100, 4]; // usuario, libro, fecha y devolucion
    Definir accion, cantidad_libros, cantidad_usuarios, cantidad_prestamos, indice, i Como Entero;
    Definir nombre, identificacion, fecha_prestamo, fecha_devolucion Como Caracter;
    pararuser <- Verdadero;
    parar <- Verdadero;
    cantidad_libros <- 0;
    cantidad_usuarios <- 0;
    cantidad_prestamos <- 0;
	
    // Gestión de usuarios
    Escribir "bienvenido al sistema de biblioteca. Antes de continuar gestione los usuarios.";
    Escribir "cuantos usuarios desea registrar inicialmente?";
    Leer cantidad_usuarios;
    Mientras pararuser = Verdadero Hacer
        Si cantidad_usuarios > 0 y cantidad_usuarios <= 100 Entonces
            Para i <- 1 Hasta cantidad_usuarios Hacer
                Escribir "Ingrese el nombre del usuario ", i, ":";
                Leer usuarios[i, 1];
                Escribir "Ingrese la identificación del usuario ", i, ":";
                Leer usuarios[i, 2];
            FinPara
            pararuser <- Falso;
        SiNo
            Escribir "Cantidad inválida. Intente nuevamente.";
            Leer cantidad_usuarios;
        FinSi
    FinMientras
	
    // menu principal
    Mientras parar = Verdadero Hacer
        Escribir "Seleccione que desea hacer:";
        Escribir "1 - Registrar Libros / 2 - Consultar Libros / 3 - Actualizar Libros";
        Escribir "4 - Gestionar Préstamos / 5 - Consultas Avanzadas / 6 - Salir";
        Leer accion;
		
        Segun accion Hacer
            1: 
                // Registrar libros
                Escribir "Cuántos libros desea registrar?";
                Leer cantidad_libros;
				
                Si cantidad_libros > 0 y cantidad_libros <= 100 Entonces
                    Para i <- 1 Hasta cantidad_libros Hacer
                        Escribir "Ingrese el título del libro ", i, ":";
                        Leer libros[i, 1];
						
                        Escribir "Ingrese el autor del libro ", i, ":";
                        Leer libros[i, 2];
						
                        Escribir "Ingrese el año de publicación del libro ", i, ":";
                        Leer libros[i, 3];
						
                        libros[i, 4] <- "Disponible"; // Estado inicial del libro
                    FinPara
                SiNo
                    Escribir "Cantidad inválida.";
                FinSi
				
            2:
                // Consultar libros
                Si cantidad_libros = 0 Entonces
                    Escribir "No hay libros registrados.";
                SiNo
                    Para i <- 1 Hasta cantidad_libros Hacer
                        Escribir "Libro ", i, ":";
                        Escribir "Título: ", libros[i, 1];
                        Escribir "Autor: ", libros[i, 2];
                        Escribir "Año: ", libros[i, 3];
                        Escribir "Estado: ", libros[i, 4];
                        Escribir "-------------------------";
                    FinPara
                FinSi
				
            3:
                // Actualizar libros
                Si cantidad_libros = 0 Entonces
                    Escribir "No hay libros registrados para actualizar.";
                SiNo
                    Escribir "Ingrese el número del libro que desea actualizar (1 a ", cantidad_libros, "):";
                    Leer indice;
					
                    Si indice >= 1 y indice <= cantidad_libros Entonces
                        Escribir "Libro seleccionado:";
                        Escribir "Título: ", libros[indice, 1];
                        Escribir "Autor: ", libros[indice, 2];
                        Escribir "Año: ", libros[indice, 3];
						
                        Escribir "Ingrese el nuevo título (o presione Enter para no cambiar):";
                        Leer libros[indice, 1];
                        Escribir "Ingrese el nuevo autor (o presione Enter para no cambiar):";
                        Leer libros[indice, 2];
                        Escribir "Ingrese el nuevo año de publicación (o presione Enter para no cambiar):";
                        Leer libros[indice, 3];
						
                        Escribir "Información del libro actualizada correctamente.";
                    SiNo
                        Escribir "Índice inválido.";
                    FinSi
                FinSi
				
            4:
                // Gestión de préstamos
                Escribir "1 - Prestar libro / 2 - Devolver libro";
                Leer accion;
				
                Segun accion Hacer
                    1:
                        // Prestar libro
                        Escribir "Ingrese el número del usuario que solicita el préstamo (1 a ", cantidad_usuarios, "):";
                        Leer indice;
						
                        Si indice >= 1 y indice <= cantidad_usuarios Entonces
                            Escribir "Ingrese el número del libro a prestar (1 a ", cantidad_libros, "):";
                            Leer i;
							
                            Si i >= 1 y i <= cantidad_libros y libros[i, 4] = "Disponible" Entonces
                                libros[i, 4] <- "Prestado";
                                Escribir "Ingrese la fecha de préstamo (dd/mm/aaaa):";
                                Leer fecha_prestamo;
								
                                Escribir "Ingrese la fecha de devolución (dd/mm/aaaa):";
                                Leer fecha_devolucion;
								
                                cantidad_prestamos <- cantidad_prestamos + 1;
                                prestamos[cantidad_prestamos, 1] <- usuarios[indice, 1];
                                prestamos[cantidad_prestamos, 2] <- libros[i, 1];
                                prestamos[cantidad_prestamos, 3] <- fecha_prestamo;
                                prestamos[cantidad_prestamos, 4] <- fecha_devolucion;
								
                                Escribir "Préstamo registrado exitosamente.";
                            SiNo
                                Escribir "Libro no disponible o índice inválido.";
                            FinSi
                        SiNo
                            Escribir "Índice de usuario inválido.";
                        FinSi
						
                    2:
                        // Devolver libro
                        Escribir "Ingrese el número del libro a devolver (1 a ", cantidad_libros, "):";
                        Leer i;
						
                        Si i >= 1 y i <= cantidad_libros y libros[i, 4] = "Prestado" Entonces
                            libros[i, 4] <- "Disponible";
                            Escribir "Devolución registrada correctamente.";
                        SiNo
                            Escribir "Libro no está prestado o índice inválido.";
                        FinSi
                FinSegun
				
            5:
                // Consultas avanzadas
                Escribir "1 - Listar libros disponibles / 2 - Buscar por título o autor / 3 - Ver historial de préstamos";
                Leer accion;
				
                Segun accion Hacer
                    1:
                        // Listar libros disponibles
                        Para i <- 1 Hasta cantidad_libros Hacer
                            Si libros[i, 4] = "Disponible" Entonces
                                Escribir "Título: ", libros[i, 1], " | Autor: ", libros[i, 2];
                            FinSi
                        FinPara
						
                    2:
                        // Buscar por título o autor
                        Escribir "Ingrese el título o autor a buscar:";
                        Leer nombre;
						
                        Para i <- 1 Hasta cantidad_libros Hacer
                            Si libros[i, 1] = nombre o libros[i, 2] = nombre Entonces
                                Escribir "Título: ", libros[i, 1], " | Autor: ", libros[i, 2], " | Estado: ", libros[i, 4];
                            FinSi
                        FinPara
						
                    3:
                        // Ver historial de préstamos
                        Escribir "Historial de préstamos:";
                        Para i <- 1 Hasta cantidad_prestamos Hacer
                            Escribir "Usuario: ", prestamos[i, 1], " | Libro: ", prestamos[i, 2];
                            Escribir "Fecha Préstamo: ", prestamos[i, 3], " | Fecha Devolución: ", prestamos[i, 4];
                            Escribir "-------------------------";
                        FinPara
                FinSegun
				
            6:
				Escribir "Hasta luego!";
                parar <- Falso;
        FinSegun
    FinMientras

FinAlgoritmo
