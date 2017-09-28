float x = 0;
//Moving shapes_Jiaqi
void setup() {
  size(1280,500);
}

void draw() {
  background(25,255,245);
  
 // if(x < width) {
 //   x = x + 1;
 x = 10;
 while (x < width) {
   if (mouseY < 1) {
   x = x + 1;
 } else {
   x = x + mouseY;
  }
  
  fill(255);
  stroke(255);
  ellipse(x,300,40,40);
   ellipse(x,130,40,40);
   rect(x,30,40,40);
   rect(x,200,40,40);  
 }
} 

void keyPressed() {
  background(255);
}