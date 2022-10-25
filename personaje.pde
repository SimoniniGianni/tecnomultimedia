class Prota{
 PImage img;
  float x;
  float y;
  float t;
  float ancho,alto;

 
  Prota(PImage arc, float tempAx, float tempAy ,float mov){
  img=arc;
  x=tempAx;
  y=tempAy;
  t=mov;

  img=loadImage("rana.png");
  ancho = 70;
  alto = 70;
  }
  void mover(){
   if(keyPressed){
    if(key =='w'){
      y-= t;}}
  if(keyPressed){
    if(key =='a'){
      x-= t;}}
  if(keyPressed){
    if(key =='d'){
      x+= t;}
      
  if(y<=0){
      y=650;
  }}}
  void display(){
    push();
  imageMode(CENTER);
  image(img,x,y,ancho,alto);
      if ( DEBUG ){
      println(x,y);
      stroke(255);
      noFill(); 
      rect(x,y,70,70);}
      pop();
}}
