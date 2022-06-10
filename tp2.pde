//https://youtu.be/a51I4ZK3c34
//Trabajo Practico #2
//Profesor: David Bedoian
//Gianni Simonini 
//Legajo: 91572/5

int a; //defino el int                             

void setup(){
  
  frameRate(40); //defino los framerates 
  a = 800;       //defino el valor del int
  size(500,500); //defino el tamaño de la pantalla                    
}
void draw(){
  println(a);    //me dice el valor de int
  fill(random(200+100),200,100); //random en los colores por el parpadeo
  for(int c= a+=1; c>0; c-= 10) { 
    ellipse(width/2, height/2, c, c); //crea ellipses y van a grandandose con el tiempo
  } 
  if (a>900) {  //hace lo mismo que el anterior for,pero; tiene otro color. esto se da solo si el valor de int es mayor que 900
    fill(200,random(200+100),100); 
    for(int c= a; c>0; c-=10) {
    ellipse(width/2, height/2, c, c); 
    }
  }
}
