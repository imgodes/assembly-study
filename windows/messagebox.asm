.386 

.model flat,stdcall ; 
option casemap: none 

include \masm32\include\kernel32.inc
includelib \masm32\lib\kernel32.lib

include \masm32\include\user32.inc
includelib \masm32\lib\user32.lib

.data 
  szCaption db 'Hello',0
  szTexto db 'Hello World',0

.code 
  start:
  push 0
  push offset szCaption
  push offset szTexto
  push 0
  call MessageBox
  push 0
  call ExitProcess
  
  end start