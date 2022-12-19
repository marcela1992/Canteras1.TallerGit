Funcion imc <- medirimc(peso,altura)
	Definir imc como real;
	imc <- peso/(altura*altura);
Fin Funcion


Proceso TallerPseint2_ejercicio_7
	
	definir peso, altura como real;
	escribir "Ingrese su peso  en kg";
	leer peso;
	escribir "Ingrese su altura en metros";
	leer altura;
	escribir "";
	escribir "Su indice de masa corporar es; ", medirimc(peso,altura);
	
	si (medirimc(peso,altura) < 18.5) Entonces
		escribir "Usted tiene bajo peso.";
	FinSi
	si (medirimc(peso,altura) >= 18.5 Y medirimc(peso,altura) < 25) Entonces
		escribir "Usted se encuentra en su peso normal.";
	FinSi
	si (medirimc(peso,altura) >= 25.Y medirimc(peso,altura) < 30) Entonces
		escribir "Usted se encuentra en sobre peso.";
	finsi
	si (medirimc(peso,altura) > 30) Entonces
		escribir "Usted se encuentra en obecidad.";
	finsi
	
FinProceso
