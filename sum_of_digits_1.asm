include 'emu8086.inc'
call scan_num
mov ax,cx
mov bx,0
mov bp,10

sum:
cmp ax,0
je quit
div bp
add bx,dx
mov dx,0
jmp sum

quit:
mov ax,bx
print 'The sum is '
call print_num
hlt
define_print_num
define_print_num_uns
define_scan_num