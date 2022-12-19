Proceso Tallerpseint3_ejercicio6
	
	Definir lnombre, lempresa como caracter;
	Definir ltelefono como caracter;
	
	dimension lnombre(4);
	dimension lempresa(4);
	dimension ltelefono(4);
	
	Definir nombre como entero;
	Definir numer como entero;
	Definir opc como entero;
	Definir i, dato, contador, k, aux como entero;
	Definir j como entero;
	j<-0;
	opc<-0;
	i<-0;
	contador<-0;
	k<-0;
	
	inicializar(lnombre,lempresa,ltelefono);
	Repetir
		Escribir " ";
		Escribir "    _____MENU______      ";
		Escribir "";
		Escribir "Selecione una opcion";
		Escribir "1. Crear contacto";
		Escribir "2. Ver contacto";
		Escribir "3. Eliminar contacto";
		Escribir "4. Salir";
		leer opc;
		
		segun opc hacer
			1:
				para j<-0 hasta 1 Hacer
					si ltelefono(j) = "0" Entonces
						contador <- contador +1 ;
						k<-j;
						j<-3;
					FinSi
				FinPara
				si i<3 o contador >0 Entonces
					aux<-i;
					i<-k;
					Guardarcontacto(lnombre,lempresa,ltelefono,i);
					contador<-0;
					i<-aux;
					i<-i+1;
					escribir "contacto = ", i;
				FinSi
			2:
				escribir "contacto = ", i;
				vercontacto(lnombre,lempresa,ltelefono,i);
			3:
				Eliminarcontacto(lnombre,lempresa,ltelefono,i);
				
		FinSegun
		
	hasta que opc ==4;
	escribir "SALIENDO DEL SISTEMA";
	Esperar Tecla;
	
Finproceso
	
	Subproceso inicializar(lnombre,lempresa,ltelefono)
		Definir L como entero;
		para L<-0 hasta 1 Hacer
			lnombre(L)<-"0";
			lempresa(L)<-"0";
			ltelefono(L)<-"0";
		FinPara
FinSubProceso
	
SubProceso Guardarcontacto(lnombre,lempresa,ltelefono,i)
	Definir num como caracter;
	definir contador como entero;
	definir val como entero;
	contador<-0;
	val<-0;
	escribir "posicion = ", i;
	escribir "";
	escribir "Nombre:";
	leer lnombre(i);
	escribir "Empresa:";
	leer lempresa(i);
	escribir "";
	mientras val = 0 Hacer
		escribir "Número de telefono:";
		leer num;
		escribir "";
		si Longitud(num)=10 Entonces
			ltelefono[i]<-num;
			val<-1;
			Escribir "EL NUMERO HA SIDO GUARDADO";
		SiNo
			escribir "Número no valido, el número debe ser de 10 digitos";
			val<-0;
			contador<-0;
		FinSi
	FinMientras
FinSubProceso

subproceso vercontacto(lnombre,lempresa,ltelefono,i)
	definir j como entero;
	j<-0;
	para j<-0 hasta 1 Hacer
		si ltelefono(j) <> "0" Entonces
			escribir " ", lnombre(j);
			escribir ltelefono(j);
			escribir lempresa(j);
		FinSi
	FinPara
FinSubProceso

SubProceso Eliminarcontacto(lnombre,lempresa,ltelefono,i)
	definir j como entero;
	definir num como caracter;
	j<-0;
	escribir "";
	escribir "Número de contacto";
	leer num;
	escribir "";
	escribir "EL NUMERO FUE ELIMINADO";
	para j<-0 hasta i-1 Hacer
		si(ltelefono(j)=num) Entonces
			lnombre(j)<-"0";
			ltelefono(j)<-"0";
			lempresa(j)<-"0";
		FinSi
	FinPara	
FinSubProceso
