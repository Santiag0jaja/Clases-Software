"""
Este archivo será para ver los tipos de cadenas de texto mas comunes, su tratamiento, modificacion y 
manipulacion
"""

variable_cadena: str = "Curso backend con python"

"""Primer Metodo: Slices"""
#Sirve para manipular elementos de una lista de diferentes formas
print(variable_cadena[0:12])
print(variable_cadena[0:17] + " " + input("Ingrese el modelo de lenguaje a utilizar"))

#Diferentes tipos de Slices
print(variable_cadena[5:])
#Slices sin los puntos 
print("Positivo: ", variable_cadena[2])
print("Negativo: ", variable_cadena[-20])


"""Rangos: nos permite crear cadenas de texto con rangos definidos"""
print(variable_cadena[ :: ])
print(variable_cadena[ ::2])
print(variable_cadena[ ::-1])

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
