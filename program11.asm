section .data
    pesan_benar db "Angka 1 > angka 2", 0Ah
    pesan_salah db "Angka 1 < angka 2", 0Ah
segment .bss
    angka1 resb 2
    angka2 resb 2
section .text
    global _start
_start:
    ;block input angka 1
    mov ecx, angka1
    mov edx, 2
    mov ebx, 2 
    mov eax, 3
    int 80h

    ;block input angka 2
    mov ecx, angka2
    mov edx, 2
    mov ebx, 2 
    mov eax, 3
    int 80h

    ;block compare
    mov al, [angka1]
    mov ah, [angka2]
    cmp al, ah

    ;block decision
    jg benar
    jmp salah

benar:
        mov ecx, pesan_benar
        mov edx, 18
        mov ebx, 1
        mov eax, 4
        int 80h
        jmp stop

salah:
    mov ecx, pesan_salah
    mov edx, 18
    mov ebx, 1
    mov eax, 4
    int 80h
    jmp stop
stop: 
    mov eax, 1
    mov ebx, 0
    int 80h
