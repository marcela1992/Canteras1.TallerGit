Proceso TallerPseint_ejercicio_6
	
	Definir n como entero;
	definir opcion como entero;
	definir nombre como caracter;
	definir cc como entero;
	definir vehiculo como caracter;
	definir marca como caracter;
	definir cilindraje como entero;
	definir obser como caracter;
	definir obser1 como caracter;
	
	escribir "selecione una opcion";
	escribir "1. registrar vehiculo";
	escribir "2. salida de vehiculo";
	escribir "3. salir";
	Leer opcion;


	
	Si (opcion =1) Entonces
			escribir "ingreso del vehiculo";
			escribir "";
			escribir "Ingrese nombre";
			leer nombre;
			escribir "ingrese cc";
			leer cc;
			escribir "ingreso vehiculo";
			leer vehiculo;
			escribir "ingrese la marca";
			leer marca;
			escribir "ingrese el cilindraje";
			leer cilindraje;
			escribir "ingrese las observaciones";
			leer obser;
			Escribir "Presione enter para continuar";
			Esperar Tecla;
			limpiar pantalla;
			escribir "Informacion guardada";
			
		FinSi
		
		Si opcion =2 Entonces
			escribir "salida de vehiculo";
			escribir "";
			escribir "ingrese cc";
			leer cc;
			escribir "ingrese las observaciones";
			leer obser1;
			Escribir "Presione enter para continuar";
			Esperar Tecla;
			limpiar pantalla;
			escribir "Informacion guardada";
		Finsi
	
FinProceso
