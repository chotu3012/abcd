include 'emu8086.inc'
call scan_num
mov ax,cx
mov bx,02
mov si,01
mov di,10
label:
div bx
mov bp,ax
mov sp,dx
mov dx,00
mov ax,sp
mul si 
mov dx,00
add sum,ax
mov ax,si
mul di 
mov dx,0
mov si,ax
mov ax,bp
cmp ax,00
jne label
mov ax,sum
printn
call print_num
 hlt
 
 sum dw 00
define_scan_num
define_print_num
define_print_num_uns
 
