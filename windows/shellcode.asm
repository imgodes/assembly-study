.386 
.model flat,stdcall
option casemap: none

include \masm32\include\shell32.inc
includelib \masm32\lib\shell32.lib

.data
  lpFile db 'calc.exe',0
  lpOperation db 'open',0

.code 
start:
  push 1
  push 0
  push 0
  push offset lpFile
  push offset lpOperation
  push 0
  call ShellExecute

end start