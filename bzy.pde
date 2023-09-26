
float alpha;

void setup(){
  size(1400, 1400);
  background(255);
}

void draw(){
  alpha += 0.01;
  fill(20,80,120,random(2,200));
  rect(0, 0, width, height);
  float die = abs(290*sin(alpha));
  fill(die);
  float ellipseSizeX = map(mouseX, 0, width, 5, 50);
  float ellipseSizeY = map(mouseY, 0, height, 5, 50);
  ellipse(mouseX,mouseY, ellipseSizeX*20, ellipseSizeY*20);
}
