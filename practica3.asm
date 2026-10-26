
; Materia: Lenguajes de Interfaz
; Alumno: Gabriela Concepcion Montoya Roman
; Horario: 9:00-10:00 A.M
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 3. Comparacion y prueba
; Descripción: Demostracion de CMP para actualizar banderas de estado sin alterar registros.

INCLUDE Irvine32.inc

.data

    msgIguales BYTE "Los valores son iguales", 0
    msgDiferentes BYTE "Los valores son diferentes", 0
.code


main PROC
    mov eax, 10     ; Valor 1
    mov ebx, 10     ; Valor 2
    
    cmp eax, ebx    ; Compara ambos registros
    je iguales      ; Salta si son iguales

    
    mov edx, OFFSET msgDiferentes
    call WriteString
    jmp fin

iguales:
    mov edx, OFFSET msgIguales
    call WriteString


fin:
    call Crlf
    exit

main ENDP


END main