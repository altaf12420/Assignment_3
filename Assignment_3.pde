int changeScreen; 
color highlight;
void settings() {
  size(600, 650);
}


void setup() {
  changeScreen = 1;
}


void draw() {


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
    strokeWeight(1);
    noStroke();
    fill(highlight);
    if (changeScreen == i+1) {
      fill(#317ef9);
    }
    rect(i*150, height-50, 150, 50, 10);

    textAlign(CENTER);
    textSize(15);
    fill(0);
    text("Home", 75, height-20);
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
float split;
float Acc = .25;
float Ease = 1.05;
void numberSystemOptions() {
  background(#3D4C53);
  strokeWeight(15);
  fill(#FFFFFF);
  
  text("BINARY", 400, 200);
  text("OCTAL", 400, 400);
  text("DECIMAL", 200, 400);
  text("HEXADECIMAL", 200, 200);
  for (int i = 0; i < 4; i++) {
  fill(#FFFFFF, 10);
  strokeCap(SQUARE);
    switch(i) {
    case 0:
      stroke(#E64A45);
      if(dist(mouseX, mouseY, 320, 320) < 250 && mouseX > 320 && mouseY > 320) {
    fill(#FFFFFF, 40);
        Acc = Acc * Ease;
        split += Acc;
        if(split >= 20) {
          Acc = 0;
        }
    } else {
    fill(#FFFFFF, 10);
    split = 0;
    Acc = 1;
    }
      arc(300 + split, 300 + split, 500, 500, radians(0), radians(90));
      break;
    case 1:
      stroke(#4DB3B3);
      arc(300, 300, 500, 500, radians(90), radians(180));
      break;
    case 2:
      stroke(#E6772E);
      arc(300, 300, 500, 500, radians(180), radians(270));
      break;
    case 3:
      stroke(#F2C249);
      arc(300, 300, 500, 500, radians(270), radians(360));
      break;
    }
  }
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