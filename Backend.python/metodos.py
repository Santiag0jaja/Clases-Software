"""
Metodos generales en python
"""

"""-------------------------------------------"""

"""
Marcodeo (Hardcodying)
Mala practica
"""
"""Ejemplo:"""
print("Esto es una mala practica hardcodeo")

"""Solucion"""
mensaje: str = "Esto es una buena practica hardcodying"
num_mensaje: int = input("Ingrese el numero del mensaje")
pruebaaaaaaaaa: str = "Hola"
print(mensaje, " ", num_mensaje, " ", pruebaaaaaaaaa)

"""-------------------------------------------"""

"""
Metodos de Casteo o Constructores
"""

"""Ejemplo"""
num_1: str = "1"
print(num_1)
print(type(num_1))

"""Cadena de texto a numero entero"""
int_numero_1: int = int(num_1)
print(int_numero_1)
print(type(int_numero_1)); """<- Para saber que tipo de dato es"""

"""Cadena de numero entero a cadena de texto"""
str_intnumero_1: str = str(int_numero_1)
print(str_intnumero_1)
print(type(str_intnumero_1))

"""Cadena de texto a cadena de float"""
float_numero_1: float = float(str_intnumero_1)
print(float_numero_1)
print(type(float_numero_1))

"""-------------------------------------------"""

"""Metodos de casteo para estructuras de datos"""

print(tuple([1,2,3]))
print(list({1,2,3}))
print(set((4,5,6,6)))
print(type(tuple([1,2,3])))
print(type(list({1,2,3})))
print(type(set((4,5,6,6))))

"""-------------------------------------------"""

"""Metodo TYPE()"""

print(type(True)," : ", "True")
print(type(tuple([1,2,3])),":", "[1,2,3]")
print(type(list({1,2,3})), " : ", "{1,2,3}")
print(type(set((4,5,6,6))), "  : ", "(4,5,6,6)")
print(type(float(float_numero_1)), " : ", float_numero_1)


"""-------------------------------------------"""

"""Metodo ISINSTANCE, evalua el tipo de objeto o variable"""

"""Evaluacion simple"""
print(isinstance(num_1, str))
print(isinstance(float_numero_1, int))

"""Evaluacion multiple"""
print(isinstance(float_numero_1, (int,list)))
print(isinstance(num_1, (str,int)))

"""-------------------------------------------"""

"""Metodo print y sus caracteristicas"""
print("Hola mundo"); """Print simple"""
print(num_1); """Print simple con variable"""
print(num_1, num_mensaje, float_numero_1); """Print multiple"""
print(num_1, num_mensaje, float_numero_1, sep = "##"); """Print sep (Los espacios son cambiados)"""
print(num_1, num_mensaje, float_numero_1, end = "@@"); """Permite imprimir algo luego de imprimir variables"""

"""-------------------------------------------"""

"""Metodo HELP"""
"""Sirve para conocer la documentacion de diferentes metodos de python"""

help(str.center); """Center = cadenas de texto en str"""

