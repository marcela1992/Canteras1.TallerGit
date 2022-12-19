Proceso TallerPseint_ejercicio_8
	
	definir limite, i, j, k, entrada, ingresado, v, ventas, p como entero;
	definir bandera, bandera2 como logico;
	
	limite<-20;
	i<-0;
	bandera<-Falso;
	bandera2<-Falso;
	entrada<-0;
	ingresado<-0;
	ventas<-0;
	j<-0;
	k<-0;
	p<-0;
	v<-0;
	
	Dimension cc(20);
	Dimension nombre(20);
	Dimension tipotorta(20);
	Dimension porciones(20);
	Dimension decoracion(20);

	Dimension cc1(20);
	Dimension tipotorta1(20);
	Dimension porciones1(20);
	Dimension decoracion1(20);
	definir nombre, tipotorta, porciones, decoracion, cc1, tipotorta1, porciones1, decoracion1, busqueda, cc como caracter;
	busqueda<-"";
	
	inicializar(cc,nombre,tipotorta,porciones,decoracion,cc1,tipotorta1,porciones1,decoracion1);
	repetir 
		escribir "opciones del sistema";
		escribir "1. Registro de pedido";
		escribir "2. Busca de pedido";
		escribir "3. Registrar venta";
		escribir "4. Ventas del dia";
		escribir sin saltar ""; leer entrada;
		
		segun entrada hacer
			1:
				para p<-0 con paso limite-1 hasta 1 hacer
					si cc(p) = cc(i) Entonces
							bandera2<-Verdadero;
							
						FinSi
					FinPara
					
					si i<20 o ingresado > 0 Entonces
						Guardarpedido(cc,nombre,tipotorta,porciones,decoracion,cc1,tipotorta1,porciones1,decoracion1,i);
						ingresado<-0;
						i<-i+1;
						escribir "registro existente";
					
					FinSi
					

			2:
				escribir "cedula = ", i;
				verpedido(cc,nombre,tipotorta,porciones,decoracion,cc1,tipotorta1,porciones1,decoracion1,i);
			3:	
				limpiar pantalla;
					para p<-0 hasta limite-1 con paso 1 hacer
						si cc1(p)=cc1(i) Entonces
							bandera2<-Verdadero;
							p<-limite;
						FinSi
					FinPara
					
					si bandera Entonces
						Guardarpedido1(cc1,tipotorta1,porciones1,decoracion1,cc,nombre,tipotorta,porciones,decoracion,i);
						escribir "registro existente";
						
					SiNo
					limpiar pantalla;
					escribir "ya llego al limte";
				FinSi
				
			4:
				limpiar pantalla;
				i<-0;
				si ingresado > 0 Entonces
					para i<-0 hasta limite-1 con paso 1 Hacer
						si nombre(i)<>"" Entonces
							escribir "Id", i+1, " cc ", cc1(i), " tipo de torta ", tipotorta1(i),  " porciones ", porciones1(i), " decoracion ", decoracion1(i) ;
						FinSi
					FinPara
				SiNo
					escribir "No hay registro en el sistema";
				FinSi
			De Otro Modo:
				escribir "Opcion errada";
		FinSegun
		escribir "deseas continuar";
		escribir "1. si";
		escribir "2. no";
		leer entrada;
		si entrada == 1 Entonces
			bandera<-verdadero;
			limpiar pantalla;
		SiNo
			bandera<-falso;
			limpiar pantalla;
			escribir "hasta pronto";
		FinSi
		hasta que bandera == falso;
		
FinProceso

SubProceso inicializar(cc,nombre,tipotorta,porciones,decoracion,cc1,tipotorta1,porciones1,decoracion1)
	definir k,limite como entero;
	limite<-20;
	k<-0;
	para k<-0 hasta limite-1 con paso 1 Hacer
		cc(k)<-"";
		nombre(k)<-"";
		tipotorta(k)<-"";
		porciones(k)<-"";
		decoracion(k)<-"";
	FinPara
FinSubProceso

SubProceso Guardarpedido(cc,nombre,tipotorta,porciones,decoracion,cc1,tipotorta1,porciones1,decoracion1,i)
	definir ingresado, limite como entero;
	ingresado<-0;
	limite<-20;
	
	i<-ingresado;
	si i<>limite Entonces
		escribir sin saltar "cc";
		leer cc(i);
		escribir sin saltar "nombre";
		leer nombre(i);
		escribir sin saltar "Tipo de torta";
		leer tipotorta(i);
		escribir sin saltar "Escriba la cantidad de porciones";
		leer porciones(i);
		escribir sin saltar "decoracion";
		leer decoracion(i);
	FinSi
	
FinSubProceso

SubProceso verpedido(cc,nombre,tipotorta,porciones,decoracion,cc1,tipotorta1,porciones1,decoracion1,i)
	
	definir p como entero;
	p<-0;
	para p<-0 hasta 1 Hacer
		si cc(p) <> "0" Entonces
			escribir tipotorta(p);
			escribir porciones(p);
			escribir decoracion(p);
		FinSi
	FinPara
FinSubProceso

subproceso Guardarpedido1(cc1,tipotorta1,porciones1,decoracion1,cc,nombre,tipotorta,porciones,decoracion,i)
	si i<>limite Entonces
		escribir sin saltar "cc";
		leer cc1(i);
		escribir sin saltar "Tipo de torta";
		leer tipotorta1(i);
		escribir sin saltar "Escriba la cantidad de porciones";
		leer porciones1(i);
		escribir sin saltar "decoracion";
		leer decoracion1(i);
	FinSi
FinSubProceso

