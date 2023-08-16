include 'emu8086.inc'
print 'enter array size'
call scan_num
mov n,cx  
print 'enter array elemnts'
printn
label:
call scan_num
printn
mov a[si],cl 
inc si
cmp si,n
jne label
mov si,00
mov al,a[si]  

min:
 cmp al,a[si]
 jng p
 mov al,a[si]
 p:
 inc si
  cmp si,n
 jne min
  print 'minimum number'
  call print_num
 n dw 00
 a db n dup(0)
 define_scan_num
 define_print_num
 define_print_num_uns