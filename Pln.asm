.model small
.data
str1 db ' is palindrome$'
str2 db ' is not pallindrome$'
str3 db 'malayalam$'
str3len dw $-str3
str4 db ?
.code
  mov ax,@data
  mov ds,ax
  mov es,ax
  lea SI,str3
  add SI,str3len
  dec SI
  dec SI
  lea DI,str4
  STD
  mov cx,str3len
     l:movSB
       inc DI
       inc DI
       loop l
 mov dx,offset str4
 mov ah,09h
 int 21h

 lea SI,str3
 lea DI,str4
 SHR str3len,01
 mov cx,str3len

 l2:cmpsb
    jne exit1
    add SI,02
    add DI,02
    loop l2

   mov dx,offset str1
   mov ah,09h
   int 21h
   jmp e

exit1:mov dx,offset str2
      mov ah,09h
      int 21h

e:mov ah,4ch
 int 21h
 end
