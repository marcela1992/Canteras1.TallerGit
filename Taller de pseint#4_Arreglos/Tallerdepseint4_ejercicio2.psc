Proceso Tallerdepseint4_ejercicio2
	definir num, i, n, cpar, cimpar como entero;
	dimension num[20];
	cpar<-0;
	cimpar<-0;
	
	para i<-1 hasta 20 con paso 1 Hacer
		escribir "ingrese el numero ", i;
		leer n;
		
		si n mod 2==0 Entonces
			vercpar(cpar,n);
			
		FinSi
		
		si n mod 2==1 Entonces
			i<-0;
			i<-i-1;
			vercimpa(cimpar,n);
			
		FinSi
	finpara
	
FinProceso

subproceso vercpar(cpar,n)
	cpar<-cpar+1;
	escribir "par", n;
FinSubProceso

subproceso vercimpa(cimpar,n)
	cimpar<-cimpar+1;
	escribir"impar", n;
FinSubProceso


