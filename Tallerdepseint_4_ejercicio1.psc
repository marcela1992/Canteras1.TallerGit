Proceso Tallerdepseint_4_ejercicio1
	
	definir t, arreglo, i, vr, j como entero;
	escribir "Valores a ingresar según indices pedido";
	escribir "Indice[0] =55"; 
	escribir "Indice[1]= 99";
	escribir "Indice[2]= 11"; 
	escribir "Indice[3]= 56";
	escribir "Indice[4]= 69 ";
	escribir "";
	Dimension arreglo[5];
	para i<-0 hasta 4 con paso 1 Hacer
		escribir "Ingrese el indice indicado para el arreglo ", i, ".";
		leer vr;
		arreglo[i]<-vr;
		
		
	FinPara
	escribir "";
	para j<-0 hasta 4 con paso 1 Hacer
		escribir "Arreglo ", j, "= ", arreglo[j];
	FinPara
FinProceso
