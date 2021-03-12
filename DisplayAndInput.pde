class DisplayAndInput {
  int screenChange;
  ArrayList<Button> buttList;
  ArrayList<TextField> TFList;
  DisplayAndInput() {
  }
  void display(ArrayList<Button> buttonList, int screenChange) {
    this.buttList = buttonList;
    //this.TFList = TFList;
    this.screenChange = screenChange;
    background(220, 60, 0);
    startScreen();
    diceScreen();
    dieScreen1();
    dieScreen2();
    dieScreen3();
    dieScreen4();
    for (int i = 0; i < buttonList.size(); i++) {
      buttonList.get(i).drawButton();
    }
  }

  void startScreen() {
    if (screenChange == 0) {
      background(3, 20, 30);
      fill(200, 200, 200);
      textSize(40);
      textAlign(CENTER);
      text("Welcome", width/2, 100);
    }
  }

  void diceScreen() {
    if (screenChange == 1) {
      fill(0, 0, 0);
      textSize(40);
      textAlign(CENTER);
      text("Dice", width/2, 40);
    }
  }
  void dieScreen1() {
    if (screenChange == 2) {
    }
  }
  void dieScreen2() {
    if (screenChange == 3) {
    }
  }
  void dieScreen3() {
    if (screenChange == 4) {
    }
  }
  void dieScreen4() {
    if (screenChange == 5) {
    }
  }
}
