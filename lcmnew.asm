include 'emu8086.inc'
call scan_num
mov ax,cx
mov bx,10
printn
sum dw 04

rev: 
div bx
mov sp,ax 
mov bp,dx
mov ax,sum
mul bx
add ax,bp
mov sum,ax
mov dx,00
mov ax,sp
cmp ax,00
je s
jne:loop rev


s:
mov ax,sum
call print_num
                            
 

 
define_scan_num
define_print_num
define_print_num_uns



