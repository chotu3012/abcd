
include 'emu8086.inc'
call scan_num
mov si,0 

label1:
cmp si,4
je quit
cmp cl,a[si]
je equal
inc si
jmp label1

equal:
mov ax,si
printn 'element found at'
call print_num
hlt

quit:
print 'not found'
hlt
a db 2,4,1,5
define_print_num
define_print_num_uns 
define_scan_num