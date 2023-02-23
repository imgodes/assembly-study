section .text
global _start

_start:
    mov eax, 0x01
    mov ebx, 0x05
    cmp ebx, eax
    je label1
    jmp label2

label1:
    mov edx, len
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 0x80
    jmp fim

label2:
    mov edx, len2
    mov ecx, erro
    mov ebx, 1
    mov eax, 4
    int 0x80
    jmp fim

fim:
    mov eax, 1
    mov ebx, 0
    int 0x80

section .data
msg db 'é ingualzin',0x0a
len equ $ - msg    
erro db 'é diff',0x0a
len2 equ $ - erro