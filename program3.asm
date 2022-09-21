section .data
    segment .bss
        angka1 resb 2
        angka2 resb 2
        hasil resb 2
section .text
    global _start
_start:
    ;block angka1
    mov ecx, angka1
    mov edx, 2
    mov ebx, 2
    mov eax, 3
    int 80h
   ;block angka2
    mov ecx, angka2
    mov edx, 2
    mov ebx, 2
    mov eax, 3
    int 80h
    ;block process
    mov eax, [angka1]
    sub eax, '0'
    mov ebx, [angka2]
    sub ebx, '0'

    add eax, ebx
    add eax, '0'
    mov [hasil], eax

    ;block putput hasil
    mov ecx, hasil
    mov edx, 2
    mov ebx, 1
    mov eax, 4
    int 80h

    ;block sysexit
    mov eax, 1
    mov ebx, 0
    int 80h
