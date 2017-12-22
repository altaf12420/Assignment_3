PFont mono;

int changeScreen; 
color highlight;

void settings() {
  size(600, 650);
}


void setup() {
  mono = createFont("SG_Alternative_High-Alt.otf", 32);
  putThisSomewhere();
  changeScreen = 1;
}
boolean happenOnce;

void draw() {

  textFont(mono);
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
    rect(i*150, height-40, 150, 70, 10);

    textAlign(CENTER);
    textSize(15);
    fill(0);
    text("Home", 75, height-20);
    text("Change Base", 150 + 75, height-20);
    text("Settings", 300 + 75, height-20);
    text("GENERATE", 450 + 75, height-20);
  }
  if (happenOnce) {
    numbers = shuffle(numbers, 15);
    happenOnce = false;

    println(numbers);
  }
}

void titleScreen() {
  background(80);
  textSize(36);
  fill(255);
  text("Bingo Creator", 190, height/2);
}

float splitOctal;
float accOctal = .25;
float easeOctal = 1.05;
float splitDecimal;
float accDecimal = .25;
float easeDecimal = 1.05;
float splitHexadecimal;
float accHexadecimal = .25;
float easeHexadecimal = 1.05;
float splitBinary;
float accBinary = .25;
float easeBinary = 1.05;

int move;

color numberSystemsBackground = #3D4C53;

void numberSystemOptions() {
  background(numberSystemsBackground);
  strokeWeight(15);
  fill(#FFFFFF);

  text("Octal", 400+splitOctal, 400+splitOctal);

  text("Decimal", 200-splitDecimal, 400+splitDecimal);

  text("Hexadecimal", 200-splitHexadecimal, 200-splitHexadecimal);

  text("Binary", 400+splitBinary, 200-splitBinary);

  strokeCap(SQUARE);

  pushMatrix();


  translate(300, 300);  
  for (int i = 0; i < 4; i++) {
    rotate(radians(i*90));
    switch(i) {

    case 0:
      stroke(#E64A45);
      if (dist(mouseX, mouseY, 300, 300) < 250 && mouseX > 300 && mouseY > 300) {
        if (mousePressed)
          numberSystemsBackground = #E64A45;
        fill(#FFFFFF, 40);
        accOctal = accOctal * easeOctal;
        splitOctal += accOctal;
        if (splitOctal >= 20) {
          accOctal = 0;
        }
      } else {
        fill(#FFFFFF, 10);
        splitOctal = 0;
        accOctal = 1;
      }
      arc(splitOctal, splitOctal, 500, 500, radians(0), radians(90));
      break;

    case 1:
      stroke(#4DB3B3);
      if (dist(mouseX, mouseY, 300, 300) < 250 && mouseX < 300 && mouseY > 300) {
        if (mousePressed)
          numberSystemsBackground = #4DB3B3;
        fill(#FFFFFF, 40);
        accDecimal = accDecimal * easeDecimal;
        splitDecimal += accDecimal;
        if (splitDecimal >= 20) {
          accDecimal = 0;
        }
      } else {
        fill(#FFFFFF, 10);
        splitDecimal = 0;
        accDecimal = 1;
      }
      arc(splitDecimal, splitDecimal, 500, 500, radians(0), radians(90));
      break;

    case 2:
      stroke(#F2C249);
      if (dist(mouseX, mouseY, 300, 300) < 250 && mouseX > 300 && mouseY < 300) {
        if (mousePressed)
          numberSystemsBackground = #F2C249;
        fill(#FFFFFF, 40);
        accBinary = accBinary * easeBinary;
        splitBinary += accBinary;
        if (splitBinary >= 20) {
          accBinary = 0;
        }
      } else {
        fill(#FFFFFF, 10);
        splitBinary = 0;
        accBinary = 1;
      }
      arc(splitBinary, splitBinary, 500, 500, radians(0), radians(90));
      break;

    case 3:
      stroke(#E6772E);
      if (dist(mouseX, mouseY, 300, 300) < 250 && mouseX < 300 && mouseY < 300) {
        if (mousePressed)
          numberSystemsBackground = #E6772E;
        fill(#FFFFFF, 40);
        accHexadecimal = accHexadecimal * easeHexadecimal;
        splitHexadecimal += accHexadecimal;
        if (splitHexadecimal >= 20) {
          accHexadecimal = 0;
        }
      } else {
        fill(#FFFFFF, 10);
        splitHexadecimal = 0;
        accHexadecimal = 1;
      }
      arc(splitHexadecimal, splitHexadecimal, 500, 500, radians(0), radians(90));
      break;
    }
  }
  popMatrix();
}

void settingsOptions() {
  background(numberSystemsBackground);
  fill(255);
  rect(519, 21, 50, 50);
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
  background(numberSystemsBackground);
  fill(255);
  rect(519, 21, 50, 50);
  rect(140, 517, 320, 50);
  fill(0);
  text("SAVE", 275, 545);
}