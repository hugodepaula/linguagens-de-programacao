class Main {
  
  public static void main(String[] args) {

    int x = 0;
    int y = 0;

    while (x < 5) {
      while (y < 5) {
        y++;
        System.out.println("x = " + x + "  y = " + y);
      }
      y = 0;
      x++;
    }

    System.out.println("==================================");

    x = 0;
    y = 0;

    while (x < 5) {
      while (y < 5) {
        y++;
        System.out.println("x = " + x + "  y = " + y);
        break;
      }
      y = 0;
      x++;
    }

    System.out.println("==================================");

    x = 0;
    y = 0;

    End:
    while (x < 5) {
      while (y < 5) {
        y++;
        System.out.println("x = " + x + "  y = " + y);
        break End;
      }
      y = 0;
      x++;
    }
    System.exit(0);
  }
}