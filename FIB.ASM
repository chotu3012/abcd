include 'emu8086.inc'
define_print_num
define_print_num_uns
define_scan_num
call scan_num
mov ax,0
call print_num
print ' , '
mov ax,1
call print_num

mov bx,0
 label1:
cmp cx,2
je quit
fib:
mov bp,ax
add ax,bx  
print ' , '
call print_num

mov bx,bp 
dec cx
jmp label1

quit:
hlt