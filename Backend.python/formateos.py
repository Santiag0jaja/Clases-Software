"""
    Formateos:
    Proceso de dar formato o estructura a una cadena de texto; para ver los datos de manera legible 
    y estetica
"""

#--------------------------------------------------------------------------------------------------
"""
    Formato Sencillo (Mas utilizado y comun en Python 3.0)   
    Notas | igual numero de llaves = igual numero de variables 
"""
print("*" * 50)

#   Simple 
help(str.format)
print("*" * 50)

pi: float = 3.14159265
nombre: str = "demo.python.format"
mensaje = "el nombre es: {}, el valor de pi es: {}"
print(mensaje.format(nombre, pi))
print("*" * 50)

#   Por index
print("El nombre es: {1}, el valor de pi es: {0}".format(pi, nombre))
print("*" * 50)

#    De manera Matricial
lista1 = [111, "pepito", []]
lista2 = [True, False, pi]
print("El nombre es: {0[1]}, el valor de pi es: {1[2]}".format(lista1, lista2))
print("*" * 50)

#   Kwargs o kargs
print("Edad: {age}, nombre: {name}".format(age=16, name="santiago"))
print("*" * 50)

#    Formato con diccionarios
persona = {
    "nombre": "Ana",
    "edad": 25,
    "ciudad": "Madrid",
    "es_estudiante": True
}

print("Nombre:", persona["nombre"])
print("Edad:", persona["edad"])
print("Ciudad:", persona["ciudad"])
print("Es estudiante:", persona["es_estudiante"])
print("*" * 50)


#--------------------------------------------------------------------------------------------------
"""
    Funciones avanzadas | Formateo de datos 
    ________________________
    < Delimitacion izquierda
    > Delimitacion derecha 
    ^ Delimitacion centrada
    + Asignacion de signo
"""
print("*" * 50)

for valor in range(3,-3,-1):
    print("{0:+}".format(valor))

# Segmentacion o la cantidad de posiciones que se muestra en el elemento
print("*" * 30)
print(nombre)
print("{:.4}".format(nombre))

# Estandarización de longitudes
print("*" * 30)
numeros: list = [10, 100, 1000, 10000]
for numero in numeros:
  print("{:10} es múltiplo de 10".format(numero))

# Alineación izquierda
print("*" * 30)
for numero in numeros:
  print("{:<{cantidad}} es múltiplo de 10".format(numero, cantidad=10))
  
# centrado
print("*" * 30)
for numero in numeros:
  print("{:^{cantidad}} es múltiplo de 10".format(numero, cantidad=10))

# derecha
for numero in numeros:
  print("{:>{cantidad}} es múltiplo de 10".format(numero, cantidad=10))
  
# Relleno hacia la derecha
for numero in numeros:
  print("{:0>{cantidad}} es múltiplo de 10".format(numero, cantidad=10))
print("*" * 30)
for numero in numeros:
  print("{:!>{cantidad}} es múltiplo de 10".format(numero, cantidad=10))
  
  
# Formateo de decimales
tax = 3
taxny = 0.7
taxcolombia = 20

print("formato tax tipo de dato      : {:f}".format(tax))
print("formato tax decimales         : {:.3f}".format(taxny))
print("formato tax decimales         : {:.2f}".format(taxcolombia))
print("formato tax decimales         : {:.5f}".format(pi))
print("formato tax tipo de dato      : {:.2}".format(pi))

"""
    Formato Moderno: muy utilizado en las nuevas verciones de Python
    Funciona con variables declaradas
"""
print(f"el nombre es: {nombre}, el valor de pi es: {pi}")
print(f"el nombre es: {nombre}, el valor de pi es: {pi:.2f}")
print(f"el nombre es: {len(nombre)}, el valor de pi es: {pi:.2f}")
print(f"el nombre es: {str.upper(nombre)[::-1]}, el valor de pi es: {pi:.2f}")