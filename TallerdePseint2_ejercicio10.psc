Proceso TallerdePseint2_Ejercicio10
	
	definir nombre como caracter;
	definir saldo como real;
	definir monto como real;
	
	escribir         "                 Bienvenido a su BANCO FIEL";
	escribir" ";
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
				saldo<-saldo+monto;
				escribir "Su dinero fue ingresado con exito.";
				escribir "Se�or ", nombre, " Su saldo actual es:  $ ", saldo;
			SiNo
				escribir "cantidad no v�lida";
			FinSi
			
		2:
			escribir "Digite la cantidad a retirar";
			leer monto;
			si monto < saldo Entonces
				saldo<-saldo-monto;
				escribir "Su retiro fue exitoso";
				escribir "Se�or ", nombre, " Su nuevo saldo es $", saldo;
			FinSi
		3:
			escribir "Se�or ", nombre, " Su saldo actual es de: $", saldo;
			De otro modo 
			escribir "Opci�n no v�lida";
	FinSegun
	
FinProceso
