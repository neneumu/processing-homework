PImage img;
int smallPoint,largePoint;

void setup() {
  size(1100, 1100);
  img=loadImage("gate.png");
  smallPoint=5;
  largePoint=50;
  imageMode(CENTER);
  background(255);
  noStroke();
  frameRate(10000);
}

void draw() {
  float pointillize=map(mouseX,0,width,smallPoint,largePoint);
  int x =int(random(img.width));
  int y =int(random(img.height));
  color pix =img.get(x,y);
  fill(pix,128);
  rect(x,y,pointillize,pointillize);
}
 
