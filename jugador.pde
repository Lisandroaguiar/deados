class Jugador{
//CAMPOS (variables)
float posX, posY;
float tamano;
float velocidad;
//int numFrames = ??? ;
//PImage [] jugador = new PImage [numFrames];
//CONSTRUCTOR “setup” de mi clase
Jugador(float posX_,float posY_){
  posX=posX_;
  posY=posY_;
tamano =100;
velocidad = 0.5;
/*for (int i = 0;i < numFrames; i++) {
      jugador[i] = loadImage("NOMBREARCHIVO”+ i + ".png");
    }*/
}
//MÉTODOS (funciones)
void dibujar(){
 //image(this.jugador[frameCount%numFrames], this.posX, this.posY);
 circle(posX,posY,tamano);
}
void actualizar(){posY-=velocidad;
if( this.posY<0){this.posY=501;}
if( this.posX>450){this.posX=450;}
if( this.posX<50){this.posX=50;}}
void mover(){
if(keyPressed==true && key=='d'){posX ++;}
if(keyPressed==true && key=='a'){posX --;}

}
void colision(Obstaculos botella){
  float x_botella= botella.getX();
  float y_botella= botella.getY();
  
  float d_colision= dist(x_botella, y_botella,posX,posY);
  if(d_colision<tamano/2){ velocidad-=0.25; println("colision");

  
  
  }
  botella.rebotar();
  }
}
