include 'emu8086.inc'
call scan_num
mov ax,cx
mov bx,cx
mul bx
print 'The square is '
call print_num
mov dx,0
mul bx
printn
print 'cube is '
call print_num
define_scan_num
define_print_num
define_print_num_uns