// pattern Drawing——Jiaqi Yang
void setup() {
  size(1100,600);
  //background(254,221,120);
  int r=254;
  int g=221;
  int b=120;
  background(r,g,b);
  
}

void draw() {
 
}

void mousePressed() {
  stroke(1000);
  fill(223,156,191);
  ellipseMode(CENTER);
  rectMode(CENTER);


  triangle(mouseX+30, mouseY+75, mouseX+58, mouseY+20, mouseX+86, mouseY+75);
  triangle(mouseX+30, mouseY+95, mouseX+58, mouseY+20, mouseX+86, mouseY+95);
  rect(mouseX+59,mouseY+100,20,20);
  fill(234,211,199);
   rect(mouseX-5,mouseY+10,20,20);
  ellipse(mouseX-6,mouseY-20,45,50);

}

void keyPressed() {
  background(0);
}
  
// Click on the image to give it focus,
// and then press any key.

//int value = 0;
