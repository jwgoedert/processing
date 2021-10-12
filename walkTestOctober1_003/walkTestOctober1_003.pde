int s = 3;
int step = 20;
int start = 100;
void setup(){
  size(600,800);
  background(0,0,0);
}
int chooseDir(){
 return int(random(-s,s))*step; 
}
//void four(int s1, int s2, int e1, int e2){
void four(int s){
  println(chooseDir());
  int jump = chooseDir() + s;
  noFill();
  stroke(50,50,50);  
  quad(s, s, jump, s, jump, jump, s, jump);
  //quad(s1,s1, s1 + jump, s1, s1 + jump, s1 + jump, s1, s1 + jump);
  start = start + jump; 
  println("start", start);
}
void walk( int x1, int y1){
  int move = chooseDir();
  stroke(100,100,100);
  line(x1 + chooseDir(), y1 + chooseDir(), x1 + chooseDir(), y1 + chooseDir());
  println(move);
  start = start + move;
}

void mouseClicked(){
  println("mouseClicked");
  four(start);
}

void draw() {
  //four(mouseX);
  walk(mouseX, mouseY);
}
