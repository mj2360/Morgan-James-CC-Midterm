class Gstring2 {
  color c; 
  float xPos1;
  float yPos1;
  float xPos2;
  float yPos2;
  SoundFile synth2;
  
  
Gstring2(float xPos1, float yPos1, float xPos2,float yPos2, SoundFile synth2){
    this.synth2 = synth2;
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
   if(mouseX == 345){
  c = color (255, 150, 0);
}
 }
 if (keyPressed){
     if (key == '2'){
       c = color(255);
     }
    }
  }
  
  void playSynth2(){
 if (mousePressed){
   if(mouseX == 345){
     synth2.play();
}
 }
 if (keyPressed){
     if (key == '2'){
       synth2.pause();
      
     }
    }
  }
}
