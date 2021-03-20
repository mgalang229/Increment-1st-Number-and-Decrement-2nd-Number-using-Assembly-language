.model small 
                       
.data

   heading db 10, 13, "Increment and Decrement Operations$"
   
   prompt1 db 10, 13, 10, 13, "Enter 1st number(0 - 9): $"
   prompt2 db 10, 13, "Enter 2nd number(0 - 9): $"
   
   message1 db 10, 13, 10, 13, "First Number(bl -> dl): $"
   message2 db 10, 13, "Second Number(cl -> dl): $"
   
.code           

main proc far 
    
   mov ax, @data
   mov ds, ax
   
   lea dx, heading      ; print 'heading'
   mov ah, 09h
   int 21h
   
   lea dx, prompt1      ; print 'prompt1'
   mov ah, 09h
   int 21h
   
   mov ah, 01h          ; read character
   int 21h
   
   inc al               ; increment al
   
   mov bl, al           ; copy al to bl
   
   lea dx, prompt2      ; print 'prompt2'
   mov ah, 09h
   int 21h
   
   mov ah, 01h          ; read character
   int 21h
   
   dec al               ; decrement al
   
   mov cl, al           ; copy al to cl
   
   lea dx, message1     ; print 'message1'
   mov ah, 09h
   int 21h
   
   mov dl, bl           ; copy bl to dl
   
   mov ah, 02h          ; print dl(value)
   int 21h
   
   lea dx, message2     ; print 'message2'
   mov ah, 09h
   int 21h
   
   mov dl, cl           ; copy cl to dl
   
   mov ah, 02h          ; print dl (value)
   int 21h
    
   mov ah, 4ch          ; end program
   int 21h
      
    
endp    

end main