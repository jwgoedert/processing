  
//import processing.pdf.*;
//import processing.svg.*;

//void setup() {
//  size(400, 400);
//  //beginRecord(PDF, "everything.pdf");
//    beginRecord(PDF, "everything.svg");
//}

//void draw() {
//  ellipse(mouseX, mouseY, 10, 10);
//}

//void mousePressed() {
//  endRecord();
//  exit();
//} 
////-----
//import processing.svg.*;

//PGraphics svg = createGraphics(300, 300, SVG, "output.svg");
//svg.beginDraw();
//svg.background(128, 0, 0);
//svg.line(50, 50, 250, 250);
//svg.dispose();
//svg.endDraw();

import processing.svg.*;
import processing.pdf.*;

boolean record;

void setup() {
  size(400, 400);
  record = true;
   beginRecord(PDF, "frame-####.pdf");

}

void draw() {
  //if (record) {
  //  // Note that #### will be replaced with the frame number. Fancy!
  //  //beginRecord(SVG, "frame-####.svg");
  //  beginRecord(PDF, "frame-####.pdf");
  //}

  // Draw something good here
  //background(255);
  line(mouseX, mouseY, width/2, height/2);

  //if (record) {
  //  endRecord();
  //record = false;
  //}
}

// Use a keypress so thousands of files aren't created
void mousePressed() {
  record = false;
  endRecord();
}
