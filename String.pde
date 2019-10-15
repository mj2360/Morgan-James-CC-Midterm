class Gstring1 {
  color c; 
  float xPos1;
  float yPos1;
  float xPos2;
  float yPos2;
  SoundFile synth1;
  
  
Gstring1(float xPos1, float yPos1, float xPos2,float yPos2, SoundFile synth1){
    this.synth1 = synth1;
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
   if(mouseX == 320){
     c = color (255, 0, 0);
}
 }
 if (keyPressed){
     if (key == '1'){
       c = color(255);
      
     }
    }
  }
  
  void playSynth1(){
 if (mousePressed){
   if(mouseX == 320){
     synth1.play();
}
 }
 if (keyPressed){
     if (key == '1'){
       synth1.pause();
      
     }
    }
  }
  
  
}
