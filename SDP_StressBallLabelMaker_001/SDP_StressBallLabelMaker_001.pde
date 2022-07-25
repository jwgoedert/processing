float cols = 3;
float rows = 10;
float margin  = 10;
float h = height/rows;
float w = width/cols;
void setup(){
  size(800,800);
}

void draw(){
  for (int i = 0; i < cols; i++){
    for (int j = 0; j < rows; j++){
      rect(i + margin, i * (width/rows + 10), (width - (cols + 1)*margin)/cols, height - (height - (rows + 1)*margin)/rows);
    }
  }
}
