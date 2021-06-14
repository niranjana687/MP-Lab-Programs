data segment
str1 db ” hello”
len db ?
 data ends
code segment
start : assume  cs :code,  ds :data
mov ax , data
mov ds ,ax
LEA si ,str1
up: mov al, [si]
cmp al , “$”
 jz exit1
inc si
inc len
jmp up
exit1  : mov ah,4ch
int 21h
code ends
end start
