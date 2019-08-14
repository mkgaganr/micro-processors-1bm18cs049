.model small
.data
a dw 25
b dw 30
c dw 12
.code
mov ax,@data
mov ds,ax
mov ax,a
mov bx,b
mov cx,c
add ax,bx
sub ax,cx
mov ah,4ch
int 21h
end
