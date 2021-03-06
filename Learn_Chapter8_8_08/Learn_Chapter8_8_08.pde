
for (int x = 0; x < 100; x++) {
  float n = norm(x, 0.0, 100.0);
  float y = pow(n, 4);
  y *= 100;
  point(x,y); 
}

//inverse curve
for (int x = 0; x < 100; x++) {
  float n = norm(x, 0.0, 100.0);
  float y = pow(n, 0.4);
  y *= 100;
  point(x,y); 
}

//use norm and pow 
noFill();
smooth();
for (int x = 0; x < 100; x += 5) {
  float n = norm(x, 0.0, 100.0);
  float y = pow(n, 4);
  y *= 100;
  strokeWeight(n * 5);
  ellipse(x, y, 120, 120); 
}


