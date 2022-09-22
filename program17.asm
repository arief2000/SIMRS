section .data
    pesan db 0Ah, "Berhenti?(Y/N)"
segment .bss
    nomor resb 1
    tekan_tombol resb 2
section .text
    global _start
_start:
    ;inisiasi perulangan
    mov eax, 31h
    mov [nomor], eax

    ;blok perulangan
ulangi:
    ;blok tampilkan nomor
    mov ecx, nomor
    mov edx, 1
    mov ebx, 1
    mov eax, 4
    int 80h

    ;blok operasi penambahan nomor
    mov eax, [nomor]
    sub eax, 30h ;konversi ascii ke decimal
    add eax, 01h ;tambahkan eax dg decimal 1
    add eax, 30h ; konversi dari decimal ke ascii
    mov [nomor], eax ; pindahkan ke memory

    ;blok tampilkan pesan
    mov ecx, pesan
    mov edx, 15
    mov ebx, 1
    mov eax, 4
    int 80h

    ;blok input tombol keyboard
    mov ecx, tekan_tombol
    mov edx, 2
    mov ebx, 2
    mov eax, 3
    int 80h

    ;blok compare tombol yg ditekan dengan huruf Y
    mov al, [tekan_tombol]
    cmp al, 59h 
    je stop 
    loop ulangi
stop:
    mov eax, 1
    mov ebx, 0
    int 80h

