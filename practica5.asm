
; Materia: Lenguajes de Interfaz 
; Alumno:Gariela Concepcion Montoya Roman
; Horario:9:00-10:00 AM
; Docente: Dr. José Luis Medina Jiménez 
; Práctica: 5. Condicionales.
; Descripción: Implementacion de estructuras While y Do-While para imprimir números del 1 al 100.


 INCLUDE Irvine32.inc

.data
   

.code
main PROC

    mov ebx, 1             ; Inicializa el contador EBX en 1

cicloWhile:
    cmp ebx, 100           ; Compara el contador con el limite que es 100
    jg fin               

    mov eax, ebx           
    call WriteDec         
    call Crlf              

    inc ebx                ; Incrementa el contador en 1 (EBX = EBX + 1) sin alterar la bandera CF
    jmp cicloWhile        

fin:
    call Crlf              
    mov ebx, 1             ; Reinicia el contador EBX en 1 para la siguiente estructura

cicloDoWhile:

    mov eax, ebx           ; Copia el valor actual a EAX
    call WriteDec          ; Imprime el valor
    call Crlf              

    inc ebx                
    cmp ebx, 100           



    jle cicloDoWhile       

    exit                   
main ENDP

END main