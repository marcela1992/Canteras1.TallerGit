Proceso Tallerdepseint4_ejercicio3
	
	definir x, i, cont, primo como entero;
	dimension primo[1000];
	
	escribir "Los numeros primos son: ";
	para i<-1 hasta 1000 Hacer
		x<-1;
		cont<-0;
		
		Mientras x<=i hacer
			si i mod x == 0 Entonces
				cont<-cont+1;
			FinSi
			x<-x+1;
		FinMientras
		
		si cont == 2 Entonces
			verprimos(i);
		FinSi
	FinPara
FinProceso

subproceso verprimos(i)
	escribir i;
FinSubProceso
