int changeScreen; 
void settings() {
  size(600, 600);
}


void setup() {
  changeScreen = 1;
}

void draw() {
  println(mouseX, mouseY);
  if (changeScreen == 1) {
    titleScreen();
  }

  if (changeScreen == 2) {
    numberSystemOptions();
  }
  if (changeScreen == 3) {
    settingsOptions();
  }
  if (changeScreen == 4) {
    bingoScreen();
  }
}


void mousePressed() {
  if (mousePressed) {
    changeScreen += 1;
    if ( changeScreen == 5) {
      changeScreen = 1;
    }
  }
}


void titleScreen() {
  background(150);
  textSize(36);
  fill(255);
  text("Bingo Creator", 190, height/2);
}

void numberSystemOptions() {
  textSize(12);
  stroke(0);
  background(150);
  fill(255);
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
  rect(140, 517, 320, 50);
  fill(0);
  text("SAVE", 275, 545);
}