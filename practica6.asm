
; Materia: Lenguajes de Interfaz
; Alumno: Gabriela Concepcion Montoya Roman
; Horario: 9:00-10:00 A.M
; Docente: Dr. Jose Luis Medina Jimenez
; Practica: 6. Decremento e Incremento
; Descripcion: Incrementa y decrementa un numero


INCLUDE Irvine32.inc

.data
    msg        BYTE "Escribe un numero: ", 0
    incremento BYTE "Incremento: ", 0
    decremento BYTE "Decremento: ", 0

.code
main PROC
    mov edx, OFFSET msg
    call WriteString
    call ReadInt
    mov ebx, eax

    mov edx, OFFSET incremento
    call WriteString
    inc eax
    call WriteInt
    call Crlf

    mov eax, ebx

    mov edx, OFFSET decremento
    call WriteString
    dec eax
    call WriteInt
    call Crlf

    exit
main ENDP
END main