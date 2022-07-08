//Trabajo Practico N#3

//Profesor: David Bedoian
//Alumno: Simonini Ibañez Gianni  
//Numero de Legajo: 91572/5


//carga de imagenes de dados y personajes.
PImage [] images = new PImage[6];
String [] filenames = {"a.png","b.png","c.png","d.png","e.png","f.png"};
PImage liebre;
PImage tortuga;
PFont fn;

//nube
int l,k,v1;

//valor de rectangulo 1.
int x1 = 700;
int y1 = 50;
int w1 = 150;
int h1 = 50;

//valor de rectangulo 2.
int x2 = 700;
int y2 = 370;
int w2 = 150;
int h2 = 50;

//jugador 1 o jugador 2.
float player = 1;

//dado
float suma1 =0;
float suma2 =0;
float mov1 = 0;
float mov2 = 0;

//pantallas
int pantalla = 0;

//boton de play
int playx=300;
int playy=200;
int playw=300;
int playh=100;

//boton de replay
int replayx=300;
int replayy=400;
int replayw=300;
int replayh=100;

void setup(){  
  for (int i = 0; i < filenames.length; i++){
  images[i] = loadImage(filenames[i]);} //array que carga las fotos
  
  tortuga = loadImage("tortuga.png");
  liebre = loadImage("liebre.png");
  
  v1=1;
  k=50;
  l=100;
  
  fn=loadFont("BookmanOldStyle-30.vlw"); 
  size(900,600);
}
void draw(){
  
  //Pantalla 1
  if(pantalla==0){
    background(50,170, 70);
    pushStyle();
    rect(playx,playy,playw,playh);
    rect(150,310,600,150);
    popStyle();
    pushStyle();
    textFont(fn);
    textSize(50);
    fill(0);
    text("JUGAR",365,270);
    popStyle();
    pushStyle();
    fill(0);
    textSize(20);
    text("¿Como Jugar?",365,330);
    text("Este juego se tiene que jugar de a dos. \nCada uno tiene un turno para tirar los dados. \nMientras mas alto sea el numero, mas avanzaras. \nel primero en cruzar la meta gana. \n¡A Jugar! ",165,350);
    text("Jugador 2",176,160);
    text("Jugador 1",640,160);
    popStyle();
    image(liebre,640,190);
    image(tortuga,170,236);
   
  }else{
  println(player);
  background(60,170,215);

//cesped
  pushStyle();
  fill(60,210,77);
  rect(0,400,650,200);
  popStyle();
  
  for(int i=0; i<650; i+=20) {
  for(int o=400; o<600; o+=25){
  fill(50,170, 70);
  rect(i,o,650/100,20);
    }
  }
  for(int i=0; i<650; i+=20) {
  for(int o=400; o<600; o+=25){
  fill(50,220, 70);
  rect(i+6,o+5,650/100,20);
    }
  }
  for(int i=0; i<650; i+=20) {
  for(int o=400; o<600; o+=25){
  fill(50,255, 70);
  rect(i+12,o+2,650/100,20);
    }
  }
//nubes
  push();
  fill(255);
  ellipse(k,l,150,40);
  if(k>=400-150/2){
  v1=v1*-1;}
  if(k<=100-150/2){
  v1=v1*-1;}
  ellipse(k+200,l+100,150,40);
  if(k>=600-150/2){
  v1=v1*-1;}
  if(k<=0-150/2){
  v1=v1*-1;}
  k+=v1*1;
  pop();
  
//hud
  pushStyle();
  fill(255);
  rect(650,0,300,600);
  popStyle();
  pushStyle();
  textFont(fn);
  textSize(25);
  fill(0);
  text("Jugador 1",724,35);
  text("Jugador 2",724,352);
  popStyle();
  
//Jugadores
  if(player==1){
  fill(200,0,0);
  rect(x1,y1,w1,h1);
  pushStyle();
  textFont(fn);
  textSize(20);
  fill(255);
  text("Tirar",755,72);
  text("dados",750,87);
  popStyle();
  } 
  if(player==2){
  fill(0,0,200);
  rect(x2,y2,w2,h2);
  pushStyle();
  textFont(fn);
  textSize(20);
  fill(255);
  text("Tirar",755,392);
  text("dados",750,407);
  popStyle();
  }
//meta
  for (int q1=590;q1<650;q1+=15){
  for(int q2=400;q2<600;q2+=15){
  if((q1+q2)%2==0) {fill(255);}
  else{fill(10);}
  rect(q1,q2,15,15);
    }
  }
//carga de peronajes
  image(liebre,mov1,350);
  image(tortuga,mov2,500);
  
//carga de imagenes dependiendo de un valor (dados) jugador 1
  if (suma1>10){
    image(images[0],745,103);
  }
  if (suma1>20){
    image(images[1],745,103);
  }
  if (suma1>30){
    image(images[2],745,103);
  }
  if (suma1>40){
    image(images[3],745,103);
  }
  if (suma1>50){
    image(images[4],745,103);
  }
  if (suma1>60){
    image(images[5],745,103);
  }
//carga de imagenes dependiendo de un valor (dados) jugador 2
  if (suma2>10){
    image(images[0],745,423);
  }
  if (suma2>20){
    image(images[1],745,423);
  }
  if (suma2>30){
    image(images[2],745,423);
  }
  if (suma2>40){
    image(images[3],745,423);
  }
  if (suma2>50){
    image(images[4],745,423);
  }
  if (suma2>65){
    image(images[5],745,423);
  }  
}
  //evalua quien gana
  if(mov1>500){
   pantalla=2;
 }
  if(mov2>500){
   pantalla=3;
 }
  if(pantalla==2){
   background(255,0,0);
   rect(300,400,300,100);
   rect(300,100,300,100);
   rect(300,240,300,110);
   pushStyle();
   fill(0);
   textSize(40);
   text("REPLAY",375,467);
   popStyle();
   pushStyle();
   textSize(30);
   fill(0);
   text("¡PLAYER 1 \nGANADOR!",365,142);
   text("Made By: \nSebastián Vargas & \nGianni Simonini",315,269);
   popStyle();
   image(liebre,640,190);
   
 }
  if(pantalla==3){
   background(0,0,255);
   rect(300,400,300,100);
   rect(300,100,300,100);
   rect(300,240,300,110);
   pushStyle();
   fill(0);
   textSize(40);
   text("REPLAY",375,467);
   popStyle();
   pushStyle();
   textSize(30);
   fill(0);
   text("¡PLAYER 2 \nGANADOR!",365,142);
   text("Made By: \nGianni Simonini & \nSebastián Vargas",315,269);
   popStyle();
   image(tortuga,170,236);
 }
}

void mousePressed(){
  //boton que nos vuelve a la pantalla 0
  if((mouseX>replayx)&&(mouseY>replayy)&&(mouseX<replayx+replayw)&&(mouseY<replayy+replayh)){
      pantalla=0;
      mov1=0;
      mov2=0;
      suma1=0;
      suma2=0;
      player=1;
  }
  //boton que nos pasa a la pantalla 1
  if((mouseX>playx)&&(mouseY>playy)&&(mouseX<playx+playw)&&(mouseY<playy+playh)){
      pantalla+=1;
  }
  //boton que tira los dados del jugador 1
  if((mouseX>x2)&&(mouseY>y2)&&(mouseX<x2+w2)&&(mouseY<y2+h2)){
      player=1;
      mov2+=suma2=random(10,65);
  }
  //boton que tira los dados del jugador 2
  if((mouseX>x1)&&(mouseY>y1)&&(mouseX<x1+w1)&&(mouseY<y1+h1)){
      player=2;
      mov1+=suma1=random(10,65);
  }
}
