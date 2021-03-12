ArrayList<Button> buttonList = new ArrayList();
ArrayList<Throws> throwList = new ArrayList();
DisplayAndInput displayAndInput = new DisplayAndInput();
FakeDie f = new FakeDie();
FakeDie2 f2 = new FakeDie2();
FakeDie3 f3 = new FakeDie3();
FakeDie4 f4 = new FakeDie4();

public Throws throwing = new Throws();
int screenChange = 0;
boolean notdoneyet = true;
boolean clickedDone;
ArrayList<TextField> textFieldList = new ArrayList();
boolean changedScreen;

void setup() {
  size(600, 600);
}

void draw() {
  clear();
  //print(screenChange+ " ");
  buttonAndTextFieldfixer();
  displayAndInput.display(buttonList, screenChange);
  screenChanger();
}

void buttonAndTextFieldfixer() {
  if (screenChange == 0 && notdoneyet == true) {
    buttonList.add(new Button(width/3, height/2, 200, 50, "Dice"));

    notdoneyet = false;
  }
  if (screenChange == 1 && notdoneyet == true) {
    buttonList.add(new Button(10, 10, 75, 50, "Back"));
    buttonList.add(new Button(width/10, height/5, 155, 50, "Throw dice 1"));
    buttonList.add(new Button(width/10, height/5 +60, 155, 50, "Throw dice 2"));
    buttonList.add(new Button(width/10, height/5 +60*2, 155, 50, "Throw dice 3"));
    buttonList.add(new Button(width/10, height/5 +60*3, 155, 50, "Throw dice 4"));


    notdoneyet = false;
  }
  if (screenChange == 2 || screenChange == 3 || screenChange == 4 || screenChange == 5 && notdoneyet == true) {
    buttonList.add(new Button(10, 10, 75, 50, "Back"));
    if (screenChange == 2 || screenChange == 3 || screenChange == 4 || screenChange == 5 ) {
      buttonList.add(new Button(width/3, height/2, 220, 50, "Rul " + f.timesThrown + " gange"));
    }
    notdoneyet = false;
  }
}

void screenChanger() {
  buttonEffects(0, 0, 1);//fra main til terninger
  buttonEffects(0, 1, 0);//fra terninger til main
  for (int i = 0; i < 5; i++) {
    buttonEffects(i, 1, i+1);//fra terninger til slå terning
    buttonEffects(0, i+1, 1);//fra slå terning til terning
  }
  if (changedScreen == false) {
    buttonGetEffect();
  }
  changedScreen = false;
}

void buttonEffects(int nrknap, int onScreen, int toScreen) {

  if (screenChange == onScreen&&changedScreen == false) {
    if (buttonList.get(nrknap).isButtonPressed()) {
      screenChange = toScreen;
      buttonList.clear();
      textFieldList.clear();
      notdoneyet = true;
      changedScreen = true;
    }
  }
}

void buttonGetEffect() {
  if (screenChange == 2) {
    if (buttonList.get(1).isButtonPressed()) {
      f.kast();
      /* int g = throwList.size()/6;
       float p = ((throwing.Ones.length - g)/(throwList.size()/6))*100;
       double Ones = p;
       double Twoes = sqrt(((throwing.Twoes.length + ( - throwList.size()/6))/pow(throwList.size()/6, 2)));
       double Threes = sqrt((throwing.Threes.length + ( - throwList.size()/6))/pow(throwList.size()/6, 2));
       double Fours = sqrt((throwing.Fours.length + ( - throwList.size()/6))/pow(throwList.size()/6, 2));
       double Fives = sqrt((throwing.Fives.length + ( - throwList.size()/6))/pow(throwList.size()/6, 2));
       double Sixes = sqrt((throwing.Sixes.length + ( - throwList.size()/6))/pow(throwList.size()/6, 2));
       
       */
      println(throwing.Ones.length /*+ " " + " 1'erne afviger " + throwing.Ones.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Twoes.length /*+ " " + " 2'erne afviger " + throwing.Twoes.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Threes.length /*+ " " + " 3'erne afviger " + throwing.Threes.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Fours.length /*+ " " + " 4'erne afviger " + throwing.Fours.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Fives.length /*+ " " + " 5'erne afviger " + throwing.Fives.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Sixes.length /*+ " " + " 6'erne afviger " + throwing.Sixes.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwList.size()); 
      println(throwList.size()/6);
      buttonList.get(1).release();
    }
  }
  if (screenChange == 3) {
    if (buttonList.get(1).isButtonPressed()) {
      f2.kast();
      println(throwing.Ones.length /*+ " " + " 1'erne afviger " + throwing.Ones.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Twoes.length /*+ " " + " 2'erne afviger " + throwing.Twoes.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Threes.length /*+ " " + " 3'erne afviger " + throwing.Threes.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Fours.length /*+ " " + " 4'erne afviger " + throwing.Fours.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Fives.length /*+ " " + " 5'erne afviger " + throwing.Fives.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Sixes.length /*+ " " + " 6'erne afviger " + throwing.Sixes.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwList.size());
      println(throwList.size()/6);
      buttonList.get(1).release();
    }
  }
  if (screenChange == 4) {
    if (buttonList.get(1).isButtonPressed()) {
      f3.kast();
      println(throwing.Ones.length /*+ " " + " 1'erne afviger " + throwing.Ones.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Twoes.length /*+ " " + " 2'erne afviger " + throwing.Twoes.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Threes.length /*+ " " + " 3'erne afviger " + throwing.Threes.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Fours.length /*+ " " + " 4'erne afviger " + throwing.Fours.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Fives.length /*+ " " + " 5'erne afviger " + throwing.Fives.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Sixes.length /*+ " " + " 6'erne afviger " + throwing.Sixes.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwList.size());
      println(throwList.size()/6);
      buttonList.get(1).release();
    }
  }

  if (screenChange == 5) {
    if (buttonList.get(1).isButtonPressed()) {
      f4.kast();
      println(throwing.Ones.length /*+ " " + " 1'erne afviger " + throwing.Ones.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Twoes.length /*+ " " + " 2'erne afviger " + throwing.Twoes.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Threes.length /*+ " " + " 3'erne afviger " + throwing.Threes.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Fours.length /*+ " " + " 4'erne afviger " + throwing.Fours.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Fives.length /*+ " " + " 5'erne afviger " + throwing.Fives.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwing.Sixes.length /*+ " " + " 6'erne afviger " + throwing.Sixes.length/float(throwList.size()/6) + " gang fra normalen"*/);
      println(throwList.size());
      println(throwList.size()/6);
      buttonList.get(1).release();
    }
  }
}


void mouseClicked() {
  if (clickedDone == false) {
    for (int i = 0; i < buttonList.size(); i++) {
      buttonList.get(i).registerClick(mouseX, mouseY);
    }
    for (int i = 0; i < textFieldList.size(); i++) {
      textFieldList.get(i).registerClick(mouseX, mouseY);
    }
    clickedDone = true;
  }
}

void mouseReleased() {
  clickedDone = false;
}
