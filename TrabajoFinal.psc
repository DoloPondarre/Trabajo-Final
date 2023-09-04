Funcion disponible <- cupoDisponible (cupo, idioma, turno)
	Definir disponible Como Logico
	disponible = Falso
	
	Si cupo[idioma, turno] < 20 Entonces
		disponible = Verdadero
		cupo[idioma, turno] =+ 1
		Escribir cupo[idioma, turno]
	FinSi
Fin Funcion

Algoritmo TrabajoFinal
	Definir nombre_y_apellido, email Como Caracter
	Definir idioma, turno Como Entero
	Definir libre Como Logico
	Dimension cupo[2, 2]

	Escribir "Ingrese su nombre y apellido"
	Leer nombre_y_apellido
	Escribir "Ingrese su email"
	Leer email
	
	Para i<-1 Hasta 2 Hacer
		Para j<-1 Hasta 2 Hacer
			cupo[i, j] = 0
		FinPara
	FinPara
	
	Repetir
		Escribir "Seleccione el idioma que desea aprender"
		Escribir "1. Inglés"
		Escribir "2. Francés"
		Escribir "0. Salir"
		
		Leer idioma
		
		Segun idioma Hacer
			1:
				Escribir "Seleccione un turno:"
				Escribir "1- Lunes y Jueves de 10-11hs"
				Escribir "2- Lunes y Jueves de 17-18hs"
				Leer Turno
				libre = cupoDisponible(cupo, 1, turno)
				Si libre Entonces
					Escribir "Se a registrado su inscripción al curso de Inglés, turno ", turno, ". Se le enviará un mail para realizar el pago."
					idioma = 0
				SiNo
					Escribir "Lo sentimos, este curso no tiene más cupos disponibles"
				FinSi
			2:
				Escribir "Seleccione un turno:"
				Escribir "1- Martes y Jueves de 9-10hs"
				Escribir "2- Martes y Viernes de 16-17hs"
				Leer Turno
				libre = cupoDisponible(cupo, 2, turno)
				Si libre Entonces
					Escribir "Se a registrado su inscripción al curso de Francés, turno ", turno, ". Se le enviará un mail para que pueda realizar el pago."
					idioma = 0
				SiNo
					Escribir "Lo sentimos, este curso no tiene más cupos disponibles"
				FinSi
			De Otro Modo:
				Si idioma <> 0 Entonces
					Escribir "Debe seleccionar un idioma del listado"
				FinSi
		Fin Segun
	Hasta Que idioma = 0
	
FinAlgoritmo
