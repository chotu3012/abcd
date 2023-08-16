include 'emu8086.inc'
call scan_num
printn
mov ax,cx
mov bx,10

 

rev: 
mov dx,00
div bx
mov sp,ax
mov ax,dx
call print_num
mov ax,sp
cmp ax,00
loopne rev
                            
 

 
define_scan_num
define_print_num
define_print_num_uns



