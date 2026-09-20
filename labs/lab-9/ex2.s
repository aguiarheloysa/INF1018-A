; int fat (int n) {
;   if (n==0) return 1;
;   else return n*fat(n-1);
; }

.text

.globl fat

fat:
/* 1 argumento int: %edi */
    pushq %rbp
    movq  %rsp, %rbp

    cmpb $1, (%edi)
    jle L1 /* jump if less or equal */
    jmp L2
L1:
    movl $1, %eax
    ret
L2:
    decl %edi
    call fat

    imul %edi, %eax
    jmp end_fat

end_fat:
    movq %rbp, %rsp
    popq %rbp
    ret