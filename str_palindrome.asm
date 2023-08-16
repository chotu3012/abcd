 include 'emu8086.inc'
mov cl,0
mov si,0
find:
cmp st[si],'$'
je quit

inc si
jmp find 

rev:
dec si
mov di,0
cmp st[di],'$'
je quit
mov al,st[si]
mov b[di],al
inc di

jmp rev

quit:
mov b[di],'$'
mov si,0
compare:
cmp st[si],'$'
je pt
mov bl,st[si]
cmp b[si],bl
jne stop
inc si
jmp compare






stop:
print 'not palindrome'
ret  

pt:
print 'palindrome'
hlt  
b db '?$'
st db '$hapa$'
define_print_num
define_print_num_uns