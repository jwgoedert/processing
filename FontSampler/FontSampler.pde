import processing.svg.*;
PFont london;
String[] fontList = PFont.list();
float cols = 12;
float rows = 60;
float margin  = 5;
float h = 0;
float w = 0;
float count = 0;
float holeSize = 0;
Table flavors;
int colWidth = 150;
void setup(){
  size(1500,1000);
  background(255);
  h = height/rows;
  w = width/cols;
  holeSize = h/5;
  noLoop();
  beginRecord(SVG, "SVGTest009.svg");
  london = createFont("OldLondonAlternate", 32);
}

void draw(){
  float xStart = 0;
  float yStart = 0;
  printArray(fontList);
  for (int i = 0; i < fontList.length; i++){
      fill(255);
      //xStart = w + margin;
      yStart = yStart + h;
      if(yStart > height){
        xStart = xStart + w + margin;
        yStart = yStart - height;
        //println(yStart, xStart);
      }
      PFont f = createFont(fontList[i], 24);
      //println(f);
      textFont(f, 10);
      textAlign(LEFT, CENTER);
      //TableRow font = fontList.getRow(i);
      fill(0);
      //text(fontList[i], xStart + h/2, yStart + margin, w - 4*margin, h - 4*margin);
      text(fontList[i], xStart + h/2, yStart + margin);
      stroke(0);
      fill(255);
      count++;
  }
  endRecord();
}
