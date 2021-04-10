//data types
//variables

//numbers-strings(text/characters)-boolean-null
//arrays-objects

//functionality
//conditional logic(boolean)-loops-functions
float h = 640;
float w = 640;

void setup(){
  fill(255,255,255);//create a window of a specific size
  size(640,640); 
}

void draw() {
  //draw a circle in the middle of the window
  float randNumW = random(0, w);
  float randNumH = random(0, h);
  float ranColor = random(0,255);
  
  ellipseMode(CENTER);  // Set ellipseMode to CENTER
  fill(ranColor,200,0);  // Set fill to gray
  
  ellipse(randNumW, randNumH, 200, 200);  // Draw gray ellipse using CENTER mode
}
