include 'emu8086.inc'
mov si,0
mov bl,0
input:
cmp si,5
je quit
call scan_num
mov a[si],cl
add bl,a[si]
inc si
jmp input
quit:
print 'The sum is :'
mov al,bl
call print_num
hlt
define_print_num
define_print_num_uns
define_scan_num
a db ?,?,?,?,?