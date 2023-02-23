section .text
global _start ;quando for para linguagem de maquina, será "quanto bytes para frente o programa começa"

_start: ;poderia ser qualquer nome
    mov eax, 4   ; sinaliza a syscall que queremos
    mov ebx, 1   ; FD = 1, para saída padrao, imprimir na tela
    mov ecx, msg    ; movendo a variável para ecx
    mov edx, len    ; movendo o tamanho da variável
    int 0x80
    mov eax, 1
    mov ebx, 0
    int 0x80

section .data
msg db 'Ola Galera', 0x0a
len equ $ - msg