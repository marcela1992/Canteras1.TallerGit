subproceso arbol<-contador()
	definir lcontador, espacio, cespacio, i como entero;
	definir signo, tab como caracter;
FinSubProceso


Proceso Tallerpseint3_ejercicio3
	definir lcontador, espacio, cespacio, i como entero;
	definir signo, tab como caracter;
	
	definir lcontado, espaci, cespaci, j como entero;
	definir sign, ta como caracter;
	
	lcontado<-0;
	sign <-"*";
	espaci<-12;
	cespaci<-1;
	ta<-" ";
	
	lcontador<-0;
	signo <-"*";
	espacio<-12;
	cespacio<-1;
	tab<-" ";
	escribir "              *";
	repetir
	para i<-1 hasta 11 con paso 1 Hacer
		mientras lcontador <=i Hacer
			signo <- concatenar(signo,"*");
			lcontador<-lcontador+1;
		FinMientras
		Mientras cespacio<=espacio hacer
			tab<-concatenar(tab," ");
			cespacio<-cespacio+1;
		FinMientras
		escribir tab, signo;
		lcontador<-lcontador-1;
		espacio<-espacio-1;
		cespacio<-1;
		tab<-" ";
	FinPara
Hasta Que contador <=11;

escribir "             ***";
repetir
	para j<-1 hasta 3 con paso 1 Hacer
		mientras lcontado <=j Hacer
			sign <- concatenar(sign,"*");
			lcontado<-lcontado+1;
		FinMientras
		Mientras cespaci<=espaci hacer
			ta<-concatenar(ta," ");
			cespaci<-cespaci+1;
		FinMientras
		escribir ta, sign;
		lcontado<-lcontado-1;
		espaci<-espaci-1;
		cespaci<-1;
		ta<-" ";
	FinPara
Hasta Que contador <=3;
FinProceso
