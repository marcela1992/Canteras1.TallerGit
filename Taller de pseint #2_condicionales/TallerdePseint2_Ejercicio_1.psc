Funcion años(my)
	Escribir "Usted es mayor de edad";
Fin Funcion


Proceso TallerdePseint2_Ejercicio1
	definir my como entero;
	Escribir "Ingresa tu edad";
	leer my;
	
	Si my >= 18 Entonces
		años(my);
	SiNo
		Escribir "Usted es menor de edad";
	FinSi
	
	
FinProceso