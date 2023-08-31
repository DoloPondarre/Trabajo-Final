Funcion disponible <- cupoDisponible (cupo, idioma)
	Definir disponible Como Entero
	disponible = 0
	
	Para i<-1 Hasta 20 Con Paso 1 Hacer
		Si cupo[idioma, i] = "" | disponible <> 0 Entonces
			disponible = i
		FinSi
	Fin Para
Fin Funcion

Algoritmo TrabajoFinal
	Definir nombre_y_apellido, email Como Caracter
	Definir idioma, turno, libre Como Entero
	Dimension cupo[2, 20]

	Escribir "Ingrese su nombre y apellido"
	Leer nombre_y_apellido
	Escribir "Ingrese su email"
	Leer email
	
	Repetir
		Escribir "Seleccione el idioma que desea aprender"
		Escribir "1. Ingl�s -- Horario: Lunes y Jueves de 10-11hs"
		Escribir "2. Franc�s -- Horario: Martes y Viernes de 16-17hs"
		Escribir "0. Salir"
		
		Leer idioma
		
		Segun idioma Hacer
			1:
				libre = cupoDisponible(cupo, 1)
				Si libre <> 0 Entonces
					Escribir "Se a registrado su inscripci�n al curso de Ingl�s. Se le enviar� un mail para realizar el pago."
					idioma = 0
				SiNo
					Escribir "Lo sentimos, este curso no tiene m�s cupos disponibles"
				FinSi
			2:
				libre = cupoDisponible(cupo, 2)
				Si libre <> 0 Entonces
					Escribir "Se a registrado su inscripci�n al curso de Franc�s. Se le enviar� un mail para que pueda realizar el pago."
					idioma = 0
				SiNo
					Escribir "Lo sentimos, este curso no tiene m�s cupos disponibles"
				FinSi
			De Otro Modo:
				Si idioma <> 0 Entonces
					Escribir "Debe seleccionar un idioma del listado"
				FinSi
		Fin Segun
	Hasta Que idioma = 0
	
FinAlgoritmo
