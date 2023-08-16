6include 'emu8086.inc'
call scan_num
mov bp,cx
mov ax,00
mov bx,01 
mov sp,00

fib:
cmp sp,bp
jne s
hlt
s:
printn
call print_num 
mov si,bx
add bx,ax 
mov ax,si 
inc sp
jmp fib

define_scan_num
define_print_num
define_print_num_uns


