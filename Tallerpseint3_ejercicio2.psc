SubProceso torre(lfila,lcolumna)
	Definir fila, columna, i como real;
	columna <- columna+1;
FinSubProceso

Proceso Tallerpseint3_ejercicio2
	Definir fila, columna, i como real;
	fila<-1;
	i<-9;
	Mientras fila <= 10 hacer
		columna<-1;
		Mientras columna < 10 Hacer
			si columna = i entonces
				Escribir "*" sin saltar;
				i<-i-1;
			sino 
				si columna >i Entonces
					escribir "*" sin saltar;
				SiNo
					escribir " " sin saltar;
				FinSi
			FinSi
			
			columna <- columna+1;
			
		FinMientras
		Escribir  "";
		fila<-fila+1;
	FinMientras
	
FinProceso
