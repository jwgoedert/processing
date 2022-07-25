float cols = 3;
float rows = 10;
float margin  = 5;
float h = 0;
float w = 0;
float count = 0;
float holeSize = 0;
void setup(){
  size(1600,800);
  background(255);
  h = height/rows;
  w = width/cols;
  holeSize = h/3;
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
      textAlign(LEFT, CENTER);
      text("Testing This Sample Stress", xStart + h, yStart, w - 4*margin, h - 4*margin);
      stroke(0);
      fill(255);
      ellipse(xStart+ h/2, yStart + h/2 - margin, holeSize, holeSize);
      count++;
    }
  }
}
