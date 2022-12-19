SubProceso resultado <- multiplique(tabla, i)
	definir resultado como entero;
	resultado<-tabla*i;
FinSubProceso

Proceso Tallerpseint3_ejercicio4
	
	Definir tabla,resultado,i,lnumero como entero;
	Escribir ("Ingrese la tabla que desea imprimir");
	Leer tabla;
	Escribir "";
	Escribir "la tabla del ", tabla, " es:";
	
	Para i<-1 hasta 10 con paso 1 Hacer
		resultado<-tabla*i;
		Escribir tabla," X ",i," = ",resultado;
	FinPara
	
FinProceso

