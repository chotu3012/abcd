;armstrong
include 'emu8086.inc'
print 'enter number'
printn
call scan_num
mov ax,cx
mov bx,10

a:
mov dx,00
div bx
mov r,dx
mov q,ax
mov ax,r
mul r
mul r
mov sp,ax
mov ax,sum
add ax,sp
mov sum,ax
mov ax,q
cmp ax,00
je b
jmp a

b:
cmp sum,cx
je arm  
printn
print 'not armstrong'
hlt

arm:
printn
print 'armstrong'
hlt

q dw 00
r dw 00
sum dw 00

define_scan_num
define_print_num
define_print_num_uns