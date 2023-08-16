include 'emu8086.inc'
mov si,0
mov ax,0
label1:
cmp si,4
je quit
add al,arr[si]
inc si
jmp label1

quit:
call print_num
 hlt
define_print_num
define_print_num_uns
arr db 4,5,8,1