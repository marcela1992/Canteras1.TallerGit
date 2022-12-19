
SubProceso taller<-sumar()
	definir taller,total como entero;
	taller<-total;	
FinSubProceso

	Proceso TallerPseint_ejercicio_5
	definir a,b,x Como Entero;
	definir total como real;
	definir nombre Como Caracter;
	a <- 0;
	total <- 0;
	x <- 0;
	
	escribir "Ingrese su nombre";
	leer nombre;
	mientras a <> 3 hacer
		escribir "1, Ver Productos";
		escribir "2, Generar Factura";
		escribir "3, Consultar precio";
		escribir "4, Devolucion de producto";
		escribir "5, Salir";
		leer a;
		
		si a == 1 entonces
			b <- 0;
		mientras b <> 4 Hacer
			escribir "1: Acetaminofen";
			escribir "2: Dolex";
			escribir "3: Ibuprofeno";
			escribir "4: salir";
			leer b;
			Limpiar pantalla;
			
			si b==1 Entonces
				total<-total+500;
			sino 
				si b == 2 entonces 
					total <- total + 1200;
				SiNo
					si b == 3 entonces 
						total <- total + 600;
					FinSi
				FinSi
			FinSi
		FinMientras
	sino
		si a == 2 Entonces
			Limpiar Pantalla;
			escribir nombre, " El total a pagar es: ", total;
		FinSi
		
		si a == 4 Entonces
			Escribir "Selecione el producto que desea devolver";
			escribir "1: Acetaminofen";
			escribir "2:  Dolex";
			escribir "3:  Ibuprofeno";
			escribir "";
			escribir "oprima 4 para salir";
			escribir "salir";
			leer b;
			escribir "Devolucion exitosa";
			escribir "";
		FinSi
		
		si a == 3 Entonces
			escribir " Acetaminofen, 500";
			escribir " Dolex, 1200";
			escribir " Ibuprofeno, 600";
			escribir "";
			escribir "oprima 4 si desea salir";
			escribir "salir";
			leer b;
			escribir "Gracias";
			escribir "";
		finsi
		finsi
	FinMientras
		
FinProceso
