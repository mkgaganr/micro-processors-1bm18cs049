.model small
.code
mov dl,00h
mov ah,00h
mov al,03h
int 10h
mov cl,00
again: push cx
       mov bh,00
       mov dh,12
       mov dl,40
       mov ah,02h
       int 10h
       pop cx
       mov al,cl
       AAM
       add ax,3030h
       push ax
       mov dl,ah
       mov ah,02h
       int 21h
       pop ax
       mov dl,al
       mov ah,02h
       int 21h
       inc cl
       call delay
       CMP cl,100
       jb again
       mov ah,4ch
       int 21h
       delay proc near
       push cx
       push dx
       mov cx,0ffffh
       outer:
             mov dx,0ffffh
             inner: dec dx
                    jnz inner
                    loop outer
                    pop dx
                    pop cx
                    ret
                    delay ENDP
                    END
       
