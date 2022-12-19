Proceso Tallerpseint3_ejercicio8
	
	definir usuario como entero;
	definir aprobar como entero;
	definir nota como real;
	definir nombre como caracter;
	definir opcion como entero;
	
	nota<-5;
	opcion<-0;
	Mientras opcion <=3 Hacer
		escribir "Selecione una opcion";
		escribir "1. Registrar ingreso";
		escribir "2. Consultar usuario";
		escribir "3. Ver nota";
		escribir "4. Salir";
		Leer opcion;
		
		segun opcion hacer
			1:
				para usuario<-1 hasta 8 Hacer
					escribir "Ingrese su nombre completo";
					leer nombre;
					escribir "calificacion";
					leer nota;
				FinPara
			2:
				escribir "Su usuario ha sido registrado ", nombre;
			3:
				vernota(nota);
			4:
				escribir "saliendo del sistema";
		FinSegun
	FinMientras
	
FinProceso

subproceso vernota(nota)
	Si nota>5 Entonces
		escribir nota, " si aprobo";
	FinSi
	leer nota;
	si nota<5 entonces
		escribir nota, " no aprobo";
	FinSi
FinSubProceso



