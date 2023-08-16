include 'emu8086.inc'  
print 'array size'
 call scan_num
 mov n,cx
mov si,00
print 'enter elements'
label: 
call scan_num
printn
mov arr[si],cx
inc si
 inc si                 
cmp si,n
jne label 

mov si,00
print 'array sum'
label1:
add ax,arr[si] 

inc si 
inc si 
cmp si,n
jne label1

call print_num
 hlt 
 n dw 00
arr dw n dup(0) 
define_scan_num
define_print_num
define_print_num_uns





