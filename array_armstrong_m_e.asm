include 'emu80806.inc'
mov si,00
print 'enter array size:'
call scan_num
mov n,cx
printn
print 'enter array elements:'
label:
printn
call scan_num
mov a[si],cl 
inc si
cmp si,n
jne label
mov si,00
arm: 
mov al,a[si]
mov bl,10
mov sum,00
label2:
mul bl


 