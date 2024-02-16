        .text
        .globl main

main:
        # Java Equivalent:  $t0 = 42;
        li $t0, 42
    
    
        # Java Equivalent: System.out.printf("%d", $t0);
        move $a0, $t0
        li $v0, 1         # Service #1: print decimal
        syscall
    
    
        # Java Equivalent: System.out.printf("%c", '\n');
        li $a0, '\n'
        li $v0, 11        # Service #2: print character
        syscall           
    
    
        # Java Equivalent System.exit(0)
        li $a0, 0
        li $v0, 17        # Service #17: exit with value       
        syscall           

