
int changeScreen; 
color highlight;

void settings() {
  size(600, 600);
}


void setup() {
  changeScreen = 1;
}

void draw() {

  println(mouseX, mouseY);

  switch(changeScreen) {
  case 1:
    titleScreen();
    break;
  case 2:
    numberSystemOptions();
    break;
  case 3:
    settingsOptions();
    break;
  case 4:
    bingoScreen();
    shuffler();
    break;
  }

  //Buttons for navigation:

  for (int i = 0; i < 4; i++) {

    if (mouseX > i*150 && mouseX < i*150+150 && mouseY > height-50 && mouseY < height) {
      highlight = #adccff;
    } else highlight = #ffffff;
    if (mousePressed == true) {
      if (mouseX > i*150 && mouseX < i*150+150 && mouseY > height-50 && mouseY < height) {
        changeScreen = i+1;
      }
    }
    fill(highlight);
    rect(i*150, height-50, 150, 50);
    
    textAlign(CENTER);
    textSize(15);
    fill(0);
    text("Home",75, height-20);
    text("Change Base", 150 + 75, height-20);
    text("Settings", 300 + 75, height-20);
    text("GENERATE", 450 + 75, height-20);
  }
}





void mousePressed() {
}



void titleScreen() {
  background(80);
  textSize(36);
  fill(255);
  text("Bingo Creator", 190, height/2);
}

void numberSystemOptions() {
  
 
  textSize(12);
  stroke(0);
  background(150);
  fill(255);
  rect(519,21,50,50);
  rect(56, 100, 150, 100);
  fill(0);
  text("BINARY", 110, 155);
  fill(255);
  rect(56, 250, 150, 100);
  fill(0);
  text("DECIMAL", 105, 305);
  fill(255);
  rect(385, 100, 150, 100);
  fill(0);
  text("HEXA-DECIMAL", 420, 155);
  fill(255);
  rect(385, 250, 150, 100);
  fill(0);
  text("OCTAL", 440, 305);
}

void settingsOptions() {
  background(150);
  fill(255);
  rect(519,21,50,50);
  rect(56, 100, 150, 100);
  fill(0);
  text("# of cards", 110, 155);
  fill(255);
  rect(56, 250, 150, 100);
  fill(0);
  text("# of files", 105, 305);
  fill(255);
  rect(56, 400, 150, 100);
  fill(0);
  text("FREE", 110, 455);
  fill(255);
  rect(385, 250, 150, 100);
  fill(0);
  text("DONE", 440, 305);
}

void bingoScreen() {
  background(150);
  fill(255);
  rect(519,21,50,50);
  rect(140, 517, 320, 50);
  fill(0);
  text("SAVE", 275, 545);
}