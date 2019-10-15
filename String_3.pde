class Gstring3 {
  color c; 
  float xPos1;
  float yPos1;
  float xPos2;
  float yPos2;
  SoundFile synth3;
  
  
Gstring3(float xPos1, float yPos1, float xPos2,float yPos2, SoundFile synth3){
    this.synth3 = synth3;
    this.xPos1 = xPos1;
    this.yPos1 = yPos1;
    this.xPos2 = xPos2;
    this.yPos2 = yPos2;
    c = color(255);
    
}

void display(){
    strokeWeight(3);
    stroke(c);
  line(xPos1, yPos1, xPos2, yPos2);
  }
  
void changeC(){
 if (mousePressed){
   if(mouseX == 370){
  c = color (128,0,128);
}
 }
 if (keyPressed){
     if (key == '3'){
       c = color(255);
     }
    }
  }

 void playSynth3(){
 if (mousePressed){
   if(mouseX == 370){
     synth3.play();
}
 }
 if (keyPressed){
     if (key == '3'){
       synth3.pause();
      
     }
    }
  }
}
