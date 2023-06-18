xor bx,bx
mov ds,bx
mov ah,0x0e
xor cx,cx

inicio:
mov bx,var
add bx,0x7c00
add bx,cx
mov al,[bx]
xor bx,bx
int 0x10
inc cx
cmp cx,0x11
jne inicio

var: db 'by Gabriel Guedes'
times (510-($ - $$)) db 0
dw 0xAA55