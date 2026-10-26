
; Materia: Lenguajes de Interfaz
; Alumno: Gabriela Concepcion Montoya Roman
; Horario: 9:00-10:00 A.M
; Docente: Dr. Jose Luis Medina Jimenez
; Practica: 6.1. Control de ocupacion de un estacionamiento
; Descripcion: Utiliza INC y DEC para llevar el registro de autos en un estacionamiento.


INCLUDE Irvine32.inc

.data
    msg1        BYTE "Cantidad de espacios del estacionamiento: ", 0
    msg2        BYTE "Ingrese 1 para estacionar un auto: ", 0
    msg3        BYTE "Espacios disponibles: ", 0
    msg4        BYTE "Estacionamiento lleno, no se pueden estacionar mas autos", 0
    espacios    DWORD ?
    estacionar  DWORD ?

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString
    call ReadInt
    mov espacios, eax

ciclo:
    cmp espacios, 0
    je lleno

    mov edx, OFFSET msg2
    call WriteString
    call ReadInt
    mov estacionar, eax

    cmp estacionar, 1
    jne ciclo

    dec espacios

    mov edx, OFFSET msg3
    call WriteString
    mov eax, espacios
    call WriteDec
    call Crlf

    jmp ciclo

lleno:
    mov edx, OFFSET msg4
    call WriteString
    call Crlf
    exit

main ENDP
END main