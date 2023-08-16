include 'emu8086.inc'
call scan_num
mov ax,cx
mov bx,10 
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
  mov ax,cx
  
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
  cmp bp,cx
  je arms
  print 'Not armstrong '
  hlt
  arms:
  print 'Armstrong'
  hlt
  
 define_scan_num
 define_print_num
 define_print_num_uns
  
 c dw 0
 q dw 0
