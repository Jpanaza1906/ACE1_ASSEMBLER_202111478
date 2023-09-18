.RADIX 16 ;;Definicion de la base de numeracion
.MODEL SMALL ;; Definicion del modelo de memoria
;; Definicion de segmentos
.STACK 
.DATA ;; Segmento de datos

;;---------------------------------Encabezado---------------------------------
MSG1 DB 0AH, 0DH, "Universidad San Carlos de Guatemala", 0AH, 0DH, "$"
MSG2 DB "Facultad de Ingenieria", 0AH, 0DH, "$"
MSG3 DB "Arquitectura de Computadores y Ensambladores 1", 0AH, 0DH, "$"
MSG4 DB "Seccion 'A'", 0AH, 0DH, "$"
MSG5 DB "Segundo Semestre 2023" , 0AH, 0DH, "$"
MSG6 DB 0AH, 0DH, "Nombre: Jose David Panaza Batres", 0AH, 0DH, "$"
MSG7 DB "Carnet: 202111478", 0AH, 0DH, "$"
MSG8 DB 0AH, 0DH, "Presione 'Enter' para continuar...", 0AH, 0DH, "$"

.CODE 
.STARTUP ;; Inicio de programa
;; logica del programa
;;-------------------------------Mostrar Encabezado-------------------------------
    MOV AH, 09 ;; Funcion para mostrar cadena de caracteres
    MOV DX, OFFSET MSG1 ;; Direccion de memoria de la cadena de caracteres
    int 21 ;; Interrupcion para mostrar cadena de caracteres
    MOV AH, 09 ;; Funcion para mostrar cadena de caracteres
    MOV DX, OFFSET MSG2 ;; Direccion de memoria de la cadena de caracteres
    int 21 ;; Interrupcion para mostrar cadena de caracteres
    MOV AH, 09 ;; Funcion para mostrar cadena de caracteres
    MOV DX, OFFSET MSG3 ;; Direccion de memoria de la cadena de caracteres
    int 21 ;; Interrupcion para mostrar cadena de caracteres
    MOV AH, 09 ;; Funcion para mostrar cadena de caracteres
    MOV DX, OFFSET MSG4 ;; Direccion de memoria de la cadena de caracteres
    int 21 ;; Interrupcion para mostrar cadena de caracteres
    MOV AH, 09 ;; Funcion para mostrar cadena de caracteres
    MOV DX, OFFSET MSG5 ;; Direccion de memoria de la cadena de caracteres
    int 21 ;; Interrupcion para mostrar cadena de caracteres
    MOV AH, 09 ;; Funcion para mostrar cadena de caracteres
    MOV DX, OFFSET MSG6 ;; Direccion de memoria de la cadena de caracteres
    int 21 ;; Interrupcion para mostrar cadena de caracteres
    MOV AH, 09 ;; Funcion para mostrar cadena de caracteres
    MOV DX, OFFSET MSG7 ;; Direccion de memoria de la cadena de caracteres
    int 21 ;; Interrupcion para mostrar cadena de caracteres
    MOV AH, 09 ;; Funcion para mostrar cadena de caracteres
    MOV DX, OFFSET MSG8 ;; Direccion de memoria de la cadena de caracteres
    int 21 ;; Interrupcion para mostrar cadena de caracteres
;;---------------------------------Fin de Encabezado---------------------------------
;;---------------------------------Pausa---------------------------------
PAUSA: ;; Etiqueta para pausar el programa
    ;;si viene exactamente un enter, entonces continua
    MOV AH, 01 ;; Funcion para leer un caracter
    INT 21 ;; Interrupcion para leer un caracter
    CMP AL, 0DH ;; Compara si el caracter es un enter
    JNE PAUSA ;; Si no es un enter, entonces vuelve a pedir un caracter

.EXIT ;; Fin de programa
END ;; Fin de programa