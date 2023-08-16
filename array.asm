include 'emu8086.inc'
mov bp,0
lb1:
cmp bp,4
je quit
mov al,a[bp]
inc bp
call print_num  
print ','
jmp lb1

quit:hlt 
define_print_num
define_print_num_uns
a db 1,2,3,9