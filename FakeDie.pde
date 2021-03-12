public class FakeDie extends Dice { //<>// //<>// //<>// //<>// //<>//
  public void kast()
  {
    for (int i = 0; i < TenmmDie.length; i++) {
      if (i < 41) {
        TenmmDie[i] = 1;
      }
      if (i >= 41 && i < 41+42) {
        TenmmDie[i] = 2;
      }
      if (i >= 41+42 && i < 41+42+44) {
        TenmmDie[i] = 3;
      }
      if (i >= 41+42+44 && i < 41+42+44+35) {
        TenmmDie[i] = 4;
      }
      if (i >= 41+42+44+35 && i < 41+42+44+35+44) {
        TenmmDie[i] = 5;
      }
      if (i >= 41+42+44+35+44 && i <= 41+42+44+35+44+34) {
        TenmmDie[i] = 6;
      }
    }
    //println(TenmmDie.length-1);

    System.out.println("[kast() på FakeDie] ");
    for (int i = 0; i < timesThrown; i++) {
      int x = int(random(TenmmDie.length-1));
      int value = (TenmmDie[x]);
      setValue(value);
    }
  }
}
