Funcion r <- retiro(saldo,monto)
	definir r como real;
	r<-saldo-monto;
Fin Funcion

Funcion i<-ingreso(saldo,monto)
	definir i como real;
	i<-saldo+monto;
Fin Funcion



Proceso TallerdePseint2_Ejercicio10
	
	definir nombre como caracter;
	definir saldo como real;
	definir monto como real;
	
	escribir "Nombre de usuario";
	leer nombre;
	escribir "Saldo";
	leer saldo;
	
	definir opcion como entero;
	escribir "Bienvenido, Seleccione una opcion";
	escribir "1. Ingresar dinero";
	escribir "2. Retirar dinero";
	escribir "3. Consultar saldo";
	leer opcion;
	
	segun opcion hacer
		1:
			escribir "Digite la cantidad a ingresar.";
			leer monto;
			si monto > 0 entonces 
				escribir "Su dinero fue ingresado con exito.";
				escribir "Señor ", nombre, " Su saldo actual es:  $ ", ingreso(saldo,monto);
			SiNo
				escribir "cantidad no válida";
			FinSi
			
		2:
			escribir "Digite la cantidad a retirar";
			leer monto;
			si monto < saldo Entonces
				escribir "Su retiro fue exitoso";
				escribir "Señor ", nombre, " Su nuevo saldo es $", retiro(saldo,monto);
			FinSi
		3:
			escribir "Señor ", nombre, " Su saldo actual es de: $", saldo;
			De otro modo 
			escribir "Opción no válida";
	FinSegun
	
FinProceso
