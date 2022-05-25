//Tp1Lenguaje Mulimedial
//Nombre:Gianni Simonini
//Legajo:91572/5

PImage h;
PImage p;
PImage o;
PImage u;
PImage r;
PImage f; //carga de imagenes

int v = 1; //agregando un valor al int para ir cambiando de pantalla

PFont fuente1; //cargando la fuente 

void setup () {
  size(600,600);//tamaño de pantalla
  
  fuente1 = createFont("OldNewspaperTypes.ttf",40);
  textFont(fuente1);
  textSize(40);
  textAlign(CENTER,CENTER); //configuración de textos
  
  h = loadImage ("imagensiete.jpg");
  p = loadImage ("imagenuno.jpg");
  o = loadImage ("imagendos.jpg");
  u = loadImage ("imagentres.jpg");
  r = loadImage ("imagencuatro.jpg");
  f = loadImage ("fin.jpg");
  h.resize(600,600);
  p.resize(600,600);
  o.resize(600,600);
  u.resize(600,600);
  r.resize(600,600);
  f.resize(600,600); //cargado de imagenes y configuracion de resolución 
}
void draw(){
  if (v == 1);{
    background(255);
    image(h,0,0); //carga de imagen
    text("El Castillo Ambulante",width/2,400);
    text("Click para comenzar",width/2,550); //pantalla 1
  } 
  if (v==2){
    background(255);
    image(o,0,0);
    text("Dirección y producción",width/2,500);
    text("Hayao Miyazaki",width/2,550); //pantalla 2
  }
  if (v==3){
    background(255);
    image(p,0,0);
    text("Sonido  Kazuhiro Wakabayashi",width/2,550); //pantalla 3
  }
  if (v==4){
    background(255);
    image(r,0,0);
    text("Production company",width/2,500);
    text("Studio Ghibli",width/2,550);//pantalla 4
  }
  if (v==5){
    background(255);
    image(u,0,0);
    text("Música  Joe Hisaishi",width/2,550); //pantalla 5
  }
  if (v==6){
    image(f,0,0);
    text("Cick para reiniciar",width/2,500); //pantalla 6 final
  }
  if (v==7){
    v=v-6; //resta al int para volver al inicio
  }
    
}
void mousePressed(){
  v+=1; //va sumando al int para cambiar de pantalla
}
