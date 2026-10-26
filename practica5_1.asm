
;Materia: Lengaujes de interfaz
;Alumno: Gabriela Concepcion Montoya Roman
;Horario: 9:00-10:00 A.M
;Docente: Dr Jose Luis Medina Jimenez
;Practica: 5.1. Repetir hasta que el usuario ingrese cero
;Descripcion: Bucle que solicita nmeros al usuario repetidamente hasta que ingresa un cero


INCLUDE Irvine32.inc

.data
    mensaje BYTE "Ingresa un numero (0 para terminar): ", 0

.code
main PROC

LeerNumero:
    mov edx, OFFSET mensaje
    call WriteString
    call ReadInt                  ;Lee el numero desde la consola

    cmp eax, 0                    ;Compara el numero con cero
    JE Fin                        ;Si es cero, termina el ciclo


    JMP LeerNumero               ;Si no es cero, pide otro numero

Fin:
    exit 

main ENDP

END main