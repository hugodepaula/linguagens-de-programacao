class Main {
  public static void main(String[] args) {

    double d;
    float f;

    // widening
    d = 2;
    f = 3;

    System.out.println("d = " + d + "\nf = " + f);

    d  = f;  // widening de double para float
    d = 2.0;

    //f = d;  // erro!!! narrowing
    //f = 2.0; // erro!!! narrowing
    f = 2.0F; // ok

    f = (float) d;  // type casting
    f = (float) 2.0; // type casting


  }
}