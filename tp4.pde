PImage Inicio;
PFont font;
int estado=0;
boolean DEBUG= false;

Auto[]myAuto=new Auto[4];
Prota myProta;
Fin myFin;
void setup(){
  size(600,700);
  font= loadFont("ErasITC-Bold-30.vlw");
  Inicio=loadImage("INICIO.jpg");
  myProta= new Prota(loadImage("rana.png"),width/2,650,4);
  myFin= new Fin(loadImage("gameover.png"),0,0,600,700);
  for(int i=0;i<myAuto.length; i++){
   myAuto[i] = new Auto(loadImage("1D.png"),8, i*height/myAuto.length,random(3,6),3); 
  }
}

void draw(){
   if ( estado == 0) {
    image(Inicio,0, 0,600,700);
     textFont(font);
    textSize(35);
    fill(0,255,200);
    text("Presiona 'x' para iniciar", 100, 200); 
    text (" 'w' para avanzar", 150, 500);
   }
     else if (estado == 1) { 
  background(100);
       for(int i=10;i<width;i+=100){
     for(int o=50;o<height;o+=100){
       fill(255);
       rect(i,o,70,20);

  }}
 
  for(int i=0;i<myAuto.length;i++){
  myAuto[i].display();
  myAuto[i].drive();
   if ( myAuto[i].colision(myProta.x,myProta.y , myProta.ancho , myProta.alto)){
    estado=2;
      }
  }

  myProta.display();
  myProta.mover();
 }
 if (estado==2){
   myFin.display();
   myFin.boton();}
   else if (estado ==1);
   
}

 void keyPressed() {
  //pantalla 1
 if ( estado == 0 ) {
    if (key == 'x' || key == 'X') {
      estado = 1;}
  }
}
void mousePressed(){
    if (estado == 2){
      myFin.boton();{exit();
     }
  }
}
