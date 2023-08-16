include 'emu8086.inc'
call scan_num
mov ax,cx
printn
call scan_num
mov bx,cx
sum dw 00
mov sp,01
mov bp,ax
fact:
dec bp
mul bp 
inc sp
mov dx,00
cmp sp,bx
jne fact 

mov sum,ax
mov ax,bx

label1:
dec bx
mul bx 
mov dx,00
cmp bx,01
jne label1

mov bx,ax
mov ax,sum
div bx
printn
call print_num


define_scan_num
define_print_num
define_print_num_uns