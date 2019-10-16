model small
     
.data

.code
mov ax, @data
mov ds, ax  

mov dl, 32h
mov ah, 02h
int 21h
mov dl, ' ' ; 20h
int 21h
mov dl, 33h
int 21h  
mov dl, ' ' ; 20h
int 21h
 
mov ah, 00h
mov cl, 08h
mov ch, 00h
mov dx, 03h

outloop:
    inc dx 
    mov ch, 02h
    mov bx, 00h
    inloop: 
        mov ax, dx
        div ch     
        inc ch
        cmp ah, 00h
        jne prime
        mov bh, 01h ; flag for not prime
        jmp outloop
        prime:
            cmp ch, dl
            jl inloop
            jmp checkandprint
                
    print: 
        mov ax, dx
        aam       
        mov bx, ax ; move to bx after unpacking
        add bx, 3030h ; convert to ascii
        mov dl, bh
        mov ah, 02h
        int 21h
        mov dl, bl
        int 21h
        mov dl, ' ' ; 20h
        int 21h
        sub bx, 3030h ; ascii to unpacked bcd
        mov ax, bx ; restore ax value before output
        aad ; ax is unpacked bcd after aam, packing it packed bcd 
        mov dx, ax ; restore dx value
        dec cl
        cmp cl, 00h
        jne outloop 
                   
    checkandprint:
        cmp bh, 00h ; check flag if its prime or not
        je print
        

mov ah, 4ch
int 21h
