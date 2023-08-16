include 'emu8086.inc'
mov si,0
label1: 
mov c,0
cmp si,10
je stop
mov bx,1
check:
mov ax,a[si]
cmp bx,a[si]
je quit

mov dx,0
div bx
cmp dx,0
je sum
inc bx
jmp check
sum:
inc c
inc bx
jmp check

quit:
cmp c,1
je p 
add si,2
jmp label1
p:    
call print_num
printn
add si,2
jmp label1


stop:
hlt

c dw 0 
a dw 2,6,4,7,1
define_print_num
define_print_num_uns
define_scan_num