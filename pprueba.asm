.RADIX 16
.MODEL SMALL
.STACK
.DATA
;;db -> 8 bits
;;dw -> 16 bits
hola db "HOLA ARQUI 1", 0a, "$"
mensaje_1 db "Presionaste A", 0a, "$"
mensaje_2 db "No presionaste A", 0a, "$"
adios db 11
arreglo db 1,2,3,4,5
.CODE
.STARTUP
;;Logica del programa
        ;;parametros
        mov DX, OFFSET hola
        ;;llamada
        mov AH, 09
        int 21
        mov AH, 01
        int 21
        cmp AL, 'a'
        je si_se_presiono ;;jne -> salta si no es igual
        ; je -> salta si es igual; jg -> salta si es mayor; jl -> salta si es menor
        ; jge -> salta si es mayor o igual; jle -> salta si es menor o igual
        ; jz -> salta si es cero ; jnz -> salta si no es cero 
        ; jnp -> salta si no hay paridad; jp -> salta si hay paridad
        ; jnc -> salta si no hay acarreo; jc -> salta si hay acarreo
        ; jno -> salta si no hay overflow ; jo -> salta si hay overflow 
        ; jns -> salta si no hay signo; js -> salta si hay signo
        ; jcxz -> salta si cx es cero; jecxz -> salta si ecx es cero; jrcxz -> salta si rcx es cero
        ; jmp -> salta siempre
        jmp no_se_presiono

si_se_presiono:
        mov DX, OFFSET mensaje_1
        mov AH, 09
        int 21
        jmp fin
no_se_presiono:
        mov DX, OFFSET mensaje_2
        mov AH, 09
        int 21
fin:
.EXIT
END