section	.data
    segment .bss
        huruf resb 2 
section	.text
	global _start 
_start
    ;block input
    mov ecx, huruf
    mov edx, 2 
    mov ebx, 2 
    mov eax, 3 
    int 80h 
    
    ;block output
    
    mov ecx, huruf
    mov edx, 2 
    mov ebx, 1 
    mov eax, 4 
    int 80h 
    
    ;block system sys_exit
    mov ebx, 1 
    mov eax, 0 
    int 80h 
