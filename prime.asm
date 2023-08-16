include 'emu8086.inc'
call scan_num
mov ax,cx
printn
call scan_num
mov bx,cx
mov bp,00
