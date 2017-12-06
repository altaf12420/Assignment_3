int changeScreen; 
void settings(){
size(600,600); 
  
}


void setup(){
 changeScreen = 1;  
  
}

void draw() {
if(changeScreen == 1){
 text("first one",width/2,height/2); 
  
}

if(changeScreen == 2){
 text("first 1232one",width/2,height/2); 
  
}
if(changeScreen == 3){
 text("first 1123123one",width/2,height/2); 
  
}
if(changeScreen == 4){
 text("first23123one",width/2,height/2); 
  
}
if(changeScreen == 5){
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