void setup(){
  size(800,800);
}

void draw(){
  float ranR = random(0,255);
  float ranG = random(0,255);
  float ranB = random(0,255);
  background(int(ranR),int(ranG),int(ranB));
  println(int(ranR),int(ranG),int(ranB));
}
