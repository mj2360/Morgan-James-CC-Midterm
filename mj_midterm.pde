import processing.sound.*;


Gstring1[] gstrings = new Gstring1[1];
Gstring2[] gstrings2 = new Gstring2[1];
Gstring3[] gstrings3 = new Gstring3[1];
Gstring4[] gstrings4 = new Gstring4[1];

SoundFile synth1;
SoundFile synth2;
SoundFile synth3;
SoundFile synth4;

Shape[] shape = new Shape[4];

void setup(){
  
size(500, 500);  
rectMode(CENTER);

// load sounds
synth1 = new SoundFile(this, "synth1.wav");
synth2 = new SoundFile(this, "synth2.wav");
synth3 = new SoundFile(this, "synth3.wav");
synth4 = new SoundFile(this, "synth4.wav");

//initializeStrings
for (int i = 0; i < gstrings.length; i++) {
  gstrings [i] = new Gstring1 (320, 50, 320, 415, synth1) ;
    
  }

for (int i = 0; i < gstrings.length; i++) {
  gstrings2 [i] = new Gstring2 (345, 50, 345, 427, synth2) ;
    
  }
  
for (int i = 0; i < gstrings.length; i++) {
  gstrings3 [i] = new Gstring3 (370, 50, 370, 425, synth3) ;
    
  }
  
for (int i = 0; i < gstrings.length; i++) {
  gstrings4 [i] = new Gstring4 (390, 50, 390, 412, synth4) ;
    
  }
  
  //intialize shapes
  for (int i = 0; i < shape.length; i++) {
  shape [i] = new Shape (0);
  }
 
}

void draw(){
  if (synth1.isPlaying()){
    background(0, 255, 0);
  }else if(synth2.isPlaying()){
    background(100, 0, 200);
  }else if(synth3.isPlaying()){
    background(255, 255, 0);
  }else if(synth4.isPlaying()){
     background(0, 245, 255);
  }else{
    background(170);
  }
  
//guitar

  //neck
    fill(120, 46, 31);
    noStroke();
   rect(355, 80, 110, 60);
    fill(0);
   rect(355, 200, 90, 225);
  
   //body
     fill(0);
    noStroke();
    fill(120, 46, 31);
  triangle(480, 450, 230, 450, 355, 275);
    fill(165, 113, 78);
    noStroke();
  ellipse(355, 385, 90, 90);
    fill(0);
  ellipse(355, 385, 70, 70);


  //guitar strings
    //1
  for (int i = 0; i < gstrings.length; i++) {
   Gstring1 gstring = gstrings [i];
    gstring.display(); 
    gstring.changeC(); 
    gstring.playSynth1();
}
  
   //2
   for (int i = 0; i < gstrings2.length; i++) {
   Gstring2 gstring2 = gstrings2 [i];
    gstring2.display();  
    gstring2.changeC();
    gstring2.playSynth2();
}
  //3
  for (int i = 0; i < gstrings3.length; i++) {
   Gstring3 gstring3 = gstrings3 [i];
    gstring3.display();  
    gstring3.changeC();
    gstring3.playSynth3();
}
  //4
  for (int i = 0; i < gstrings4.length; i++) {
   Gstring4 gstring4 = gstrings4 [i];
    gstring4.display();  
    gstring4.changeC();
    gstring4.playSynth4();
}

//Shapes
  //circle
  for (int i = 0; i < shape.length; i++) {
   Shape shapes = shape [1];
    if(synth1.isPlaying()){
    shapes.restoreTri();
    shapes.restoreTri2();
    shapes.restoreRect();
    
    shapes.displayCirc(); 
    shapes.shrinkCirc();
    } 
    //Triangle
    else if(synth2.isPlaying()){
      shapes.restoreTri2();;
      shapes.restoreRect();
      shapes.restoreCirc();
      
      shapes.displayTri();
      shapes.shrinkTri();
    } 
    //Rectangle
    else if (synth3.isPlaying()){
      shapes.restoreTri();
      shapes.restoreTri2();
      shapes.restoreCirc();
     
      shapes.displayRect();
      shapes.shrinkRect();
    } 
    //Triangle2
    else if (synth4.isPlaying()){
      shapes.restoreTri();
      shapes.restoreCirc();
      shapes.restoreRect();
     
      shapes.displayTri2();
      shapes.shrinkTri2();
    }
  }
  
  //border
  noStroke();
  fill(255);
  rect(25/2, height/2, 25, 500);
  rect(500 - 25/2, height/2, 25, 500);
  rect(width/2, 500 - 25/2, 500, 25);
  rect(width/2, 25/2, 500, 25);
  
}



//grid 
//void drawGrid(){
//  int gridSize = 50;
//  int Rows = height / gridSize;
//  int Columns = width / gridSize; 
//   fill(0);
//  strokeWeight(3);
//  if (mousePressed){
//  //draw grid
//  for(int j = 1; j < Rows; j++) 
//  {
//    for(int i = 1; i < Columns; i++)
//    {
//      line(0, j * gridSize, width, j* gridSize);
//      line(i * gridSize, 0, i * gridSize, height);
//    }
//  }
//  }
//}
