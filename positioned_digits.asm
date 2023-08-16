include 'emu8086.inc'
call scan_num
mov ax,cx
mov bx,10 
mov bp,00

digits:
div bx
inc bp
mov dx,00
cmp ax,00 
je f
jne:loop digits

f:
mov ax,bp 
mov sp,02 
div sp 
cmp dx,00
je s
y:
inc ax
mul ax 
printn
call print_num
hlt
s:
mul ax 
printn
call print_num 


define_scan_num
define_print_num
define_print_num_uns            
 


