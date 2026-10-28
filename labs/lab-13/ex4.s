/* 
int foo (int x) {
  return add(x);
}
int foo (int x){
    int ret;
    ret = add(x);
    return ret;
}
*/

.text
.globl foo
foo:
    pushq %rbp
    movq %rsp, %rbp
    
    jmp add
    leave
    ret
    
    