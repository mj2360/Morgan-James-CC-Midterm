class Shape {
  int type = 0;
  float h = 200;
  float Th = 350;
  float Rh = 200;
  float Th2 =350;
  
  Shape (int _type){
    type = _type;
  }
  
  void displayCirc() {
      stroke(255);
      strokeWeight(3);
      fill(255, 0, 0);
      ellipse(150, 250, 200, h);
  }
  void shrinkCirc(){
    h--;
  }
  void restoreCirc(){
    h = 200;
  }
  
  
   void displayTri() {
      stroke(255);
      strokeWeight(3);
      fill(255, 150, 0);
      triangle(50, Th, 150, 150, 250, Th);
    }
  void shrinkTri(){
    Th++;
  }
  void restoreTri(){
    Th = 350;
  }
   
   
 void displayRect() {
      fill (128,0,128);
      stroke(255);
      strokeWeight(3);
      rect(150, 250, 200, Rh);
 }
 void shrinkRect(){
   Rh--;
 }
 void restoreRect (){
   Rh= 200;
 }
 
 
  void displayTri2() {
      fill (255, 60, 150);
      stroke(255);
      strokeWeight(3);
      triangle(50, Th2, 150, 150, 250, Th2);
  }
  void shrinkTri2(){
    Th2++;
  }
  void restoreTri2(){
    Th2 = 350;
  }
}
