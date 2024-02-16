        .text
        .globl main
        
main: 
        # result = surface_area_box($a0, $a1, $a2)
        li $a0, 20          # height of the box
        li $a1, 20          # length of the box
        li $a2, 20          # width of the box
        jal surface_area_box
        move $v0, $v0       # Noop: just pointing out the return value is in $v0

        # System.out.printf("%d", return_value);
        move $a0, $v0
        li $v0, 1
        syscall           

        # System.out.printf("%c", '\n');
        li $a0, '\n'
        li $v0, 11
        syscall       


        # System.exit(0)
        li $a0, 0
        li $v0, 17      
        syscall       



	.globl surface_area_box

surface_area_box:
        # $a0:  height of the box
        # $a1:  length of the box
        # $a2:  width of the box
        # $v0:  surface area
    
        # $t0:
        # $t1:
        # $t2:
        # $t3:
    
        ## Insert your TAC and Java code here to compute:
        ##    `the surface area of a box`


                li $t0, 2                       # $t0 = 2;
                mul $t0, $t0, $a1               #$t0 = $t0 * $a1; 
                mul $t0, $t0, $a2                #$t0 = $t0 * $a2;

                li $t1, 2                        #$t1= 2;
                mul $t1, $t1, $a1                #$t1 = $t1 * $a1;
                mul $t1, $t1, $a0               #$t1 = $t1 * $a0; 

                li $t2, 2                       #$t2= 2;
                mul $t2, $t2, $a2               #$t2 = $t2 * $a2
                mul $t2, $t2, $a0               # $t2 = $t2 * $a0;

                add $t3, $t0, $t1                #$t3= $t0 + $t1 
                add $t3, $t3, $t2                # $t3 = $t3 + $t2;

                move $v0, $t3
    
        
        jr $ra

