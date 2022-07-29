import processing.svg.*;
Table flavors;
Table fonts;
PFont fontChoice;
float cols = 4;
float rows = 8;
float margin  = 5;
float h, w, holeSize;
float count = 0;
int fontSize = 36;

void setup(){
  flavors = loadTable("SDP_SBS_Flavors_001.csv", "header");
  fonts = loadTable("SDPFontSelections.csv", "header");
  //println(flavors.getRowCount() + "total flavors");
  //println(flavors.rows());
  //println(fonts.getStringColumn("Typeface"));
  for (TableRow row : flavors.rows()){
    String flavor = row.getString("Flavor");
    println(flavor);
  }
  //printArray(fontList);
  size(1500,1000);
  background(255);
  h = height/rows;
  w = width/cols;
  holeSize = h/5;
  noLoop();
  //beginRecord(SVG, "SVGTest012.svg");
  fontChoice = createFont("OldLondonAlternate", fontSize);
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
          
      //int fontChoice = (int)random(0,fontList.length);
      //PFont f = createFont(fontList[fontChoice], 32);
      int fontChoice = (int)random(0,fonts.getRowCount());
      PFont f = createFont(fonts.getString(fontChoice, "Typeface"), fontSize);
      //PFont f = createFont("DiamondRing-Regular", 32);
      //PFont f = createFont("CooperBlack", fontSize);
      
      //println(f);
      textFont(f, fontSize);
      //textFont(f, random(24, 48));
      textAlign(LEFT, CENTER);
      TableRow flavor = flavors.getRow((int)count);
      text(flavor.getString("Flavor"), xStart + h/2, yStart + margin, w - 4*margin, h - 4*margin);
      noFill();
      strokeWeight(1);
      stroke(0);
      //fill(0);
      //text("OldLondon", xStart + h/2, yStart + margin, w - 4*margin, h - 4*margin);
      stroke(0);
      //fill(255);
      
      ellipse(xStart+ h/4, yStart + h/2 - margin, holeSize, holeSize);
      count++;
      fill(0);
    }
  }
  //endRecord();
}
