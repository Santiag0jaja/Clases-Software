"""
    Fechas en Python
"""
from datetime import date, datetime, timedelta

# Today
fecha = datetime.today()
print(type(fecha), fecha)
print(fecha)

# Now 
print("-----" * 20)
print(datetime.now())

# Year 
print("-----" * 20)
fecha_2 = datetime.now()
print(fecha_2.year)

# Month 
print("-----" * 20)
print(fecha_2.month)

# Day 
print("-----" * 20)
print(fecha_2.day)

# Hour 
print("-----" * 20)
print(fecha_2.hour)

# Minute
print("-----" * 20)
print(fecha_2.minute)

# Second
print("-----" * 20)
print(fecha_2.second)

# Microsecond 
print("-----" * 20)
print(fecha_2.microsecond)

# UTC
print("-----" * 20)
print(fecha_2)
print(dir(fecha_2))


"""
    Weekday 
        Lunes:0
        Martes: 1
        Miercoles 2
        Jueves 3
        Viernes 4
        Sabado 5
        Domingo 6
"""
print("----" * 20)
print(fecha_2.weekday())
list_dias: list = ["lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo"]

print(list_dias[fecha_2.weekday()])


"""
    isoweekday
        Lunes:1
        Martes: 2
        Miercoles 3
        Jueves 4
        Viernes 5
        Sabado 6
        Domingo 7
"""
print("-----" * 20)
print(fecha_2.isoweekday())


"""
    FORMATOS DE FECHA STRFTIME
    
    %a	Nombre local abreviado de día de semana
    %A	Nombre local completo de día de semana
    %b	Nombre local abreviado de mes
    %B	Nombre local completo de mes
    %c	Representación local de fecha y hora
    %d	Día de mes [01,31]
    %H	Hora (horario 24 horas) [00,23]
    %I	Hora (horario 12 horas) [01,12]
    %j	Número de día del año [001,366]
    %m	Mes [01,12]
    %M	Minuto [00,59]
    %S	Segundo
    %U	Nº semana del año. Se considera al Domingo como primer día de semana [00,53]
    %w	Establece el primer día de semana [0(Domingo),1(Lunes)... 6].
    %W	Nº semana del año (Se considera al Lunes como primer día de semana) [00,53]
    %x	Fecha local
    %X	Hora local
    %y	Año en formato corto [00,99]
    %Y	Año en formato largo
    %Z	Nombre de Zona Horaria
"""
# DD/MM/YYYY HH:MM:SS
# 11/02/2025 18:35:51
fecha_formateada = fecha_2.strftime("%d/%m/%Y %H:%M:%S")
print(fecha_formateada)
print(type(fecha_formateada))

# FORMATOS DE FECHA STRPTIME
str_a_date = datetime.strptime("11/02/2025 18:35:51", "%d/%m/%Y %H:%M:%S")
print(str_a_date)
print(type(str_a_date))
print(str_a_date.year)

# ISOCALENDAR
print(str_a_date.isocalendar())

# TIMEDELTA
print("-" * 50)
print(str_a_date)
print("incrementando días  +   ",str_a_date + timedelta(days=5))
print("incrementando días  -   ",str_a_date + timedelta(days=-5))
print("incrementando segundos  ",str_a_date + timedelta(seconds=18000))
print("incrementando microseg.  ",str_a_date + timedelta(microseconds=1000000))

# ZONA HORARIA TIMEZONE
print(str_a_date.astimezone().tzinfo)


