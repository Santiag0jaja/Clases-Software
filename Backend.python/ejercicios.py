"""
    Ejercicios y pruebas
"""

cadena_str: str = "El curso de Backend con Python es una belleza!!"

print(cadena_str[12:19])

mensaje: str = 'Este es un mensaje en comillas simples'
print(mensaje)

dict = {
    "cedula": "123456789",
    "datos personales": {
        "nombres": "Juan",
        "apellidos": "Pérez",
        "estado civil": "Soltero",
        "fecha nacimiento": "1990-01-01",
        "genero": "Masculino",
        "tipo sangre": {
            "rh": "+",
            "grupo_sanguineo": "O"
        }
    },
    "datos de contacto": {
        "telefono": "1234567",
        "email": "juan@example.com",
        "fax": "9876543",
        "celular": "5555555",
        "fijo": "4444444",
        "direcciones": [
            {
                "direccion": "Calle Falsa 123",
                "estado": "Activo"
            }
        ]
    }
}

# Acceder a la dirección dentro de "datos de contacto"
direccion = dict["datos de contacto"]["direcciones"][0]["direccion"]
print(direccion)  # Salida: Calle Falsa 123

fine: bool = 1
print(fine)
