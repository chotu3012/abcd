include 'emu8086.inc'
print 'enter array size'
call scan_num
mov n,cx
mov si,00  
printn
print 'enter elements'
label:
printn
call scan_num
mov a[si],cl
inc si
cmp si,n
jne label
mov si,00
mov bl,02
mov bh,00
mov dl,00
count:
mov al,a[si] 
div bl
cmp ah,00
jne p
inc bh
jmp l
p:
inc dl
l:
inc si
cmp si,n
jne count
printn
print 'even count'
printn
mov al,bh 

call print_num
print 'odd count'
mov al,dl 
printn
call print_num
n dw 00
a db ndup(0)
define_scan_num
define_print_num
define_print_num_uns
