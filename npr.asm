include 'emu8086.inc'
call scan_num
mov ax,cx
call scan_num
mov bx,cx
mov bp,ax
sub ax,bx
mov bx,ax
mov ax,bp
mov sp,00
fact:
dec bp
mul bp
mov dx,00
cmp bp,01
jne fact
inc sp
cmp sp,02
je res

sum dw 00
mov sum,ax
mov ax,bx
mov bp,ax
jmp fact
res:
mov bx,ax
mov ax,sum
div bx
call print_num
hlt
define_scan_num
define_print_num
define_print_num_uns



