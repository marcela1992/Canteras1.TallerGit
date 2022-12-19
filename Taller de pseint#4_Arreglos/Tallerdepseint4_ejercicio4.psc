Proceso Tallerdepseint4_ejercicio4
	definir fila, columna, colum como entero;
	definir matriz como caracter;
	dimension matriz[4,5];
	definir matriz1 como caracter;
	dimension matriz1[4,5];
	matriz[0,0]<-" 01";
	matriz[0,1]<-" 02";
	matriz[0,2]<-" 03";
	matriz[0,3]<-" 04";
	matriz[0,4]<-" 05";
	matriz[1,0]<-" 06";
	matriz[1,1]<-" 07";
	matriz[1,2]<-" 08";
	matriz[1,3]<-" 09";
	matriz[1,4]<-" 10";
	matriz[2,0]<-" 11";
	matriz[2,1]<-" 12";
	matriz[2,2]<-" 13";
	matriz[2,3]<-" 14";
	matriz[2,4]<-" 15";
	matriz[3,0]<-" 16";
	matriz[3,1]<-" 17";
	matriz[3,2]<-" 18";
	matriz[3,3]<-" 19";
	matriz[3,4]<-" 20";
	
	para fila<-0 hasta 3 Hacer
		columna<-0;
		colum<-0;
		matri(fila,columna,matriz1,matriz,colum);
	FinPara

	
	escribir "    Matriz 1";
	escribir "";
	para fila<-0 hasta 3 Hacer
		para columna<-0 hasta 4 Hacer
			escribir matriz1(fila,columna), sin saltar "";
		FinPara
		escribir "";
	FinPara
	escribir "";
	escribir "   Matriz 2";
	escribir "";
	para fila<-0 hasta 3 Hacer
		para columna<-0 hasta 4 Hacer
			escribir matriz1(fila,columna), sin saltar "";
		FinPara
		escribir "";
	FinPara	
FinProceso

SubProceso matri(fila,columna,matriz1,matriz,colum)
	si fila MOD 2 ==0 entonces
		para columna<-0 hasta 4 con paso 1 Hacer
			matriz1(fila,columna)<-matriz(fila,columna);
		FinPara
	sino
		colum<-4;
		para columna<-0 hasta 4 con paso 1 Hacer
			matriz1(fila,columna)<-matriz(fila,colum);
			colum<-colum-1;
		FinPara
	FinSi
FinSubProceso

