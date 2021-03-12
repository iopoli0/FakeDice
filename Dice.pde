/** En klasse der beskriver 6-sidede terninger *///<>// //<>// //<>// //<>//
public class Dice
{
  private int value;
  public int timesThrown = 300000;
  int Ones = 0;
  int Twoes = 0;
  int Threes = 0;
  int Fours = 0;
  int Fives = 0;
  int Sixes = 0;
  int[] TenmmDie = new int[240];
  int[] TwelvemmDie = new int[240];
  int[] FourteenmmDie = new int[240];
  int[] SixteenmmDie = new int[300];



  /** Aflæser terningens værdi */
  public int getValue()
  {
    return value;
  }

  /** Sætter terningens værdi */
  public void setValue(int newValue)
  {
    value = newValue;
    if (value == 1) {
      Ones++;
    }
    if (value == 2) {

      Twoes++;
    }
    if (value == 3) { 
      Threes++;
    }
    if (value == 4) {

      Fours++;
    }
    if (value == 5) {

      Fives++;
    }
    if (value == 6) {

      Sixes++;
    }
    //Lister med slag fra Trows klassen
    throwing.Ones = new  int[Ones];
    throwing.Twoes = new int[Twoes];
    throwing.Threes = new int[Threes];
    throwing.Fours = new int[Fours];
    throwing.Fives = new int[Fives];
    throwing.Sixes = new int[Sixes];
    throwList.add(throwing);
  }
}
