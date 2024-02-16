class surface_area_box {

  public static void main (String args[]) {
    int $v0;

    $v0 = surface_area_box(20, 20, 20);

    System.out.printf("%d", $v0);
    System.out.printf("%c", '\n');
    System.exit(0);
    return; 
  }

  public static int surface_area_box(int $a0, int $a1, int $a2) {
    // $a0 : height of the box
    // $a1 : length of the box
    // $a2 : width of the box
    int $v0 = 0;   // surface area

    int $t0;
    int $t1; 
    int $t2; 
    int $t3;


     // Insert your JAVA code here to compute:

        $t0 = 2; //2xLxW
        $t0 = $t0 * $a1; //2*L
        $t0 = $t0 * $a2; // (2*L)*W

        $t1= 2;  // 2xLxH
        $t1 = $t1 * $a1; // 2*L
        $t1 = $t1 * $a0; // (2*L) * H

        $t2= 2; // 2xWxH
        $t2 = $t2 * $a2;  // 2*W
        $t2 = $t2 * $a0; // (2*W) * H

        $t3= $t0 + $t1; // 2lw + 2lh 
        $t3 = $t3 + $t2; //(2lw + 2LH) +2WH

        



    //   `the surface area of a box`
        $v0 = $t3;

    
    return $v0;
  }
}