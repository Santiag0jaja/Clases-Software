"""
    Pilares de POO (Programacion Orientada a Objetos)
        Encapsulamiento, herencia, polimorfismo y abstraccion
"""

class AccountBank:
    bank: str = "CursoBackend"
    _level: int = 3
    __taxes: float = 0.34

accountBank = AccountBank()
print(accountBank.bank)
print(accountBank._level)

# Error por encapsulamiento, variable privada
#   print(accountBank.__taxes)

"""
    La herencia permite que una clase herede atributos y metodos de otra clase
        - Polimorfismo
        - Programacion avanzada 
        -------------------------------------------------------------
        class NombreClase(ClaseHereder1, ClaseHereder2, ClaseHereder......... n):
            pass
"""

class Persona:
    id: str = "NIDF"
    nombre: str = "Duber"
    edad: int = ""


#   No requerido, redundante 
# class Persona(object):
#    pass


#   Herencia elemental o simple en Python 
#       La herencia permite crear una nueva clase a partir de una clase existente, heredando sus 
#       atributos y métodos. Esto promueve la reutilización de código y la creación de jerarquías de clases.


class Animal:
    def __init__(self, nombre):
        self.nombre = nombre

    def sonido(self):
        return "Sonido genérico"

class Perro(Animal):
    def sonido(self):
        return "Guau!"

animal = Animal("Genérico")
perro = Perro("Fido")

print(animal.sonido())  # Salida: Sonido genérico
print(perro.sonido())   # Salida: Guau!

#   Polimorfismo 
#       El polimorfismo permite que objetos de diferentes clases puedan ser tratados como 
#       si fueran de la misma clase, siempre que compartan una interfaz común (por ejemplo, métodos 
#       con el mismo nombre). Esto facilita la reutilización de código y la flexibilidad en el diseño.

class Perro:
    def sonido(self):
        return "Guau!"

class Gato:
    def sonido(self):
        return "Miau!"

def hacer_sonar(animal):
    print(animal.sonido())

perro = Perro()
gato = Gato()

hacer_sonar(perro)  # Salida: Guau!
hacer_sonar(gato)   # Salida: Miau!

#   Abstraccion
#       La abstracción consiste en ocultar la complejidad interna y mostrar 
#       solo lo esencial de un objeto. En Python, se logra mediante clases abstractas 
#       (usando el módulo abc) o simplemente diseñando clases que exponen solo lo necesario.

from abc import ABC, abstractmethod

class Figura(ABC):
    @abstractmethod
    def area(self):
        pass

class Cuadrado(Figura):
    def __init__(self, lado):
        self.lado = lado

    def area(self):
        return self.lado ** 2

cuadrado = Cuadrado(5)
print(cuadrado.area())  # Salida: 25

#           Figura es una clase abstracta que define un método abstracto area.
#           Cuadrado implementa el método area, proporcionando la funcionalidad concreta.


