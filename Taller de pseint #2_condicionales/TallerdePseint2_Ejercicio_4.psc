SubProceso c <- asignar ( B, c )
	
	Escribir B;
	Leer c;
FinSubProceso

SubProceso c<-ingresar(B, c)
	Segun B Hacer
		1:
			c<-"La vida es bella";
		2:
			c<-"Cenicienta";
		3:
			c<-"Misión imposible";
		De Otro Modo:
			c<-"Pelicula no existe";
	FinSegun
FinSubProceso

SubProceso menu(x,j)
	Escribir x, ", Por favor seleccione la opción a realizar.";
	Escribir "1: Alquiler de pelicula";
	Escribir "2: Verificacion de disponibilidad";
	Escribir "3: Recibir pelicula";
	Leer j;
	
	Segun j Hacer
		1:
			Escribir "Opción 1 seleccionada.";
			Alquiler(0,x);
		2:
			Escribir "Opción 2 seleccionada.";
			Disponibilidad(x);
		3:
			Escribir "Opción 3 seleccionada.";
			Tienda(x,0);
			
		De Otro Modo:
			Escribir " Opción invalida";
	FinSegun
FinSubProceso

SubProceso Disponibilidad(x)
	Definir internad, config como entero;
	Escribir "Disponibilidad para la semana";
	Escribir "1, La vida es bella. $2000.";
	Escribir "2, Cenicienta. $2000.";
	Escribir "3, Misión imposible. $2000.";
	
	internad<-0;
	config<-0;
	
	Escribir "¿Desea alquilar alguna pelicula disponible?";
	Escribir "1: Si.";
	internad<-asignar("2, No.", internad);
	
	Segun internad Hacer
		1:
			Escribir "Ha seleccionado si.";
			config<-1;
			Alquiler(config, x);
		2:
			Escribir "Ha seleccionado no, finalizacion del programa.";
		De Otro Modo:
			Escribir "Opción errada, finalizacion del programa.";
	FinSegun
FinSubProceso

SubProceso Alquiler(valido, comprador) 
	Definir inter1 como Entero;
	Definir pelicula como caracter;
	
	Si valido=0 Entonces
		Escribir "1: La vida bella.";
		Escribir "2: Cenicienta.";
		Escribir "3: Misión imposible.";
	FinSi
	inter1<-0;
	pelicula<-"";
	inter1<-asignar("¿Cual desea alquilar? ", inter1);
	pelicula<-ingresar(inter1,pelicula);
	
	Si inter1<=3 y inter1>0 Entonces
		Escribir "El usuario ", comprador, " ha alquilado la pelicula ", pelicula;
		inter1<-asignar("¿Desea dejar un comentario, 1 Si. 2: No", inter1);
		
		Segun inter1 Hacer
			1:
				Tienda(comprador, 1);
			2:
				Escribir "Muchas gracias";
			De Otro Modo:
				Escribir "Opción errada, finalización del programa.";
		FinSegun
	Sino 
		Escribir "Opción errada, finalización del programa.";
	FinSi
FinSubProceso

SubProceso Tienda(x,valido)
	Definir comentar, pelicula1 como Caracter;
	Definir inter2 como Entero;
	comentar<-"Sin comentario";
	pelicula1<-"";
	inter2<-0;
	inter2<-asignar("¿Desea entragar una pelicula y hacer un comentario?  1:Si.  2: No. ", inter2);
	
	Si inter2=1 Entonces
		Si valido =0 Entonces
			Escribir "1: La vida es bella";
			Escribir "2: Cenicienta";
			Escribir "3: Misión imposible";
		FinSi
		inter2<-asignar("¿selecione la pelicula que desea comentar ", inter2);
		Si inter2<=3 y inter2>0  Entonces
			pelicula1<-ingresar(inter2, pelicula1);
			comentar<-asignar("ingrese su comentario ", comentar);
			Escribir "El comentario de ", x, " sobre ", pelicula1, " ha sido: ";
			Escribir comentar;
		SiNo
			Escribir "Opción errada, finalizar el programa";
		FinSi
	SiNo
		Escribir "Deteniendo el programa";
	FinSi
FinSubProceso

Proceso porvenir
	Definir cliente Como Caracter;
	Definir inicio Como Entero;
	cliente<-"";
	inicio<-0;
	cliente<-asignar("Digite cliente ", cliente);	
	menu(cliente, inicio);
FinProceso
	
