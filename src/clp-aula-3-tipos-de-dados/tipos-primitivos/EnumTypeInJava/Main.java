class Main {

  private enum Cursos {
    CC(112), ES(138), SI(118), JD(176), EC(181);

    private final int valor;

    Cursos(int val) {
        valor = val;
    }

    public int getValor() {
      return valor;
    }

  }

  public static void main(String[] args) {
    Cursos ze, tereza;

    ze = Cursos.CC;
    tereza = Cursos.EC;

    if (ze == tereza) {
      System.out.println("Zé e Tereza são colegas!");
    } else {
      System.out.println("Zé e Tereza não são colegas!");
    }

    int cze = (int) ze.getValor();
    int cte = (int) tereza.getValor();

    System.out.println("Curso do Zé: " + ze);
    System.out.println("Curso da Tereza: " + tereza);
    System.out.println("Curso do Zé: " + cze);
    System.out.println("Curso da Tereza: " + cte);
    
  }
}