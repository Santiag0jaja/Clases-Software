"""
Este archivo será para ver los tipos de cadenas de texto mas comunes, su tratamiento, modificacion y 
manipulacion
"""

variable_cadena: str = "Curso backend con python"
"""-------------------------------------------"""
"""Primer Metodo: Slices"""
#Sirve para manipular elementos de una lista de diferentes formas
print(variable_cadena[0:12])
#print(variable_cadena[0:17] + " " + input("Ingrese el modelo de lenguaje a utilizar"))

#Diferentes tipos de Slices
print(variable_cadena[5:])
#Slices sin los puntos 
print("Positivo: ", variable_cadena[2])
print("Negativo: ", variable_cadena[-20])
"""-------------------------------------------"""
"""Rangos: nos permite crear cadenas de texto con rangos definidos"""
print(variable_cadena[ :: ])
print(variable_cadena[ ::2])
print(variable_cadena[ ::-1])
"""-------------------------------------------"""
"""Principales operaciones de los Strings"""
#Metodo lower: Convierte cadena de texto en minúsculas
print(variable_cadena.lower())
#Metodo upper: permite colocar la cadena de texto en mayúsculas
print(variable_cadena.upper())
#Metodo Starwith: Detecta si la cadena de texto comienza o no con un caracter especificado
print(variable_cadena.startswith("C"))
#Metodo capitalize: nos permite tener la primera palabra de una cadena de texto en mayus
print(variable_cadena.lower().capitalize())
#Metodo Title: Permite poner en mayusculas todas las palabras de una cadena de texto
print(variable_cadena.title())
"""-------------------------------------------"""
"""Metodo Center: nos permite centrar"""
curso: str = variable_cadena
print(curso)
print(curso.center(60, " "))
print(curso.center(60, "-"))
print(curso.center(60, "_"))
print(curso[5:].upper().center(60, " "))
"""-------------------------------------------"""
"""Metodo Len: nos permite conocer la longitud de la cadena de texto"""
print("El texto es --> ", curso, "Y su tamaño es: ", len(curso))
print("El texto es -->", " ", "y su tamaño es: ", len(" "))
"""--------------NO-FUNCIONA-VERSION-PYTHON----------------------------------"""
"""Metodo Rjust: Nos permite darle caracteres o espacios a una cadena de texto en la 
parte derecha de este o al principio"""
print(curso.rjust(1, "*")); #Deberia ser: *curso backend con python
"""-------------------------------------------"""
"""Metodo Ljust: Nos permite darle caracteres o espacios a una cadena de texto en la 
parte izquierda de este o al principio"""
print(curso.ljust(5, "*")); #Deberia ser: Curso backend con python*****
"""-------------------------------------------"""
"""Metodo ZFILL: Nos permite añadir 0 a la cadena de texto en la parte derecha de la misma
con el numero deseado"""
print(curso.zfill(10))
"""-----------------------FIN-NO-FUNCIONA------------------------------------"""
"""Metodo Replace: nos permite reemplazar partes de la cadena de texto co otro texto deseado"""
print("Cadena de texto original: ", curso)
print("Cadena de texto reemplazada: ", curso.replace(" ", "."))
print("Cadena de texto reemplazada: ", curso.replace("Python", "Java"))
"""-------------------------------------------"""
"""Metodo Count: Nos permite validar el numero de veces que se repite una palabra,
 cadena de texo o caracter"""
print("La cantidad de veces que se repite el caracter es: ", curso.count("a"))
print("La cantidad de veces que se repite la palabra 'python' es: ", curso.count("python"))
"""-------------------------------------------"""
"""Metodo Find: nos permite buscar si existe la palabra, caracter o simbolo a buscar"""
print("Que posicion esta la 'o'?", curso.find("o"))
print("Que posicion esta la 'y'?", curso.find("y"))
print("Que posicion esta la palabra 'python'?", curso.find("python"))
"""-------------------------------------------"""
"""Metodo lstrip: Nos permite eliminar espacios en blanco en la pate izquierda de la cadena de texto!"""
curso_con_l_espacios: str = "                  " + curso
print("Se imprime con espacios: ", curso_con_l_espacios)
print("Uso de lstrip: ", curso_con_l_espacios.lstrip())
"""-------------------------------------------"""
"""Metodo rstrip: Nos permite eliminar espacios en blanco en la pate derecha de la cadena de texto!"""
curso_con_r_espacios: str = curso + "                 "
print("Se imprime con los espacios: ", curso_con_r_espacios)
print("Se imprime con los espacios: ", curso_con_r_espacios.rstrip())
"""-------------------------------------------"""
"""Metodo Stript: Este metodo nops permite eliminar los espacios tanto en derecha como en izquierda
de la cadena de texto """
print("Original: ", curso_con_l_espacios, "Sin espacios: ", curso_con_l_espacios.strip(),
     len(curso_con_l_espacios.strip()))
print("Original: ", curso_con_r_espacios, "Sin espacios: ", curso_con_r_espacios.strip(),
      len(curso_con_r_espacios.strip()))
"""-------------------------------------------"""
"""Metodo Index: """
print("Utilizando Index: ", curso.index("y"))
#print("Utilizando index con error: ", curso.index("Z"))
print("Utilizando index: ", curso.index("python"))
"""-------------------------------------------"""
"""Metodo SPLIT: nos permite rebanar o separar nuestra cadena de texto dependiendo de un caracter indicado"""
print("Usando el metodo SPLIT: ", curso.split(" "))
print(curso.split(" ")[3])
"""-------------------------------------------"""
"""Metodo is..."""
print(curso.islower())
print(curso.isdigit())
print(curso.lower().islower())
"""-------------------------------------------"""
"""Multiplicacion de texto"""
print("Hola mundo " * 3)
print(curso * 7)
print((curso.center(120, "_")) * 3)
print(("Hola Mundo".center(120, "-") * 2))
"""-------------------------------------------"""
"""Saltos de linea en cadenas de texto"""
curso_salto_linea: str = "Curso\nbackend\nen\npython"
print(curso_salto_linea)

