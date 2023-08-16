;lcm
include 'emu8086.inc'

call scan_num
mov ax,cx 
printn
call scan_num
mov sp,cx  
mov bx,01
lcm:
mul bx 
mov si,ax
div sp 
cmp dx,00
jne s 
printn
mov ax,si
call print_num
hlt
s:
inc bx
mov ax,cx
mov dx,00
jmp lcm
 

define_scan_num
define_print_num
define_print_num_uns