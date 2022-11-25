class Pantallas {
  PFont font;
  PImage fin;
  PImage intro;
  float x;
  float y;

  Pantallas(PImage pan, PImage img) {
    font= loadFont("ErasITC-Bold-30.vlw");
    intro = img;
    fin = pan;
  }
  void displayFondo() {
    background(255,196,77);
    for (int i=10; i<width; i+=100) {
      for (int o=50; o<height; o+=100) {
      
      }
    }
  }
  void displayInicio() {
    image(intro, 0, 0, 800, 700);
  }

  void displayFin() {
    push();
    image(fin, 0, 0, 800, 700);
    if ( DEBUG ) {
      println(x, y);
      stroke(255);
      noFill(); 
      rect(x, y, 70, 70);
    }
    pop();
  }
  void boton() {
    rectMode(CENTER);
    fill(60, 130, 219);
    rect(width/2, 600, 300, 100);
    fill(0);
    textFont(font);
    textSize(50);
    text("RESTART", 290, 615);
    push();
    if ( DEBUG ) {
      println(x, y);
      stroke(255);
      noFill(); 
      rect(x, y, 70, 70);
    }
    pop();
  }
}
