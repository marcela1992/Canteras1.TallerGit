Proceso Tallerdepseint4_ejercicio2
	definir num, i, n como entero;
	dimension num[20];
	
	
	para i<-1 hasta 20 con paso 1 Hacer
		escribir "ingrese el numero ", i;
		leer n;
		
		si n mod 2==0 Entonces
			escribir "par", n;
		FinSi
		
		si n mod 2==1 Entonces
			i<-0;
			i<-i-1;
			escribir "impar", n;
		FinSi
	finpara
	
FinProceso

