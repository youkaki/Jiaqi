
import processing.sound.*;

SoundFile smile;
SoundFile smile1;
SoundFile smile2;
SoundFile smile3;

import gifAnimation.*;

PImage[] animation1;
PImage[] animation2;
PImage[] animation3;
PImage[] animation4;
PImage img1;


Gif nonLoopingGif1;
Gif nonLoopingGif2;
Gif nonLoopingGif3;
Gif nonLoopingGif4;
//boolean pause = false;
boolean pause = false;




public void setup() {
  size(720,576);
  frameRate(100);
  background(0);
  img1= loadImage("pic.png");
  
  println("gifAnimation " + Gif.version());
  // create the GifAnimation object for playback
  nonLoopingGif1 = new Gif(this, "dog1.gif");
  nonLoopingGif1.play();
  nonLoopingGif1.ignoreRepeat();
  
  nonLoopingGif2 = new Gif(this, "dog2.gif");
  nonLoopingGif2.play();
  nonLoopingGif2.ignoreRepeat();
  
  nonLoopingGif3 = new Gif(this, "dog3.gif");
  nonLoopingGif3.play();
  nonLoopingGif3.ignoreRepeat();
  
  nonLoopingGif4 = new Gif(this, "dog4.gif");
  nonLoopingGif4.play();
  nonLoopingGif4.ignoreRepeat();
  // create the PImage array for the interactive display
  animation1 = Gif.getPImages(this, "dog1.gif");
  animation2 = Gif.getPImages(this, "dog2.gif");
  animation3 = Gif.getPImages(this, "dog3.gif");
  animation4 = Gif.getPImages(this, "dog4.gif");
  
  smile = new SoundFile(this, "smile.wav");
  smile1 = new SoundFile(this, "smile1.wav");
  smile2 = new SoundFile(this, "smile2.wav");
  smile3 = new SoundFile(this, "smile3.wav");
}




void draw() {
 // image(nonLoopingGif1,width/8,height/8,nonLoopingGif1.width,nonLoopingGif1.height);
  image(nonLoopingGif1,width/8,height/8,nonLoopingGif1.width,nonLoopingGif1.height);
  image(nonLoopingGif2,width/8+nonLoopingGif1.width + width/16,height/8,nonLoopingGif1.width,nonLoopingGif1.height);
  image(nonLoopingGif3,width/8,height/8+nonLoopingGif1.height+height/16,nonLoopingGif1.width,nonLoopingGif1.height);
  image(nonLoopingGif4,width/8+nonLoopingGif1.width + width/16,height/8+nonLoopingGif1.height+height/16,nonLoopingGif1.width,nonLoopingGif1.height);
  //image(animation[(int) (animation.length / (float) (width) * mouseX)], width - 10 - animation[0].width, height / 2 - animation[0].height / 2);
  

   
   
 
}


void mousePressed() {
  if(mouseX> width/8 && mouseX <width/8 + nonLoopingGif1.width && mouseY>height/8 && mouseY< height/8+nonLoopingGif1.height){
  nonLoopingGif1.play();
  smile.play();

 }else if(mouseX> width/8+width/16+nonLoopingGif1.width && mouseX <width/8+width/16+nonLoopingGif1.width*2 && mouseY>height/8 && mouseY< height/8+nonLoopingGif1.height){
   nonLoopingGif2.play();
   smile.stop();
   smile1.play();
 }else if(mouseX> width/8 && mouseX <width/8 + nonLoopingGif1.width && mouseY>height/8+nonLoopingGif1.height+height/16 && mouseY< height/8+nonLoopingGif1.height+height/16+nonLoopingGif1.height){
   nonLoopingGif3.play();
   smile.stop();
   smile1.stop();
   smile2.play();
 }else if(mouseX> width/8+width/16+nonLoopingGif1.width && mouseX <width/8+width/16+nonLoopingGif1.width*2 && mouseY>height/8+nonLoopingGif1.height+height/16 && mouseY< height/8+nonLoopingGif1.height+height/16+nonLoopingGif1.height){
   nonLoopingGif4.play();
   smile.stop();
   smile1.stop();
   smile2.stop();
   smile3.play();
 }else{

 image(img1,0,0);
 
 } 
}