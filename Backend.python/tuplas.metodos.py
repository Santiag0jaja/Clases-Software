""" Metodos de tuplas y sus usos """
tupla: tuple = (1,2,3)
print(type(tuple), tupla)
""" Error al ingresar nuevo elemento """
print(tupla[::-1])

""" Escenario para usar tuplas"""
tipo_documento: list = ["CC", "TI", "CE", "PASP"]
print("antes: ", type(tipo_documento), tipo_documento)
tipo_documento: tuple = tuple(tipo_documento)
print("despues: ", type(tipo_documento), tipo_documento)

print(len(tipo_documento))
