
void setup(){
  size(600,400);
}
int i=0;
void draw(){
  background(255);
  for(int i=0;i<10;i++){
    fill(random(255),random(255),random(255));
    rect(random(600),random(400),random(500),random(500));
  }
}
