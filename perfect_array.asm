include 'emu8086.inc'
mov si,0

iterate: 
cmp si,10
je quit
mov bx,0
mov bp,1
perfect:
mov ax,a[si]
cmp bp,a[si]
je stop
mov dx,0
div bp
cmp dx,0
je sum
inc bp
jmp perfect

sum:
add bx,bp
inc bp
jmp perfect

stop:
cmp bx,a[si]
je p
inc si
inc si
jmp iterate

p:
mov ax,a[si]
call print_num
print ' is perfect number '
inc si
inc si
jmp iterate

quit:
hlt 
ret
a dw 6,2,28,1,2
define_print_num
define_print_num_uns
define_scan_num

