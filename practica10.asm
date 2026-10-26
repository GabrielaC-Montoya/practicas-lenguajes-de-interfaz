
; Materia: Lenguajes de Interfaz
; Alumno: Gabriela Concepcion Montoya Roman
; Horario: 9:00-10:00 A.M
; Docente: Dr. Jose Luis Medina Jimenez
; Practica: 10. Obtencion de una cadena decimal
; Descripcion: Descompone un numero dividiendolo por 10 e imprime sus caracteres ASCII.

INCLUDE Irvine32.inc

.data

    num DWORD 125
.code

main PROC

    mov eax, num
    mov ecx, 0      ; Contador de digitos

extraccion:
    mov edx, 0
    mov ebx, 10

    div ebx         ; Dividir entre 10
    push edx        ; Guardar residuo (digito) en pila
    inc ecx         ; Aumentar contador

    cmp eax, 0
    je imprimir     ; Si el cociente es 0, pasar a imprimir
    jmp extraccion


imprimir:
    pop eax         ; Extraer digito
    add al, '0'     ; Convertir a ASCII

    call WriteChar
    loop imprimir   ; Repetir por cada digito
    call Crlf

    exit

main ENDP

END main