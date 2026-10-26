
; Materia: Lenguajes de Interfaz
; Alumno: Gabriela Concepcion Montoya Roman
; Horario: 9:00-10:00 AM
; Docente: Dr.Jose Luis Medina Jimenez
; Práctica: 4.1 Mayor, Menor o Igual con Entrada del Usuario
; Descripción: Pide dos números al usuario y, con saltos, indica si el primero es mayor, menor o igual al segundo


INCLUDE Irvine32.inc

.data
    msgNum1    BYTE "Escribe el primer numero: ", 0
    msgNum2    BYTE "Escribe el segundo número: ", 0

    msgMayor   BYTE "El primer numero es mayor que el segundo", 0
    msgMenor   BYTE "El primer numero es menor que el segundo", 0
    msgIguales BYTE "Los dos numeros son iguales", 0

    num1       DWORD ?
    num2       DWORD ?

.code
main PROC

    
    mov  edx, OFFSET msgNum1    ; Pide el primer numero
    call WriteString
    call ReadInt
    mov  num1, eax

  
    mov  edx, OFFSET msgNum2      ; Pide el segundo numero
    call WriteString
    call ReadInt
    mov  num2, eax

    
    mov  eax, num1      ; Compararlos y saltar segun el resultado
    mov  ebx, num2
    cmp  eax, ebx
    jg   mayor
    jl   menor

   
    mov  edx, OFFSET msgIguales    ; Si no fue mayor ni menor son iguales
    call WriteString
    jmp  fin

mayor:
    mov  edx, OFFSET msgMayor
    call WriteString
    jmp  fin

menor:
    mov  edx, OFFSET msgMenor
    call WriteString

fin:
    call Crlf
    exit


main ENDP

END main