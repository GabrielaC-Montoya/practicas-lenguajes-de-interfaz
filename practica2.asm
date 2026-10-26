

; Materia: Lenguajes de Interfaz
; Alumno: Gabriela Concepcion Montoya Roman
; Horario: 9:00-10 A.M
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 2. Captura y desplegado de mensajes
; Descripción: Entrada y salida de texto para solicitar un nombre y mostrarlo en la consola.


INCLUDE Irvine32.inc
.data
    mensajeEntrada BYTE "Escribe tu nombre: ", 0
    mensajeLongitud BYTE "Caracteres capturados: ", 0
    nombre BYTE 30 DUP(0)
    longitud DWORD ?
.code
main PROC
    mov edx, OFFSET mensajeEntrada
    call WriteString
    
    ; Leer la cadena ingresada
    mov edx, OFFSET nombre
    mov ecx, SIZEOF nombre
    call ReadString
    mov longitud, eax
    call Crlf
    
    ; Desplegar la cadena leida
    mov edx, OFFSET nombre
    call WriteString
    call Crlf
    exit
main ENDP
END main