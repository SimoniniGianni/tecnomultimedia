class Fin{
  PImage img;
  float x;
  float y;
  float ax;
  float ay;
  
  Fin(PImage pan,float x,float y,float AX,float AY){
    img=pan;
    x=X;
    y=Y;
    ax=AX;
    ay=AY;
    img=loadImage("gameover.png");
  }
  
   void display(){
 push();
  image(img,x,y,ax,ay);
  if ( DEBUG ){
      println(x,y);
      stroke(255);
      noFill(); 
      rect(x,y,70,70);}
      pop();
 }
 void boton(){
  rectMode(CENTER);
  fill(100,255,100);
  rect(width/2,600,300,100);
  fill(0);
  textFont(font);
  textSize(50);
  text("EXIT", 250, 615);
  push();
    if ( DEBUG ){
      println(x,y);
      stroke(255);
      noFill(); 
      rect(x,y,70,70);}
      pop();
 }
}
