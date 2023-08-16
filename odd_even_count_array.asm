include 'emu8086.inc'
mov si,0
mov bx,2

check:
cmp si,10 
je quit
mov ax,a[si]
mov dx,0
div bx
cmp dx,0
je even
inc o 
inc si
inc si
jmp check
even:
inc e
inc si
inc si    
jmp check

quit:
mov ax,e
print 'No of even number is '
call print_num
mov ax,o
printn 'No of odd numbers '
call print_num
hlt

a dw 34,17,5,12,1
e dw 0
o dw 0
define_print_num
define_print_num_uns
define_scan_num