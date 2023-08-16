
 ;gcd
include 'emu8086.inc'
call scan_num
mov ax,cx 
printn
call scan_num
mov bx,cx

label:
div bx
cmp dx,00
jne s
printn
mov ax,bx
call print_num
hlt
s:
mov ax,bx
mov bx,dx
mov dx,00
jmp label

define_scan_num
define_print_num
define_print_num_uns