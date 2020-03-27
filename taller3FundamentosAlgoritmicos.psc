Proceso taller3Fundamentos
	
	//Uso de Menú de opciones y manejo de ciclos. 
	
	definir peso, estatura,metros,masaCorporal, promedio como numerico; 
	definir opcionMenu, submenuPersonas, submenuMatematicas, desicion, nombre, respuesta como texto;
	definir regresar, opcionA,opcionB,opcionC,subMenu1Personas, submenuComprobacion, submenu2Personas, submenu1Mate, submenu2Mate, submenu3Mate como logico;
	definir edad, num, cont, acu, fibonacci, i, num1, num2 como entero;
	
	regresar = verdadero;
	
	Mientras regresar = verdadero Hacer
		
		Limpiar Pantalla;
		
		Escribir "Bienvenido. Seleccione una opción: ";
		Escribir ""; 
		Escribir "A. Personas";
		Escribir "B. Matemáticas";
		Escribir "C. Comprobación";
		Escribir "D. Salir"; 
		leer opcionMenu; 
		
		opcionMenu = mayusculas (opcionMenu);
		
		segun opcionMenu hacer
			
			"A": //Opción A del menú principal
				opcionA = verdadero; 
				
				Mientras opcionA = verdadero Hacer
					
					Limpiar Pantalla;
					
					Escribir "Usted ha elegido la opción Personas.";
					Escribir "";
					
					Escribir "Por favor seleccione una opción";
					Escribir "";
					
					//Submenú personas
					Escribir "1. Calcular índice de masa corporal";
					Escribir "2. ¿Eres mayor de edad?";
					Escribir "3. Regresar al menú principal";
					Escribir "4. Salir";
					Leer submenuPersonas; 
					
					segun submenuPersonas hacer
						
						"1": //Opción 1 del submenú Personas. 
							
							submenu1Personas = verdadero; 
							
							Mientras submenu1Personas = verdadero hacer
								
								Limpiar Pantalla;
								
								Escribir "Por favor ingrese su peso en kilogramos: ";
								leer peso; 
								
								Escribir "Por favor ingrese su estatura en centímetros: "; 
								leer estatura; 
								
								metros = estatura / 100;
								
								masaCorporal = peso / (metros)^2;
								
								Escribir "Usted pesa: ",peso," kilogramos y mide: ", metros, " metros.";
								Escribir "";
								Escribir "De acuerdo a lo anterior, su índice de masa corporal es: ",masaCorporal;
								
								Escribir "";
								Escribir ""; 
								Escribir "¿Qué desea realizar?:";
								Escribir "1. Otro cálculo"; 
								Escribir "2. Regresar al menú Personas";
								Escribir "3. Volver al menú principal";
								Escribir "4. Salir";
								Leer desicion; 
								
								segun desicion hacer
									"1": 
										submenu1Personas = verdadero; 
									"2": 
										submenu1Personas = falso; 
										opcionA = Verdadero; 
									"3": 
										submenu1Personas = falso;
										opcionA = falso; 
										regresar = verdadero; 
									"4": 
										submenu1Personas = falso;
										opcionA = falso; 
										regresar = falso; 
										Escribir "Gracias por usar nuestro servicio. ¡Nos veremos pronto!";
									De Otro Modo:
										submenu1Personas = falso;
										opcionA = falso; 
										regresar = falso; 
										Escribir "Opción incorrecta. Saldrás del programa";
										Esperar 2 segundos; 
								FinSegun
							FinMientras
						"2": //Segunda opción del submenú personas
							submenu2Personas = verdadero;
							
							Mientras submenu2Personas = verdadero Hacer
								
								Limpiar Pantalla;
								
								Escribir "Por favor ingrese su nombre: "; 
								leer nombre; 
								
								Escribir "Por favor ingrese su edad: ";
								leer edad; 
								
								Si edad < 1 Entonces
									
									Limpiar Pantalla;
									Escribir "Valor no permitido";
								SiNo
									Si edad > 1 y edad < 18 Entonces
										
										Limpiar Pantalla;
										Escribir "Señor (a): ",nombre, " usted es menor de edad.";
										
									SiNo
										Limpiar Pantalla;
										Escribir "Señor (a): ",nombre, " usted es mayor de edad.";
									FinSi
								FinSi
								
								Escribir "";
								Escribir ""; 
								Escribir "¿Qué desea realizar?:";
								Escribir "1. Otra comprobación"; 
								Escribir "2. Regresar al menú Personas";
								Escribir "3. Volver al menú principal";
								Escribir "4. Salir";
								Leer desicion; 
								
								segun desicion hacer
									"1": 
										submenu2Personas = verdadero; 
									"2": 
										submenu2Personas = falso; 
										opcionA = Verdadero; 
									"3": 
										submenu2Personas = falso;
										opcionA = falso; 
										regresar = verdadero; 
									"4": 
										submenu2Personas = falso;
										opcionA = falso; 
										regresar = falso; 
										Escribir "Gracias por usar nuestro servicio. ¡Nos veremos pronto!";
									De Otro Modo:
										submenu2Personas = falso;
										opcionA = falso; 
										regresar = falso; 
										Escribir "Opción incorrecta. Saldrás del programa";
										Esperar 2 segundos; 
								FinSegun
							FinMientras
						"3": 
							submenu1Personas = Falso;
							submenu2Personas = falso;
							opcionA = falso;
							regresar = Verdadero;
						"4": 
							submenu1Personas = Falso;
							submenu2Personas = falso;
							opcionA = falso;
							regresar = falso;
							Escribir "Gracias por usar nuestro servicio. ¡Nos veremos pronto!";
					FinSegun //Se cierra evaluación de opciones
				FinMientras // Se cierra ingreso a opción A del submenú Personas
				
			"B": //Opción B del menú principal
				
				opcionB = verdadero; 
				
				Mientras opcionB = verdadero hacer
					
					Limpiar Pantalla;
					
					Escribir "Usted ha elegido la opción Matemáticas.";
					Escribir ""; 
					
					Escribir "Por favor seleccione una opción";
					Escribir "";
					
					//submenú Matemáticas.
					
					Escribir "1. Mostrar conteo regresivo"; 
					Escribir "2. Obtener cantidad y promedio de datos";
					Escribir "3. Serie Fibonacci";
					Escribir "4. Regresar al Menú principal";
					Escribir "5. Salir";
					Leer submenuMatematicas;
					
					Segun submenuMatematicas hacer
						
						"1": //Opción 1 del submenú matemáticas
							submenu1Mate = verdadero;
							
							Mientras submenu1Mate = Verdadero Hacer
								
								Limpiar Pantalla;
								
								Escribir "Por favor ingrese un número entre 1 y 100: ";
								leer num; 
								
								cont = num;
								acu = 0; 
								Si num > 0 y num <= 100 Entonces
									
									Mientras acu <= num  Hacer
										acu = acu + 1; 
										Escribir cont;
										cont = cont - 1; 
									FinMientras
								SiNo
									Escribir "El valor supera el rango solicitado";
								FinSi
								
								Escribir "Fin del conteo";
								
								Escribir "";
								Escribir ""; 
								Escribir "¿Qué desea realizar?:";
								Escribir "1. Ingresar otro número"; 
								Escribir "2. Regresar al menú Matemáticas";
								Escribir "3. Volver al menú principal";
								Escribir "4. Salir";
								Leer desicion; 
								
								segun desicion hacer
									"1": 
										submenu1Mate = verdadero; 
									"2": 
										submenu1Mate = falso; 
										opcionB = Verdadero; 
									"3": 
										submenu1Mate = falso;
										opcionB = falso; 
										regresar = verdadero; 
									"4": 
										submenu1Mate = falso;
										opcionB = falso; 
										regresar = falso; 
										Escribir "Gracias por usar nuestro servicio. ¡Nos veremos pronto!";
									De Otro Modo:
										submenu1Mate = falso;
										opcionB = falso; 
										regresar = falso; 
										Escribir "Opción incorrecta. Saldrás del programa";
										Esperar 2 segundos; 
								FinSegun
							FinMientras
							
						"2": //Opción 2 del submenú Matemáticas
							
							submenu2Mate = Verdadero;
							
							Mientras submenu2Mate = Verdadero Hacer
								Limpiar Pantalla;
								
								
								cont = 0;
								acu = 0; 
								promedio = 0;
								respuesta = "S";
								
								Mientras respuesta = "S" Hacer
									
									Escribir "Ingrese un número: "; 
									Leer num;
									
									cont = cont + 1; 
									acu = acu + num; 
									
									Escribir "Desea ingresar un número? S / N :";
									Leer respuesta; 
									
									respuesta = Mayusculas(respuesta);
									
									
								FinMientras
								
								promedio = acu / cont; 
								
								Escribir "El promedio de los números ingresados es: ", promedio; 
								Escribir ""; 
								Escribir "La cantidad de datos ingresados fue de: ", cont, " números."; 
								
								Escribir "";
								Escribir ""; 
								Escribir "¿Qué desea realizar?:";
								Escribir "1. Ejecutar de nuevo"; 
								Escribir "2. Regresar al menú Matemáticas";
								Escribir "3. Volver al menú principal";
								Escribir "4. Salir";
								Leer desicion; 
								
								segun desicion hacer
									"1": 
										submenu2Mate = verdadero; 
									"2": 
										submenu2Mate = falso; 
										opcionB = Verdadero; 
									"3": 
										submenu2Mate = falso;
										opcionB = falso; 
										regresar = verdadero; 
									"4": 
										submenu2Mate = falso;
										opcionB = falso; 
										regresar = falso; 
										Escribir "Gracias por usar nuestro servicio. ¡Nos veremos pronto!";
									De Otro Modo:
										submenu2Mate = falso;
										opcionB = falso; 
										regresar = falso; 
										Escribir "Opción incorrecta. Saldrás del programa";
										Esperar 2 segundos; 
								FinSegun	
								
							FinMientras
						"3": //Opción 3 del submenú matemáticas
							
							submenu3Mate = verdadero; 
							
							Mientras submenu3Mate = Verdadero Hacer
								
								Limpiar Pantalla;
								
								cont = 0; 
								acu = 1;
								num = 0; 
								fibonacci = 0; 
								
								Escribir "Ingrese un número para hallar su serie Fibonacci: ";
								leer num; 
								
								Para i = 1 hasta num Hacer
									
									Escribir cont; 
									fibonacci = cont + acu; 
									cont = acu; 
									acu = fibonacci; 
								FinPara
								Escribir "";
								Escribir ""; 
								Escribir "¿Qué desea realizar?:";
								Escribir "1. Ejecutar de nuevo"; 
								Escribir "2. Regresar al menú Matemáticas";
								Escribir "3. Volver al menú principal";
								Escribir "4. Salir";
								Leer desicion; 
								
								segun desicion hacer
									"1": 
										submenu3Mate = verdadero; 
									"2": 
										submenu3Mate = falso; 
										opcionB = Verdadero; 
									"3": 
										submenu3Mate = falso;
										opcionB = falso; 
										regresar = verdadero; 
									"4": 
										submenu3Mate = falso;
										opcionB = falso; 
										regresar = falso; 
										Escribir "Gracias por usar nuestro servicio. ¡Nos veremos pronto!";
									De Otro Modo:
										submenu3Mate = falso;
										opcionB = falso; 
										regresar = falso; 
										Escribir "Opción incorrecta. Saldrás del programa";
										Esperar 2 segundos; 
								FinSegun	
							FinMientras
							
						"4": //Opción 4 del submenú matemáticas
							
							submenu1Mate = falso;
							submenu2Mate = falso;
							submenu3Mate = falso;
							opcionB = falso;
							regresar = verdadero; 
						De Otro Modo:
							
							submenu1Mate = falso;
							submenu2Mate = falso;
							submenu3Mate = falso;
							opcionB = falso;
							regresar = falso;
							Escribir "Opción incorrecta. Saldrás del programa";
							Esperar 2 segundos; 
					FinSegun
				FinMientras
				
			"C": //Opción C del menú principal
				
				opcionC = Verdadero; 
				
				Mientras opcionC = Verdadero Hacer
					
					Limpiar Pantalla;
					
					Escribir "Ingrese primer número: ";
					Leer num1; 
					
					Escribir "Ingrese segundo número: "; 
					Leer num2; 
					
					Si num1 > num2 Entonces
						
						Escribir "El primer número es mayor.";
						
					SiNo
						Si num2 > num1 Entonces
							
							Escribir "El segundo número es mayor.";
						SiNo
							Escribir "Los números son iguales"; 
							
						FinSi
					FinSi
					
					Escribir "";
					Escribir ""; 
					Escribir "¿Qué desea realizar?:";
					Escribir "1. Ejecutar de nuevo"; 
					Escribir "2. Volver al menú principal";
					Escribir "3. Salir";
					Leer desicion; 
					
					segun desicion hacer
						"1": 
							submenuComprobacion = verdadero; 
						"2": 
							submenuComprobacion  = falso;
							opcionC = falso; 
							regresar = verdadero; 
						"3": 
							submenuComprobacion  = falso;
							opcionC = falso; 
							regresar = falso; 
							Escribir "Gracias por usar nuestro servicio. ¡Nos veremos pronto!";
						De Otro Modo:
							submenuComprobacion  = falso;
							opcionC = falso; 
							regresar = falso; 
							Escribir "Opción incorrecta. Saldrás del programa";
							Esperar 2 segundos; 
					FinSegun	
				FinMientras
				
			"D": //Opción Salir
				
				opcionA = Falso;
				opcionB = Falso;
				opcionC = Falso;
				regresar = falso; 
				Escribir "Gracias por usar nuestro servicio. ¡Nos veremos pronto!";
			De Otro Modo:
				
				opcionA = Falso;
				opcionB = Falso;
				opcionC = Falso;
				regresar = falso; 
				Escribir "Opción incorrecta. Saldrás del programa";
				Esperar 2 segundos;
		FinSegun
	FinMientras
	
FinProceso
