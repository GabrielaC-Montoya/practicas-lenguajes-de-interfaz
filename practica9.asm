
; Materia: Lenguajes de Interfaz
; Alumno: Gabriela Concepcion Montoya Roman
; Horario: 9:00-10:00 A.M
; Docente: Jose Luis Medina Jimenez
; Practica: 9.PUSH y POP
; Descripcion: Uso de la pila de memoria para el almacenamiento temporal, orden LIFO y respaldo de registros.


INCLUDE Irvine32.inc

.code
main PROC  
   
	mov eax, 40      ; BLOQUE 1: Push y Pop

	push eax

	nop

	mov eax, 0
	pop ebx

	nop

	
	mov eax, 10    ; BLOQUE 2: Orden de LIFO
	push eax

	mov eax, 20
	push eax

	mov eax, 30
	push eax

	pop eax
	pop ebx
	pop ecx

	nop



	mov eax, 100       	;BLOQUE 3: Conservar los registros
	mov ebx, 200

	push eax
	push ebx

	mov eax, 999
	mov ebx, 666


	nop



	mov eax, 50           	; BLOQUE 4: CALL y RET
	mov ebx, 100

	call aumentarDiez
	
	nop
	exit

main ENDP

aumentarDiez PROC 
    push ebx

	mov ebx, 10 
	add eax, ebx

	pop ebx

	ret
aumentarDiez ENDP          

END main