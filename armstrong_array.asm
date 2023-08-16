 include 'emu8086.inc'
 print 'Enter the number of elements ' 
 printn
 call scan_num 
 mov bx,2
 mov ax,cx
 mul bx
 mov n,ax
 mov di,0
 mov bx,10  
 
 inp:
  cmp di,n
 je input   
 printn
 call scan_num
 mov a[di],cx
 add di,2 
 jmp inp
 
input:
sub di,2
cmp di,0
jl stop 
mov ax,a[di]
mov bp,0
 count:  
 cmp ax,0
 je armstrong
 mov dx,0
 div bx
 inc c 
 jmp count  
 
  armstrong:
  mov si,c
  mov ax,a[di]
  
  do:
  cmp ax,0
  je quit1
  mov dx,0
  div bx
  mov q,ax
  mov ax,dx
  mov sp,dx
  
  mov c,si
  
  multiply:
  cmp c,1
  je sum
  mul sp
  dec c
  jmp multiply
  
  sum:
  add bp,ax
  mov ax,q
  jmp do

  
  quit1:
  cmp bp,a[di]
  je arms
  jmp input
  
  arms: 
  mov ax,bp
  printn
  printn ' ### '
  call print_num 
  printn
  jmp input
  
  stop:
   hlt
  
 define_scan_num
 define_print_num
 define_print_num_uns
  
 c dw 0
 q dw 0  
 n dw 0 
 a dw ?
 