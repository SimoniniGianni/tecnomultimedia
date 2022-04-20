//Simonini Ibañez Gianni

void setup() {
  size(400,400);
}
void draw()  {
  background(125); //Fondo
  
  fill(255);
  rect(100,100,100,100,20); 
  fill(250);  
  rect(200,100,100,100,20); //fondo blanco de los ojos
  
  fill(0); 
  rect(110,110,50,50,20); //parte negra del ojo izquierdo
    
  fill(0);
  rect(210,110,50,50,20); //parte negra del ojo derecho
  
  fill(200,0,50);
  rect(100,200,100,50,20); //nariz
  
  fill(0);
  rect(100,250,200,50,20); //detalle negro en la boca
  
  fill(255);
  rect(98,250,200,50,20); //blanco de la boca
  
  line(150,270,300,270); //linea que divide la boca
  
  fill(0);
  rect(110,65,80,30,20); //ceja izquierda
  
  fill(0);
  rect(210,50,80,30,20); //ceja derecha
  
  textSize(50);
  fill(255);
  text("Gian",100,350);
  fill(40);
  text("Gian",102,352); //Texto
}
