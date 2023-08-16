include 'emu8086.inc'
call scan_num
mov bx,cx
mov bp,1
call scan_num
mov di,cx

prime:
cmp bx,di
jg quit 

check:
cmp bp,bx
je quit1
mov ax,bx
mov dx,0
div bp
cmp dx,0
je sum
inc bp
jmp check 

sum:
inc c
inc bp
jmp check

quit1:
cmp c,1
je pt
inc bx
mov bp,1
mov c,0
jmp prime
pt:
mov ax,bx
printn
call print_num
inc bx
mov bp,1
mov c,0
jmp prime

quit:
print 'over'
ret 

c dw 0
define_print_num
define_print_num_uns
define_scan_num
