include 'emu8086.inc'
call scan_num
;mov sp,cx

mov bx,01

sqrt:
mov ax,bx
mul bx 
cmp ax,cx
jg l
cmp ax,cx
jne p
mov ax,bx
printn
call print_num
hlt

l:
printn
print 'sqrt does not exist' 
hlt

p:
inc bx
mov dx,00
jmp sqrt

define_scan_num
define_print_num
define_print_num_uns


