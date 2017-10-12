float posX, posY, amplitude = 40, variationY, variationY2, temps = 0, WaveSpeed, completeCycle, subCycle;
int startX = 1, endX = 900, step=6, distanceX;
color color_1, color_2;

void setup() {
  size(700,500);
  background(0);
  color_1 = color(255);
  color_2 = color(255);

  noStroke();
  smooth();
  rectMode(CENTER);
  distanceX = endX-startX;
  completeCycle = TWO_PI/float(distanceX);
  subCycle = (TWO_PI*5)/float(distanceX);
}


void draw() {
  background(0);

  fill(color_1);
  posY = 75;
  WaveSpeed = 0.0000001;

  for (int i = startX; i<endX; i+=step) {
    temps += (millis()%i)*WaveSpeed;
    variationY = sin(((i-startX)+temps)*completeCycle);
    variationY*=amplitude;
    ellipse(i, (posY+variationY), 5, 5);
  }

  fill(color_2);
  posY = 150;
  WaveSpeed = 0.00005;
  for (int i = startX; i<endX; i+=step) {
    temps += (millis()%i)*WaveSpeed;
    variationY = sin(((i-startX)+temps)*completeCycle);
    variationY*=(amplitude*0.2)+((i*i)/(4000));
    ellipse(i, (posY+variationY), 5, 5);
  }
  
    fill(color_2);
  posY = 165;
  WaveSpeed = 0.00005;
  for (int i = startX; i<endX; i+=step) {
    temps += (millis()%i)*WaveSpeed;
    variationY = sin(((i-startX)+temps)*completeCycle);
    variationY*=(amplitude*0.2)+((i*i)/(4000));
    ellipse(i, (posY+variationY), 5, 5);
  }
      fill(color_2);
  posY = 180;
  WaveSpeed = 0.00005;
  for (int i = startX; i<endX; i+=step) {
    temps += (millis()%i)*WaveSpeed;
    variationY = sin(((i-startX)+temps)*completeCycle);
    variationY*=(amplitude*0.2)+((i*i)/(4000));
    ellipse(i, (posY+variationY), 5, 5);
  }
  

  
  ellipse(176, 466, 265, 265);
  ellipse(76, 166, 65, 65);

}