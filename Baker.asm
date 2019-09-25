model small
.data
a dw 0001,0002,0003,0004,0005,0006,0007
first dw 0000
last dw 0006
key dw 0008
.code
mov ax,@data
mov ds,ax
mov bx,first
mov cx,last
mov dx,key
l:mov si,offset a
  mov ax,bx
  add ax,cx
  shr ax,01
  add si,ax
  cmp [si],dx
  ja l1
  jb l2
  je l3
  l1:inc ax
     mov bx,ax
     cmp bx,cx
     jbe l
     ja exit
  l2:dec ax
     dec ax
     mov cx,ax
     cmp bx,cx
     jbe l
     ja exit
  l3:mov dx,01
  exit:mov ah,4ch
       int 21h
       end
