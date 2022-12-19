Proceso TallerPseint_ejercicio_7
	
	definir peso, altura , imc como real;
	escribir "Ingrese su peso  en kg";
	leer peso;
	escribir "Ingrese su altura en metros";
	leer altura;
	
	imc <- peso/(altura*altura);
	escribir "";
	escribir "Su indice de masa corporar es ", imc;
	
	si (imc < 18.5) Entonces
		escribir "Usted tiene bajo peso.";
	FinSi
	si (imc >= 18.5 Y imc < 25) Entonces
		escribir "Usted se encuentra en su peso normal.";
	FinSi
	si (imc >= 25.Y imc < 30) Entonces
		escribir "Usted se encuentra en sobre peso.";
	finsi
	si (imc > 30) Entonces
		escribir "Usted se encuentra en obecidad.";
	finsi
	
FinProceso
