PFont font;
 int t, x; 
void setup() {
 size(900, 900);
 font = createFont("微软雅黑", 23);
 textSize(90);
 } 
 void draw() { 
 clear(); 
 t++; 
 textFont(font);
 textSize(100);
 text("我学不会编程", 100, 400); 
 for (x=0; x<800; x++) copy(x, 0, 1, 800, x, -int(min(pow(tan((x-t+99*noise(x))*.003), 16)*9, 200)*sin((x-t)*.006)), 1, 720);
 }
