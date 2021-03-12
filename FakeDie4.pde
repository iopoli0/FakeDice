public class FakeDie4 extends Dice //<>// //<>//
{  
  public void kast()
  {
    for (int i = 0; i < SixteenmmDie.length; i++) {
      if (i < 64) {
        SixteenmmDie[i] = 1;
      }
      if (i >= 64 && i < 64+65) {
        SixteenmmDie[i] = 2;
      }
      if (i >= 64+65 && i < 64+65+48) {
        SixteenmmDie[i] = 3;
      }
      if (i >= 64+65+48 && i < 64+65+48+40) {
        SixteenmmDie[i] = 4;
      }
      if (i >= 64+65+48+40 && i < 64+65+48+40+38) {
        SixteenmmDie[i] = 5;
      }
      if (i >= 64+65+48+40+38 && i <= 64+65+48+40+38+45) {
        SixteenmmDie[i] = 6;
      }
    }
    //println(SixteenmmDie.length-1);

    System.out.println("[kast() på FakeDie4] ");
    for (int i = 0; i < timesThrown; i++) {
      int x = int(random(SixteenmmDie.length-1));
      int value = (SixteenmmDie[x]);
      setValue(value);
    }
  }
}
