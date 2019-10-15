class Gstring4 {
  color c; 
  float xPos1;
  float yPos1;
  float xPos2;
  float yPos2;
  SoundFile synth4;
  
  
Gstring4(float xPos1, float yPos1, float xPos2,float yPos2, SoundFile synth4){
    this.synth4 = synth4;
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
   if(mouseX == 390){
  c = color (255, 60, 150);
}
 }
 if (keyPressed){
     if (key == '4'){
       c = color(255);
     }
    }
  }
  
   void playSynth4(){
 if (mousePressed){
   if(mouseX == 390){
     synth4.play();
}
 }
 if (keyPressed){
     if (key == '4'){
       synth4.pause();
      
     }
    }
  }
}
