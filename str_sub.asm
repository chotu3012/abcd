include 'emu8086.inc'
print 'main string'
mov dx,offset str1
mov ah,0ah
int 21h
printn
print 'sub string'
mov dx,offset str2
mov ah,0ah
int 21h
mov si,00
l1:
inc l 
inc si
cmp str1[si],'$'
jne l1 
mov si,00
l2:
inc m 
inc si
cmp str2[si],'$'
jne l2 
mov si,02

label:
mov sp,00 
mov di,si
add si,m
mov n,si
mov si,di
l3: 
mov bp,di
sub bp,si 
mov al,str1[di]
mov bh,str2[bp]
cmp al,bh
je p
mov sp,01
p:
 inc di
 cmp di,n
 jl l3
cmp sp,00
jne some
print 'found'
hlt
some:
inc si
mov di,l
sub di,m
cmp si,di
jng label
print 'not found'
l dw 00
m dw 00
n dw 00
str1 db 10,?,10 dup(0) 
str2 db 10,?,10 dup(0)
 






