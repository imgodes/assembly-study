xor bx,bx
mov ds,bx

mov ah,0x0e

mov al,'1'
int 0x10

mov al,segredo
int 0x10
; apareceu?

mov al,'2'
int 0x10

mov al,[segredo]
int 0x10
;apareceu(2)?

mov al,'3'
int 0x10

mov bx,segredo
add bx,0x7c00
mov al,[bx]
xor bx,bx
int 0x10
; apareceu (3)?

mov al,'4'
int 0x10

mov al,[0x7c31]
int 0x10
; apareceu (4)?

segredo: db 'X'

times 510 - ($-$$) db 0
dw 0xAA55