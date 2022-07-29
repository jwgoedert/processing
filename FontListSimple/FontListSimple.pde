import processing.svg.*;
PFont textFont;

String[] fontList = PFont.list();

void setup(){
  size(1500,1000);
  background(255);
  noLoop();
  //beginRecord(SVG, "SVGTest006.svg");
}

void draw(){
  for(int i = 1; i < fontList.length; i++){
    println(fontList[i]);
    fill(0);
    text(fontList[i], width/2, height/2);
  }
}
