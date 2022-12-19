Proceso Tallerdepseint4_ejercicio5
	definir fila, colum, contador, cont, opc como entero;
	definir matriz como entero;
	dimension matriz[10,10];
	contador<-0;
	fila<-0;
	colum<-0;
	cont<-0;
	por1(contador,cont,matriz,fila,colum];
	
	fila<-1;
	colum<-0;
	cont<-0;
	por2(contador,cont,matriz,fila,colum];
	
	fila<-2;
	colum<-0;
	cont<-0;
	por3(contador,cont,matriz,fila,colum];
	
	fila<-3;
	colum<-0;
	cont<-0;
	por4(contador,cont,matriz,fila,colum];
	
	fila<-4;
	colum<-0;
	cont<-0;
	por5(contador,cont,matriz,fila,colum];
	
	fila<-5;
	colum<-0;
	cont<-0;
	por6(contador,cont,matriz,fila,colum];
	
	fila<-6;
	colum<-0;
	cont<-0;
	por7(contador,cont,matriz,fila,colum];
	
	fila<-7;
	colum<-0;
	cont<-0;
	por8(contador,cont,matriz,fila,colum];
	
	fila<-8;
	colum<-0;
	cont<-0;
	por9(contador,cont,matriz,fila,colum];
	
	fila<-9;
	colum<-0;
	cont<-0;
	por10(contador,cont,matriz,fila,colum];
	
	Repetir
		escribir "|                              COLUMNAS                               ";
		escribir "         |  0  |  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |  9   |";
		escribir "|    | 0 | 1X1 | 2X1 | 3x1 | 4x1 | 5x1 | 6x1 | 7x1 | 8x1 | 9x1 | 10X1 |";
		escribir "|    | 1 | 1X2 | 2X2 | 3x2 | 4x2 | 5x2 | 6x2 | 7x2 | 8x2 | 9x2 | 10X2 |";
		escribir "|  F | 2 | 1X3 | 2X3 | 3x3 | 4x3 | 5x3 | 6x3 | 7x3 | 8x3 | 9x3 | 10x3 |";
		escribir "|  I | 3 | 1X4 | 2X4 | 3x4 | 4x4 | 5x4 | 6x4 | 7x4 | 8x4 | 9x4 | 10X4 |";
		escribir "|  L | 4 | 1X5 | 2X5 | 3x5 | 4x5 | 5x5 | 6x5 | 7x5 | 8x5 | 9x5 | 10X5 |";
		escribir "|  A | 5 | 1X6 | 2X6 | 3x6 | 4x6 | 5x6 | 6x6 | 7x6 | 8x6 | 9x6 | 10x6 |";
		escribir "|  S | 6 | 1X7 | 2X7 | 3x7 | 4x7 | 5x7 | 6x7 | 7x7 | 8x7 | 9x7 | 10x7 |";
		escribir "|    | 7 | 1X8 | 2X8 | 3x8 | 4x8 | 5x8 | 6x8 | 7x8 | 8x8 | 9x8 | 10x8 |";
		escribir "|    | 8 | 1X9 | 2X9 | 3x9 | 4x9 | 5x9 | 6x9 | 7x9 | 8x9 | 9x9 | 10x9 |";
		escribir "|    | 9 | 1X10| 2X10| 3x10| 4x10| 5x10| 6x10| 7x10| 8x10| 9x10| 10x10|";
		escribir "";
		escribir "Por favor ingrese la fila y columna la cual desea ver el resultado";
		escribir "";
		Repetir
			escribir "Ingrese la fila: " sin saltar;
			leer fila;
		hasta que  fila > -1 Y fila < 10
		
		Repetir
			escribir "Ingrese la columna: " sin saltar;
			leer colum;
		Hasta Que colum > -1 Y colum < 10
		
		escribir "";
		escribir "[", fila, ",", colum, "] el resulatdo es: ", matriz[fila,colum];
		escribir "";
		escribir "";
		escribir "Presione enter si desea continuar";
		escribir "Si desea salir preione 4 ";
		leer opc;
		
		Limpiar Pantalla;
		
		si opc=4 Entonces
			escribir "Sistema cerrando";
			escribir "MUCHAS GRACIAS";
		FinSi
		hasta que opc=4
		
FinProceso

subproceso por1(contador,cont,matriz,fila,colum]
	para contador<-0 hasta 9 con paso 1 Hacer
		cont<-cont+1;
		matriz[fila,colum]<-cont*1;
		colum<-colum+1;
	FinPara
FinSubProceso

SubProceso por2(contador,cont,matriz,fila,colum]
	para contador<-0 hasta 9 con paso 1 Hacer
		cont<-cont+1;
		matriz[fila,colum]<-cont*2;
		colum<-colum+1;
	FinPara
FinSubProceso

subproceso  por3(contador,cont,matriz,fila,colum]
	para contador<-0 hasta 9 con paso 1 Hacer
		cont<-cont+1;
		matriz[fila,colum]<-cont*3;
		colum<-colum+1;
	FinPara
FinSubProceso

SubProceso por4(contador,cont,matriz,fila,colum]
	para contador<-0 hasta 5 con paso 1 Hacer
		cont<-cont+1;
		matriz[fila,colum]<-cont*4;
		colum<-colum+1;
	FinPara
FinSubProceso

SubProceso por5(contador,cont,matriz,fila,colum]
	para contador<-0 hasta 9 con paso 1 Hacer
		cont<-cont+1;
		matriz[fila,colum]<-cont*5;
		colum<-colum+1;
	FinPara
FinSubProceso 

SubProceso por6(contador,cont,matriz,fila,colum]
	para contador<-0 hasta 9 con paso 1 Hacer
		cont<-cont+1;
		matriz[fila,colum]<-cont*6;
		colum<-colum+1;
	FinPara
FinSubProceso

SubProceso por7(contador,cont,matriz,fila,colum]
	para contador<-0 hasta 9 con paso 1 Hacer
		cont<-cont+1;
		matriz[fila,colum]<-cont*7;
		colum<-colum+1;
	FinPara
FinSubProceso

subproceso por8(contador,cont,matriz,fila,colum]
	para contador<-0 hasta 9 con paso 1 Hacer
		cont<-cont+1;
		matriz[fila,colum]<-cont*8;
		colum<-colum+1;
	Finpara
FinSubProceso

SubProceso por9(contador,cont,matriz,fila,colum]
	para contador<-0 hasta 9 con paso 1 Hacer
		cont<-cont+1;
		matriz[fila,colum]<-cont*9;
		colum<-colum+1;
	Finpara
FinSubProceso

subproceso por10(contador,cont,matriz,fila,colum]
	para contador<-0 hasta 9 con paso 1 Hacer
		cont<-cont+1;
		matriz[fila,colum]<-cont*10;
		colum<-colum+1;
	Finpara
FinSubProceso
