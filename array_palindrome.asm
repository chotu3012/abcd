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
 print 'palindromes are'
 printn
mov si,00
pal:
mov al,a[si]
mov sum,00
mov bl,10
drome:
div bl
mov bh,al
mov dl,ah
mov ah,00
mov al,sum
mul bl
mov ah,00
add al,dl
mov sum,al
mov al,bh
cmp al,00
jne drome
mov al,sum
cmp al,a[si]
jne p
call print_num
printn
p:
inc si
cmp si,n
jne pal
sum db 00
n dw 00
a db n dup(0)
define_scan_num
define_print_num
define_print_num_uns

