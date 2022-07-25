import processing.svg.*;
PFont london;
String[] fontList = PFont.list();
float cols = 3;
float rows = 10;
float margin  = 5;
float h = 0;
float w = 0;
float count = 0;
float holeSize = 0;
void setup(){
  printArray(fontList);
  size(1600,1000);
  background(255);
  h = height/rows;
  w = width/cols;
  holeSize = h/3;
  noLoop();
  beginRecord(SVG, "SVGTest001.svg");
  london = createFont("OldLondonAlternate", 32);
}

void draw(){
  float xStart = 0;
  float yStart = 0;
  for (int i = 0; i < cols; i++){
    for (int j = 0; j < rows; j++){
      //rect(i * w, j * h, w, h);
      fill(255);
      xStart = i * w + margin;
      yStart = j * h + margin;
      rect(xStart, yStart, w - 2*margin, h - 2*margin, 16);
      rect(xStart + margin, yStart + margin, w - 4*margin, h - 4*margin, 16);
      fill(0,0,0);
      textSize(h/4);
      
      int fontChoice = (int)random(0,fontList.length);
      PFont f = createFont(fontList[fontChoice], 32);
      textFont(f, random(16, 48));
      textAlign(LEFT, CENTER);
      text("Testing This Sample Stress", xStart + h, yStart, w - 4*margin, h - 4*margin);
      stroke(0);
      fill(255);
      ellipse(xStart+ h/2, yStart + h/2 - margin, holeSize, holeSize);
      count++;
    }
  }
  endRecord();
}
