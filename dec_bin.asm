include 'emu8086.inc'
mov si,0
call scan_num
mov ax,cx
mov bx,2

Binary:
cmp ax,0
je quit
mov dx,0
div bx
mov a[si],dx
inc si 
inc si
jmp Binary

quit:
dec si
dec si
cmp si,0
jl stop
mov ax,a[si]
call print_num
jmp quit

stop:
hlt

define_print_num
define_print_num_uns
define_scan_num
a dw ?,?,?,?,?,?,?,?