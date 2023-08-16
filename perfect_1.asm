include 'emu8086.inc'
call scan_num
mov ax,cx
mov bp,0
mov bx,1

perfect:
mov ax,cx
cmp bx,cx
je quit
mov dx,0
div bx
cmp dx,0
je sum
inc bx
jmp perfect

sum:
add bp,bx
inc bx 
jmp perfect

quit:
cmp cx,bp
je pt
print 'Not perfect'
hlt
pt:
print 'Perfect'
hlt
define_print_num
define_print_num_uns
define_scan_num