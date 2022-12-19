Funcion trapecio <- hallarareatrapecio(a,b,h)
	definir trapecio como real;
	trapecio<-(a+b)*h/2;
Fin Funcion

Funcion triangulo <- hallarareatriangulo(a,h)
	definir triangulo como real;
	triangulo<-(a*h)/2;
Fin Funcion

Funcion rectangulo <- hallararearectangulo(a,h)
	definir rectangulo como real;
	rectangulo<-a*h;
Fin Funcion

Proceso TallerPseint_ejercicio_9
	
	definir n como entero;
	definir a, b, h como real;
	n<-0;
	mientras n <> 4 Hacer
		escribir "Elija una opción";
		escribir "1: Hallar area de un rectangulo";
		escribir "2: Hallar area de un triangulo";
		escribir "3: Hallar area de un trapecio";
		escribir "4: salir";
		leer n;
		si n == 1 Entonces
			escribir "Ingrese la base";
			leer a;
			escribir "Ingrese la altura";
			leer h;
			escribir "El area del rectangulo es ", hallararearectangulo(a,h);
			escribir "";
		SiNo
			si n== 2 Entonces
				escribir "Ingrese la base";
				leer a;
				escribir "Ingrese la altura";
				leer h;
				escribir "El area del triangulo es ",hallarareatriangulo(a,h);
				escribir "";
			SiNo
				si n== 3 Entonces
					escribir "Ingrese la primera base base";
					leer a;
					escribir "Ingrese la segunda base";
					leer b;
					escribir "Ingrese la altura";
					leer h;
					escribir "El area del trapecio es ",hallarareatrapecio(a,b,h);
					escribir "";
				FinSi
				
				si n == 4 Entonces
					escribir "          ¡GRACIAS POR USAR EL PROGRAMA!";
					Escribir "          Presione enter para continuar";
					Esperar Tecla;
				FinSi
				
			FinSi
			
		FinSi
	FinMientras
	
FinProceso
