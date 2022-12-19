Proceso Tallerpseint3_ejercicio7
	Definir lnombre, lmarca como caracter;
	Definir ltelefono, lplaca como caracter;
	
	dimension lnombre(6);
	dimension ltelefono(6);
	dimension lplaca(6);
	dimension lmarca(6);
	
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
	
	inicializar(lnombre,ltelefono, lmarca, lplaca);
	Repetir
		Escribir " ";
		Escribir "    _____MENU______      ";
		Escribir "";
		Escribir "Selecione una opcion";
		Escribir "1. Crear registro de vehiculo";
		Escribir "2. Consultar vehiculo";
		Escribir "3. Salida de  vehiculo";
		Escribir "4. Salir";
		leer opc;
		
		segun opc hacer
			1:
				para j<-0 hasta 1 Hacer
					si ltelefono(j) = "0" Entonces
						contador <- contador +1 ;
						k<-j;
						j<-5;
					FinSi
				FinPara
				si i<5 o contador >0 Entonces
					aux<-i;
					i<-k;
					Guardarcontacto(lnombre,ltelefono,lmarca,lplaca,i);
					contador<-0;
					i<-aux;
					i<-i+1;
					escribir "contacto = ", i;
				FinSi
			2:
				escribir "contacto = ", i;
				vercontacto(lnombre,ltelefono,lmarca,lplaca,i);
			3:
				Eliminarcontacto(lnombre,ltelefono,lmarca,lplaca,i);
				
		FinSegun
		
	hasta que opc ==4;
	escribir "SALIENDO DEL SISTEMA";
	Esperar Tecla;
	
Finproceso

Subproceso inicializar(lnombre,ltelefono,lmarca,lplaca)
	Definir L como entero;
	para L<-0 hasta 1 Hacer
		lnombre(L)<-"0";
		ltelefono(L)<-"0";
		lmarca(L)<-"0";
		lplaca(L)<-"0";
	FinPara
FinSubProceso

SubProceso Guardarcontacto(lnombre,ltelefono,lmarca,lplaca,i)
	Definir num como caracter;
	definir contador como entero;
	definir val como entero;
	contador<-0;
	val<-0;
	escribir "posicion = ", i;
	escribir "";
	escribir "Nombre:";
	leer lnombre(i);
	escribir "marca:";
	leer lmarca(i);
	escribir "Telefono:";
	leer ltelefono(i);
	escribir "";
	mientras val = 0 Hacer
		escribir "Número de placa:";
		leer num;
		escribir "";
		si Longitud(num)=6 Entonces
			lplaca[i]<-num;
			val<-1;
			Escribir "EL VEHICULO DE PLACA ", num, "HA SIDO GUARDADO";
		SiNo
			escribir "Número no valido, el número debe ser de 10 digitos";
			val<-0;
			contador<-0;
		FinSi
	FinMientras
FinSubProceso

subproceso vercontacto(lnombre,ltelefono,lmarca,lplaca,i)
	definir j como entero;
	j<-0;
	para j<-0 hasta 1 Hacer
		si lplaca(j) <> "0" Entonces
			escribir " ", lnombre(j);
			escribir ltelefono(j);
			escribir lmarca(j);
			escribir lplaca(j);
		FinSi
	FinPara
FinSubProceso

SubProceso Eliminarcontacto(lnombre,ltelefono,lmarca,lplaca,i)
	definir j como entero;
	definir num como caracter;
	j<-0;
	escribir "";
	escribir "Número de placa";
	leer num;
	escribir "";
	escribir "EL VEHICULO HA SIDO RETIRADO";
	para j<-0 hasta i-1 Hacer
		si(lplaca(j)=num) Entonces
			lnombre(j)<-"0";
			ltelefono(j)<-"0";
			lmarca(j)<-"0";
			lplaca(j)<-"0";
		FinSi
	FinPara	
FinSubProceso

