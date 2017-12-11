int changeScreen; 
void settings(){
size(600,600); 
  
}


void setup(){
 changeScreen = 1;  
  
}

void draw() {
  println(mouseX,mouseY);
if(changeScreen == 1){
  background(150);
 text("Bingo Creator",width/2,height/2); 
  
}

if(changeScreen == 2){
  stroke(0);
  background(150);
  fill(255);
   rect(56,100,150,100);
   fill(0);
   text("BINARY",110,155);
   fill(255);
   rect(56,250,150,100);
    fill(0);
     text("DECIMAL",105,305);
   fill(255);
   rect(385,100,150,100);
    fill(0);
     text("HEXA-DECIMAL",420,155);
   fill(255);
   rect(385,250,150,100);
    fill(0);
     text("OCTAL",440,305);

  
}
if(changeScreen == 3){
  background(150);
 text("first 1123123one",width/2,height/2); 
  
}
if(changeScreen == 4){
  background(150);
 text("first23123one",width/2,height/2); 
  
}
if(changeScreen == 5){
  background(150);
 text("first 232  one",width/2,height/2); 
  
}





}


void mousePressed() {
if(mousePressed){
changeScreen += 1;
if( changeScreen == 5){
  changeScreen = 1;
  
}
}
  
  
}