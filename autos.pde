class Auto{
  PImage img;
  float Ax;
  float Ay;
  float Aspeed;
  float mov;
  float miAncho, miAlto;
  
  Auto(PImage archivo, float tempAx, float tempAy,float tempAspeed,float space){
  img=archivo;
  Ax=tempAx;
  Ay=tempAy;
  Aspeed=tempAspeed;
  mov=space;
  img=loadImage("1D.png");
  miAncho = 100;
  miAlto = 70;
  }
  
  void drive(){
    Ax+=Aspeed;
    if(Ax>width){
      Ax=-100;}
      
    if(Ay>height){
      Ay=random(-500,-100);} }
      
  void display(){
    push();
     imageMode(CENTER);
      image(img,Ax,Ay,90,70);
      pop();
    }
      boolean colision( float x_, float y_, float ancho_, float alto_) {

    if ( Ax-miAncho/2<x_+ancho_/2
      && Ax+miAncho/2>x_-ancho_/2
      && Ay-miAlto/2<y_+alto_/2
      && Ay+miAlto/2>y_-alto_/2 )
      { 
      return true; }
      else{ return false;}
      }}
