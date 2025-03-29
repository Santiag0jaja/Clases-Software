"""
    Manejo de excepciones en Python 
        Incluso si una declaracion o expresion es sintacticamente correcta, puede generar
        un error cuando se ejecuta. Estos se llaman excepciones y no son incondicionalmente fatales
"""

#    Modo simple 

try:
    print("999")
    1/0
except:
    print("No se puede dividir por cero")
    print("otras acciones")

print("Todo esta bien, me protegio el `try - except`")

print("----" * 20)

try:
    print("999")
    #1/0
    raise 
except ZeroDivisionError as ex:
    print(f"excepcion especfica: '{ex}'")
    print("otras acciones")
except Exception as ex:
    print(f"El error que se presentó es '{ex}'")
    print("Otras acciones")

