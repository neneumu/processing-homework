int numWave = 8; 

Wave[] wave;
void setup()
{
  size(800,800);
  wave = new Wave[numWave];
  for (int i =0; i<numWave; i++)
  {
    wave[i] = new Wave();
  }
}
void draw()
{
  background(0);
  for (int i=0; i<numWave; i++)
  {
    wave[i].draw();
  }

}
class Wave
{
  float offset;
  float offsetspeed; 
  float waveheight; 
  float totallength; 
  float circlesize; 
  Wave()
  {
    offset = random(0, 3);
    offsetspeed = random(0.01,0.02);
    waveheight = random(50,300);
    totallength = random(2,50) * TWO_PI;
    circlesize = random(2,4);
  }

  void draw()
  {
    for (float a=0; a< totallength; a+=0.1)
    {
      float angle = a+offset;
      if (angle>totallength)
        angle = angle - totallength;
      float x = map(angle,0,totallength,0,width)*noise(angle,a)*0.5;
      float y = sin(angle) * waveheight;
      noStroke();
      pushMatrix();
      translate(width*0.5,height*0.5); 
      ellipse(x,y,circlesize,circlesize);
      popMatrix();

    }
    offset +=offsetspeed;
  }

}
