class Poder {
  PImage img;
  float Ax;
  float Ay;
  float Aspeed;
  float mov;
  float miAncho, miAlto;

  Poder(PImage archivo, float tempAx, float tempAy, float tempAspeed, float space) { // Objeto y su archivoo de memoria
    img=archivo;
    Ax=tempAx;
    Ay=tempAy;
    Aspeed=tempAspeed;
    mov=space;
    img=loadImage("poder.png");
    miAncho = 40;
    miAlto = 40;
  }

  void drive() {
    Ax+=Aspeed;
    if (Ax>width) {
      Ax=-100;
    }

    if (Ay>height) {
      Ay=random(-500, -100); 
    }
  }

  void display() {
    push();
    imageMode(CENTER);
    image(img, Ax, Ay, 200, 100);
    pop();
  }
  boolean colision( float x_, float y_, float ancho_, float alto_) {

    if ( Ax-miAncho/2<x_+ancho_/2
      && Ax+miAncho/2>x_-ancho_/2
      && Ay-miAlto/2<y_+alto_/2
      && Ay+miAlto/2>y_-alto_/2 )
    { 
      return true;
    } else { 
      return false; //boolean que permite volver todo a default "perder"  
    }
  }
}
