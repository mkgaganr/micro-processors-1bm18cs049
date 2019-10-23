.model small
 .code
 mov ah,2ch
 int 21h
 mov al,ch
 aam
 mov bx,ax
 call DISP
 mov dl,':'
 mov ah,02h
 int 21h
 mov al,cl
 AAM
 mov bx,ax
 call DISP
 MOV DL,':'
 MOV AH,02H
 INT 21H
 mov al,dh
 aam
 mov bx,ax
 call DISP
 MOV AH,4CH
 int 21h
 DISP PROC NEAR
 mov dl,bh
 add dl,30h
 mov ah,02h
 int 21h
 mov dl,bl
 add dl,30h
 int 21h
 ret
 DISP ENDP
 END
