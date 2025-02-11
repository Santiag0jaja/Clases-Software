"""
    Funciones
    
    La función es un bloque de código reutilizable que realiza una tarea 
    específica cuando se llama o se invoca. Las funciones se utilizan 
    para organizar y modularizar el código, lo que facilita la comprensión 
    y el mantenimiento de programas más grandes. Cada función en Python 
    tiene un nombre y puede recibir argumentos (valores de entrada) y devolver 
    un resultado (valores de salida).

    USAR FUNCIONES ES LA CLAVE PARA:

    Programación funcional
    Programación orientada a objetos
    Programación orientada a procedimientos
"""

# función sin parametros y sin retorno
# definición
def imprimir_saludo():
  print("*" * 10)
  print("Hola a tod@s!")
  print("*" * 10)


# llamado de una función
imprimir_saludo()

# función con parametros y sin retorno
def imprimir_saludo_2(nombre:str):
  longitud_ast = len(nombre) + 12
  print("*" * longitud_ast)
  print("Hola a: " + nombre)
  print("*" * longitud_ast)

imprimir_saludo_2("Santiago")

#--------------------------------------------------------------------------------------------------
"""
    función sin parametros y con retorno
    
    Los retornos los utilizamos siempre y cuando queremos utilizar afuera 
    de la función el valor calculado. Las variables definidas dentro de una 
    función, solamente existen dentro de la misma, y a esto lo llamaremos ámbito.
    
    return retornar algo (simple o múltiple)
"""
print("*" * 30)
def encabezado_simple():
    saludo: str = """

    ___      _   _
    | _ \_  _| |_| |_  ___ _ _
    |  _/ || |  _| ' \/ _ \ ' \\
    |_|  \_, |\__|_||_\___/_||_|
        |__/
      Polisura
    """
    
    return saludo

valor_retornado = encabezado_simple()
print(valor_retornado)

# funcion con parametros y con retorno
def encabezado_simple_2(nombre_empresa: str):
    saludo = f"""

    ___      _   _
    | _ \_  _| |_| |_  ___ _ _
    |  _/ || |  _| ' \/ _ \ ' \\
    |_|  \_, |\__|_||_\___/_||_|
        |__/
        {nombre_empresa}
    """

    return saludo

valor_retornado = encabezado_simple_2("Desarrollador Andres")
print(valor_retornado)

# función con parametros y con multiples retornos
def encabezado_simple_3(nombre_empresa: str):
    saludo = f"""

    ___      _   _
    | _ \_  _| |_| |_  ___ _ _
    |  _/ || |  _| ' \/ _ \ ' \\
    |_|  \_, |\__|_||_\___/_||_|
        |__/
        {nombre_empresa}
    """
    print(saludo)
    longitud = len(saludo)
    nombre_mayuscula = nombre_empresa.upper()
    valor_pi = 3.1416

    return valor_pi, longitud, nombre_mayuscula

valor_retornado = encabezado_simple_3("Backend")
print(valor_retornado, type(valor_retornado))
val_1, val_2, val_3 = valor_retornado
print(val_1, val_2, val_3)
#--------------------------------------------------------------------------------------------------
"""
    ARGS = Definir argumentos dinamicos
    Argumentos (varios) -> tupla 
"""
print("*" * 30)
def suma(*mimamamemima):
   print(type(mimamamemima))
   print(mimamamemima)
   print(mimamamemima[::-1])

suma(1,2,3)

#--------------------------------------------------------------------------------------------------
"""
    KARGS: 
    ** -> diccionario 
    definir argumentos dinamicos
"""
print("*" * 30)
def set_config(**data):
   print(type(data))
   print(data)
   print(data.keys())

set_config(nombre= "Pepito", version=2.0, tipo_sangre="o+")

#--------------------------------------------------------------------------------------------------
"""
    Argumentos opcionales: 
"""
print("*" * 30)
def opciones(nombre_app: str = "por defecto", version_app:float = 1.0):
   print(f"nombre_app : {nombre_app}")
   print(f"version_app : {version_app}")

#Ejecucion sin argumentos: 
opciones() 

#Ejecucion con argumentos
#Con argumentos posicionales:
opciones("yoga app")
#Con ambos parametros:
opciones("yoga app", 1.5)

#Llamado por argumentos:
opciones(version_app=0.32)
opciones(version_app=1.5, nombre_app="Santi app")

#--------------------------------------------------------------------------------------------------
"""
    Funciones como objeto: 
"""
def suma_dinamica(*valores: list):
   print(f"longitud --> {len(valores)}")
   print(f"total --> {sum(valores)}")

datos = suma_dinamica
print("Forma original: -----")
suma_dinamica(1,2,3,4)
print("*" * 20)
print("Forma alias: ------")
datos(1,2,3,4,5)

#--------------------------------------------------------------------------------------------------
"""
    Metodos magicos, ya estan definidos 
    El nombre de la funcion real se obtiene con __name__ 
"""
print("*" * 30)
print("Nombre de la funcion de la variable: ", datos.__name__)

#--------------------------------------------------------------------------------------------------
"""
    Funciones anidadas: funcion dentro de otra funcion
"""
print("*" * 30)

#Tipo normal: 
def obtener_tipo_salud(genero: str, nombre: str) -> str:
    def mujer(nombre):
        return f"Es una mujer y su nombre es: {nombre}"
    def hombre(nombre):
        return f"Es un hombre y su nombre es: {nombre}"
    if genero == "F":
        funcion_devolver = mujer
    else:
        funcion_devolver = hombre
    return funcion_devolver(nombre)

resultado = obtener_tipo_salud("F", "Ana")
print(type(resultado))
print(resultado)


#Funciones de tipo embebidas 
#   (solo funcionan en python de 3.10 para abajo)

#--------------------------------------------------------------------------------------------------
"""
    Closure
    sidnifica una funcion que recuerda y utiliza variables de su entorno padre
"""
print("*" * 30)

def semilla(valor_semilla):
   def ejecutador(numero):
      return numero * valor_semilla
   return ejecutador

set_seed = semilla(0.001)
print(type(set_seed))
print(set_seed)
print(set_seed.__name__)

print(set_seed(5))
print(set_seed(1))
print(set_seed(2.5))

