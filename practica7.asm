
; Materia: Lenguajes de Interfaz
; Alumno: Gabriela Concepcion Montoya Roman
; Horario:9:00-10 A.M
; Docente: Dr. Jose Luis Medina Jimenez
; Practica: 7. Validacion de formato
; Descripción: Validacion de la longitud y el formato de una cadena capturada por el usuario.

INCLUDE Irvine32.inc

.data
    msgPedir BYTE "Ingrese codigo (ej. TEC-123): ", 0
    msgValido BYTE "Formato valido.", 0
    msgInvalido BYTE "Formato invalido.", 0
    buffer BYTE 30 DUP(0)                       ; Buffer de 30 posiciones

.code
main PROC
    mov edx, OFFSET msgPedir
    call WriteString

    mov edx, OFFSET buffer
    mov ecx, SIZEOF buffer - 1
    call ReadString                      ; Almacena en buffer y devuelve longitud en EAX

    cmp eax, 7                           ; Verifica que la longitud sea de 7 caracteres
    jne invalido

    mov esi, 0                           ; Inicializa indice ESI
    mov al, buffer[esi]  
    cmp al, 'T'                          ; Valida que empiece con 'T'
    jne invalido

    mov edx, OFFSET msgValido
    call WriteString
    call Crlf
    jmp fin

invalido:
    mov edx, OFFSET msgInvalido
    call WriteString
    call Crlf

fin:
    exit
main ENDP
END main