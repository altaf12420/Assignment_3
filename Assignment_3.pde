////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//--------------------------------------------------------------------------------------ASSIGNMENT 3--------------------------------------------------------------------------------------//
//---------------------------------------------------------------------------by John Park & Altaf Syed Hussain----------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
    background(150);
    text("Bingo Creator", width/2, height/2);
  }

  if (changeScreen == 2) {
    background(150);
    text(binary(1, 6), width/2, height/2);
  }
  if (changeScreen == 3) {
    background(150);
    text("first 1123123one", width/2, height/2);
  }
  if (changeScreen == 4) {
    background(150);
    text("first23123one", width/2, height/2);
  }
  if (changeScreen == 5) {
    background(150);
    text("first 232  one", width/2, height/2);
  }
  
  for(int i = 0; i < range.length; i++) {
      range[i] = i*10 + 10;
    text(range[i]-9 + " - " + range[i], 200+i*50, 150);
    for(int j = 0; j < numbers.length; j++) {
      numbers[j] = range[i]-j;
      text(numbers[j], 200+i*50, 200+j*20);
    }
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