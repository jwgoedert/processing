void setup() {
  size(800,800);
}

void draw() {
  for(int i = 0; i < height; i = i + 20) {
    line(0,i, width, i + 20);
    line(i,0,  i + 20, height);
  }
}
