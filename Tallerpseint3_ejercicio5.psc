Proceso Tallerpseint3_ejercicio5
	
	Definir resp, nombre como caracter;
	definir opc como entero;
	
	Repetir
		Escribir "Selecione una opcion";
		escribir "1: Captura nombre";
		escribir "2: Saludar persona";
		escribir "3: Salir del sistema";
		leer opc;
		
		segun opc hacer
			1:
					Escribir "Ingrese el nombre";
					leer nombre;
			2:
					Escribir "Hola ", nombre;
			3:
				escribir sin saltar "";
			de otro modo 
				escribir "Opcion no es valida";
		FinSegun
		escribir "Desea continuar si o no";
		leer resp;
		Escribir "";
		
	Hasta Que resp = "no" o resp = "No"
	
FinProceso
