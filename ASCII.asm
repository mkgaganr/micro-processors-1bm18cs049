model small
.code
  mov ax,@data
  mov ds,ax
  mov ah,01h
  int 21h
  mov bl,al

  and al,0f0h
  mov cl,04
  shr al,cl
  add al,30h
  mov ah,02h
  mov dl,al
  int 21h

  and bl,00fh
  add bl,30h
  mov ah,02h
  mov dl,bl
  int 21h

mov ah,4ch
int 21h
end
