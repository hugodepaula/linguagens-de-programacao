class Main {

  public static void ParamVariavel(Integer ... args) {
    for (Integer number : args) {
      System.out.print(number + " ");
    }
    System.out.println();
  }

 public static void ParamList(int[] lista)
    {
        for (int i = 0; i < lista.length; i++)
        {
            System.out.print(lista[i] + " ");
        }
        System.out.println();
    }

  public static void main(String[] args) {
    ParamVariavel(10);
    ParamVariavel(1, 3, 5, 7, 9);
  
    ParamList(new int[] { 10 } );
    ParamList(new int[] { 1, 3, 5, 7, 9} );
}
}