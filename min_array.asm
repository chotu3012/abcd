include 'emu8086.inc'
mov bp,0
mov bl,a[bp]

label1:
cmp bp,4
je quit
cmp bl,a[bp]
jg minimum
inc bp
jmp label1

minimum:
mov bl,a[bp]
inc bp
jmp label1

quit:
mov al,bl
call print_num
ret    
a db 2,5,1,6,3
define_print_num
define_print_num_uns
