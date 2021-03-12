public class FakeDie3 extends Dice //<>// //<>//
{  
  public void kast()
  {
    for (int i = 0; i < FourteenmmDie.length; i++) {
      if (i < 52) {
        FourteenmmDie[i] = 1;
      }
      if (i >= 52 && i < 52+43) {
        FourteenmmDie[i] = 2;
      }
      if (i >= 52+43 && i < 52+43+47) {
        FourteenmmDie[i] = 3;
      }
      if (i >= 52+43+47 && i < 52+43+47+33) {
        FourteenmmDie[i] = 4;
      }
      if (i >= 52+43+47+33 && i < 52+43+47+33+44) {
        FourteenmmDie[i] = 5;
      }
      if (i >= 52+43+47+33+44 && i <= 52+43+47+33+44+21) {
        FourteenmmDie[i] = 6;
      }
    }
    //println(FourteenmmDie.length-1);

    System.out.println("[kast() på FakeDie3] ");
    for (int i = 0; i < timesThrown; i++) {
      int x = int(random(FourteenmmDie.length-1));
      int value = (FourteenmmDie[x]);
      setValue(value);
    }
  }
}
