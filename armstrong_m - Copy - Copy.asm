include 'emu8086.inc'
printn
print 'enter the number:'
call scan_num
mov ax,cx
mov bx,10
label:
mov dx,00
div bx
mov r,dx
mov q,ax 
mov ax,r
mul r
mul r
mul r
mov r,ax
mov ax,sum
add ax,r
mov sum,ax
mov ax,q
cmp ax,00
je arm
jmp label
arm:
cmp sum,cx
je p
printn
print 'not armstrong'
hlt
p:
printn
print 'armstrong'
hlt   
r dw 00
sum dw 00
q dw 00
define_scan_num
define_print_num
define_print_num_uns

