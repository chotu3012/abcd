include 'emu8086.inc'  
print 'array size'
 call scan_num
 mov n,cx
mov si,00
print 'enter elements'
label: 
call scan_num
printn
mov arr[si],cl
inc si                 
cmp si,n
jne label 

mov si,02
print 'array sum'
label1:
add al,arr[si]
add si,3  
cmp si,n
jl label1

call print_num
 hlt 
 n dw 00
arr db n dup(0) 
define_scan_num
define_print_num
define_print_num_uns





