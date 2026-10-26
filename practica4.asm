
; Materia: Lenguajes de Interfaz 
; Alumno: Gabriela Concepcion Montoya Roman
; Horario: 9:00-10:00 AM
; Docente: Dr. José Luis Medina Jiménez 
; Práctica: 4. Saltos.
; Descripción: Comparacin de dos números mediante saltos para mostrar un mensaje si son iguales o diferentes.

INCLUDE Irvine32.inc


.data
    msgIguales   BYTE "Los dos números son iguales", 0
    msgDiferente BYTE "Los dos números son diferentes", 0

.code
main PROC

    
    mov  eax, 10    ; Valores que se van a comparar
    mov  ebx, 10

    
    cmp  eax, ebx   ; Si son iguales, salta a la etiqueta iguales
    je   iguales

   
    mov  edx, OFFSET msgDiferente    ; Si no salto, los valores son diferentes
    call WriteString
    jmp  fin

iguales:
    mov  edx, OFFSET msgIguales
    call WriteString

fin:
    call Crlf
    exit


main ENDP

END main