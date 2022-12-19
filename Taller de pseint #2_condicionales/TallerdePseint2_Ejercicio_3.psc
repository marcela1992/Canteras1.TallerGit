Funcion ingreso(nombre,apellido,edad)
	escribir nombre sin saltar;
	escribir " ", apellido sin saltar;
	escribir ", Edad ", edad, " años, " sin saltar;
Fin Funcion

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
		ingreso(nombre,apellido,edad);
		escribir  " Usted es mayor de edad, por lo tanto puede entrar a la fiesta.";
	SiNo
		ingreso(nombre,apellido,edad);
		Escribir  " Usted es menor de edad, por lo tanto, no puede ingresar a la fiesta, por favor devuélvase a su casa.";
	FinSi
	
	
FinProceso
