PImage testImg1;
import processing.svg.*;
import processing.pdf.*;

boolean dark;

void setup(){
size(800,600);
testImg1 = loadImage("testImg1.jpg");
}

void draw(){
  //image(testImg1, 0,0);
  loadPixels();
  testImg1.loadPixels();
  //testImg1.filter(GRAY);
  for (int x = 0; x < width; x++){
    for (int y = 0; y < height; y++){
      int loc = x+y*width;
      float b = brightness(testImg1.pixels[loc]);
      if (b > 100){
        pixels[loc] = color(255,255,255,0);
        dark = false;
      } else {
        pixels[loc] = color(0);
        dark = true;
        println("loc is: " + loc + "  x: " + x + "  y: " +  y);
      }
      if(x == width && y == height){
    }
      //pixels[loc] = testImg1.pixels[loc];
    }
  }
  
  updatePixels();
  String mx = str(mouseX);
  textSize(50);
  text(mx,  width*.75, height*.9);
  fill(100,100,100);
  
  if (dark = true){
      textSize(20);
      text("DARK!",  random(0,width), random(0,height));
      fill(0,0,0);
  }
}

void mousePressed() {
  beginRecord(PDF,"testin.pdf");
  endRecord();
}
