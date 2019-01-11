size(400, 400);

smooth();
line(20, 20, 80, 20);
strokeWeight(6);
line(20, 40, 80, 40);
strokeWeight(18);
line(20, 60, 80, 60);

strokeCap(ROUND);
line(20, 100, 80, 100);
strokeCap(SQUARE);
line(20, 120, 80, 120);
strokeCap(PROJECT);
line(20, 140, 80, 140);

strokeWeight(12);
strokeJoin(BEVEL);
rect(20, 220, 80, 20);
strokeJoin(MITER);
rect(20, 260, 80, 20);
strokeJoin(ROUND);
rect(20, 300, 80, 20);
