section .data
    pesan db "-Halo", 0Ah
segment .bss
    nomor resb 1
section .text
    global _start
_start:
    ;blok inisisasi perulangan
    mov rcx, 5
    mov eax, 31h
    mov [nomor], eax

    ;blok perulangan
ulangi:
    push rcx ; membuat stack

    ;blok tampilan nomor
    mov ecx, nomor
    mov edx, 1
    mov ebx, 1
    mov eax, 4
    int 80h

    ;blok tampilan pesan
    mov ecx, pesan
    mov edx, 6
    mov ebx, 1
    mov eax, 4
    int 80h

    ;blok operasi penambahan nomor
    mov eax, [nomor]
    sub eax, 30h
    add eax, 01h
    add eax, 30h
    mov [nomor], eax

    pop rcx ; ambil stack
    loop ulangi

    ;exit
    mov eax, 1
    mov ebx, 0
    int 80h
