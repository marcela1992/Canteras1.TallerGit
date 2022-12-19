Proceso TallerdePseint2_Ejercicio_3
	
	Definir nombre como caracter;
	Definir apellido como caracter;
	Definir edad como Entero;
	
	Escribir "Ingrese su nombre";
	leer nombre;
	
	Escribir "Ingrese su apellido";
	leer apellido;
	
	Escribir "Ingresa tu edad";
	leer edad;
	
	Si edad >= 18 Entonces
		Escribir nombre, " ", apellido, " Usted es mayor de edad, por lo tanto puede entrar a la fiesta.";
	SiNo
		Escribir nombre, " ", apellido, " Usted es menor de edad, por lo tanto, no puede ingresar a la fiesta, por favor devuélvase a su casa.";
	FinSi
	
	
FinProceso
