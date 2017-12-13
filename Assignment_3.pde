int changeScreen;
int[] range = new int[5];
int[] numbers = new int[10];
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
    for(int i = 0; i < range.length; i++) {
      range[i] = i*10 + 10;
    text(range[i]-9 + " - " + range[i], 200+i*50, 150);
    for(int j = 0; j < numbers.length; j++) {
      numbers[j] = range[i]-j;
      text(numbers[j], 200+i*50, 200+j*20);
    }
  }
  }
}


void mousePressed() {
  //if(changeScreen ==1 ){
  
  
    changeScreen += 1;
 // }
    //if (changeScreen == 2 & mouseX == 98 & mouseY == 185){
     // changeScreen = 3;
      
   // }
    if ( changeScreen == 5) {
      changeScreen = 1;
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