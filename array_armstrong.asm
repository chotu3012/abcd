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
printn
print 'armstrong numbers are'
printn
l1:
mov al,a[si]
mov c,00 
mov bl,10 
mov sum,00
counting:
div bl
inc c
mov ah,00
cmp al,00
jne counting
mov al,a[si]
mov bl,10
arm:
div bl
mov bh,al
mov al,ah
mov ah,00
mov dl,al
mov bp,01
pow:
mul dl
mov ah,00
inc bp
cmp bp,c
jne pow
add sum,al
mov al,bh
cmp al,00
jne arm
mov al,sum
cmp al,a[si]
jne p
call print_num
printn
p:
inc si
cmp si,n
jne l1

sum db 00
c dw 00
n dw 00
a db n dup(0)
define_scan_num
define_print_num
define_print_num_uns
