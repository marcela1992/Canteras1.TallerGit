Proceso TallerPseint_ejercicio_8
	
	definir limite, i, j, k, entrada, ingresados, v, ventas, p como entero;
	definir bandera, bandera2 como logico;
	
	limite<-20;
	i<-0;
	bandera<-Falso;
	bandera2<-Falso;
	entrada<-0;
	ingresados<-0;
	ventas<-0;
	j<-0;
	k<-0;
	p<-0;
	v<-0;
	
	Dimension cc(limite);
	Dimension nombre(limite);
	Dimension tipotorta(limite);
	Dimension porciones(limite);
	Dimension decoracion(limite);

	Dimension cc1(limite);
	Dimension tipotorta1(limite);
	Dimension porciones1(limite);
	Dimension decoracion1(limite);
	definir nombre, tipotorta, porciones, decoracion, cc1, tipotorta1, porciones1, decoracion1, busqueda, cc como caracter;
	busqueda<-"";
	
	para k<-0 hasta limite-1 con paso 1 Hacer
		cc(k)<-"";
		nombre(k)<-"";
		tipotorta(k)<-"";
		porciones(k)<-"";
		decoracion(k)<-"";
	FinPara
	
	repetir 
		escribir "opciones del sistema";
		escribir "1. Registro de pedido";
		escribir "2. Busca de pedido";
		escribir "3. Registrar venta";
		escribir "4. Ventas del dia";
		escribir sin saltar ""; leer entrada;
		
		segun entrada hacer
			1:
				i<-ingresados;
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
					
					
					para p<-0 hasta limite-1 con paso 1 hacer
						si cc(p)=cc(i) Entonces
							bandera2<-Verdadero;
							p<-limite;
						FinSi
					FinPara
					
					si bandera Entonces
						nombre(i)<-"";
						tipotorta(i)<-"";
						cc(i)<-"";
						decoracion(i)<-"";
						porciones(i)<-"";
						escribir "registro existente";
					SiNo
						limpiar pantalla;
						i<-i+1;
						escribir "registro existente";
						ingresados<-ingresados+1;
					FinSi
				SiNo
					limpiar pantalla;
					escribir "ya llego al limte";
				FinSi
			2:
				limpiar pantalla;
				si ingresados > 0 Entonces
					escribir sin saltar "ingrese cc";
					leer busqueda;
					para j<-0 hasta limite-1 con paso 1  Hacer
						si cc(j)==busqueda Entonces
							escribir "datos encontrados";
							escribir "Id", j+1,  "cc ", cc(j)," nombre ", nombre(j), " tipotorta ", tipotorta(j), " porciones ", porciones(j), " decoracion ", decoracion(j) ;
							j<-limite;
						FinSi
					FinPara
				SiNo
					escribir "No hay datos en el registro";
				FinSi
				
				
			3:	
				limpiar pantalla;
			
				si i<>limite Entonces
					escribir sin saltar "cc";
					leer cc1(i);
					escribir sin saltar "Tipo de torta";
					leer tipotorta1(i);
					escribir sin saltar "Escriba la cantidad de porciones";
					leer porciones1(i);
					escribir sin saltar "decoracion";
					leer decoracion1(i);
					
					
					para p<-0 hasta limite-1 con paso 1 hacer
						si cc1(p)=cc1(i) Entonces
							bandera2<-Verdadero;
							p<-limite;
						FinSi
					FinPara
					
					si bandera Entonces
						cc1(i)<-"";
						tipotorta1(i)<-"";
						decoracion1(i)<-"";
						porciones1(i)<-"";
						escribir "registro existente";
					SiNo
						limpiar pantalla;
						i<-i+1;
						escribir "registro existente";
						ingresados<-ingresados+1;
					FinSi
				SiNo
					limpiar pantalla;
					escribir "ya llego al limte";
				FinSi
				
				
			4:
				limpiar pantalla;
				i<-0;
				si ingresados > 0 Entonces
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
