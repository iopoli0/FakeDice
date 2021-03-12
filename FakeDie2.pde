public class FakeDie2 extends Dice //<>// //<>// //<>//
{  
  public void kast()
  {
    for (int i = 0; i < TwelvemmDie.length; i++) {
      if (i < 45) {
        TwelvemmDie[i] = 1;
      }
      if (i >= 45 && i < 46+36) {
        TwelvemmDie[i] = 2;
      }
      if (i >= 46+36 && i < 46+36+35) {
        TwelvemmDie[i] = 3;
      }
      if (i >= 46+36+35 && i < 46+36+35+40) {
        TwelvemmDie[i] = 4;
      }
      if (i >= 46+36+35+40 && i < 46+36+35+40+45) {
        TwelvemmDie[i] = 5;
      }
      if (i >= 46+36+35+40+45 && i <= 46+36+35+40+45+39) {
        TwelvemmDie[i] = 6;
      }
    }
    //println(TwelvemmDie.length-1);

    System.out.println("[kast() på FakeDie2] ");
    for (int i = 0; i < timesThrown; i++) {
      int x = int(random(TwelvemmDie.length-1));
      int value = (TwelvemmDie[x]);
      setValue(value);
    }
  }
}
