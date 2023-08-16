include 'emu8086.inc'
print 'array size'
call scan_num
mov n,cx

  print 'array elements' 
  mov si,00
l:
 
call scan_num
mov a[si],cl
inc si
cmp si,n
jne l
 printn
mov si,00
l2:
mov bl,02
mov c,01
cmp si,n
jne prime
hlt
prime:
mov al,a[si]
div bl
cmp ah,00
jne l3
inc c
l3:
inc bl
mov ah,00
mov al,a[si]
cmp bl,al
jng prime
cmp c,02
jne l4
mov al,a[si]
call print_num 
l4:
inc si
jmp l2

n dw 00
c dw 00
a db n dup(0)
define_scan_num
define_print_num
define_print_num_uns