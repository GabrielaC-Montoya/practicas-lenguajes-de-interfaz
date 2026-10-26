
;Materia: Lengaujes de interfaz
;Alumno: Gabriela Concepcion Montoya Roman
;Horario: 9:00-10:00 A.M
;Docente: Dr Jose Luis Medina Jimenez
;Practica: 1.nCiclos numericos

INCLUDE Irvine32.inc

.data
    prefijo BYTE "Numero: ", 0  
    valor   DWORD 1   ;contador

.code
main PROC
    mov ecx, 20  ;numero de iteraciones

ciclo:
    mov edx, OFFSET prefijo
    call WriteString

    mov eax, valor   ;valor actual
    call WriteDec    ;imprime el numero en decimal
    call Crlf        ;salto de línea

    inc valor
    loop ciclo

    exit
main ENDP
END main