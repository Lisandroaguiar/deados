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
tamano =20;
velocidad = 1;
/*for (int i = 0;i < numFrames; i++) {
      jugador[i] = loadImage("NOMBREARCHIVO”+ i + ".png");
    }*/
}
//MÉTODOS (funciones)
void dibujar(){
 //image(this.jugador[frameCount%numFrames], this.posX, this.posY);
 circle(posX,posY,100);
}
void actualizar(){posY-=0.25;
if( this.posY<0){this.posY=501;}
if( this.posX>450){this.posX=450;}
if( this.posX<50){this.posX=50;}}
void mover(){
if(keyPressed==true && key=='d'){posX += velocidad;}
if(keyPressed==true && key=='a'){posX -= velocidad;}

}
}
