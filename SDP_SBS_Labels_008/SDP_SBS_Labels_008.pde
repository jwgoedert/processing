import processing.svg.*;
PFont london;
String[] fontList = PFont.list();
float cols = 4;
float rows = 8;
float margin  = 5;
float h = 0;
float w = 0;
float count = 0;
float holeSize = 0;
Table flavors;
Table fonts;
void setup(){
  flavors = loadTable("SDP_SBS_Flavors_001.csv", "header");
  fonts = loadTable("FontOptions.csv", "header");
  //println(flavors.getRowCount() + "total flavors");
  //println(flavors.rows());
  //for (TableRow row : flavors.rows()){
  //  String flavor = row.getString("Flavor");
  //  println(flavor);
  //}
  //printArray(fontList);
  size(1500,1000);
  background(255);
  h = height/rows;
  w = width/cols;
  holeSize = h/5;
  noLoop();
  beginRecord(SVG, "SVGTest010.svg");
  london = createFont("OldLondonAlternate", 32);
}

void draw(){
  float xStart = 0;
  float yStart = 0;
  for (int i = 0; i < cols; i++){
    for (int j = 0; j < rows; j++){
      fill(255);
      xStart = i * w + margin;
      yStart = j * h + margin;
      rect(xStart, yStart, w - 2*margin, h - 2*margin, 16);
      rect(xStart + margin, yStart + margin, w - 4*margin, h - 4*margin, 16);
      fill(0,0,0);
      textSize(h/4);
      
      int fontChoice = (int)random(0,fontList.length);
      //PFont f = createFont(fontList[fontChoice], 32);
      //PFont f = createFont("DiamondRing-Regular", 32);
      PFont f = createFont("CooperBlack", 32);
      println(f);
      textFont(f, 64);
      //textFont(f, random(24, 48));
      textAlign(LEFT, CENTER);
      TableRow flavor = flavors.getRow((int)count);
      //text(flavor.getString("Flavor"), xStart + h/2, yStart + margin, w - 4*margin, h - 4*margin);
      noFill();
      strokeWeight(1);
      stroke(0);
      //fill(0);
      text("OldLondon", xStart + h/2, yStart + margin, w - 4*margin, h - 4*margin);
      stroke(0);
      //fill(255);
      
      ellipse(xStart+ h/4, yStart + h/2 - margin, holeSize, holeSize);
      count++;
      fill(0);
    }
  }
  endRecord();
}
