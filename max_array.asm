include 'emu8086.inc'
mov si,-1
mov cl,0
label1:
inc si
cmp si,5
je quit
cmp a[si],cl
jg maximum
;inc si
jmp label1
maximum:
mov cl,a[si]
;inc si
jmp label1:
quit:
mov al,cl
call print_num
ret
 
define_print_num
define_print_num_uns
a db 1,2,9,4,5
