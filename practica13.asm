
; Materia: Lenguajes de Interfaz 
; Alumno: Gabriela Concepcion Montoya Roman
; Horario: 9:00-10:00 AM
; Docente: Dr. Jos Luis Medina Jimnez 
; Practica: 13. Obtencion de una cadena hexadecimal.
; Descripción: Convierte un número de 32 bits a cadena ASCII hexadecimal procesando sus nibbles con máscaras y desplazamientos.

INCLUDE Irvine32.inc


.data
    valorOriginal DWORD 12AB34CDh       ; Valor entero de 32 bits a convertir
    bufferHex     BYTE 9 DUP(0)         ; Buffer de 8 caracteres + terminador nulo (0)

.code
main PROC
    mov eax, 12AB34CDh                  ; Carga el valor a convertir en EAX
    mov ecx, 8                          ; Contador para procesar los 8 nibbles (4 bits c/u)
    mov esi, 7                         

conv_loop:
    push eax                            ; Resguarda el valor original de EAX en la pila
    and eax, 0Fh                        

    cmp al, 9                           ; Compara el nibble con 9
    jbe es_num                          

    add al, 'A' - 10                    ; Ajuste para letras de la A a la F
    jmp almacenar                       ; Salto obligatorio para evitar que caiga en es_num

es_num:
    add al, '0'                         ; Ajuste para dígitos del 0 al 9

almacenar:
    mov bufferHex[esi], al              ; Guarda el caracter ASCII en la posicin del buffer

    pop eax                             ; Recupera el valor completo de EAX desde la pila
    shr eax, 4                         
    dec esi                             
    loop conv_loop                      ; Decrementa ECX y repite mientras ECX != 0

    ; --- Despliegue en consola ---
    mov edx, OFFSET bufferHex           ; EDX apunta a la cadena hexadecimal construida
    call WriteString                    ; Muestra la cadena en pantalla
    call Crlf                           ; Imprime un salto de línea

    exit                               
main ENDP

END main