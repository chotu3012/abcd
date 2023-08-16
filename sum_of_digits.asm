
include 'emu8086.inc'
define_print_num
define_print_num_uns
define_scan_num
call scan_num
mov ax,cx
mov bx,10
mov cx,0
LABEL1:
cmp ax,0
je quit
sum:
div bx
add cx,dx
mov dx,0
jmp LABEL1

quit:
mov ax,cx     
print 'the sum of digits is '
call print_num
hlt