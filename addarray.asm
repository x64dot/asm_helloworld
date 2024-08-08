section .data
    my_array dd 1, 4, 5, 4, 2
    message db "Check the return to get the sum",10

section .bss
    result resd 1

section .text
    global _start

_start:
    mov dword [result], 0
    mov rsi,my_array 
    mov ecx,5
sum_loop:
    mov eax,[result]
    add eax,[rsi]     
    mov [result],eax  
    add rsi,4         
    loop sum_loop      

   
    mov rax,1        
    mov rdi,1         
    mov rsi,message  
    mov rdx,34        
    syscall

   
    mov eax,60        
    mov edi,[result]  
    syscall
