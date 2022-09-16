section	.data
    huruf db 01000001b, 00001010b
section	.text
	global _start 
_start
    mov ecx, huruf
    mov edx, 2 
    mov ebx, 1 
    mov eax, 4 
    int 80h 
 
    mov eax, 1 
    mov ebx, 0 
    int 80h 
