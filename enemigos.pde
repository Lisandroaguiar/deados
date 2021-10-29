class enemigos{
//CAMPOS (variables)
float posX, posY;
float tamano;
float velocidad;
//int numFrames = ??? ;
//PImage [] jugador = new PImage [numFrames];
//CONSTRUCTOR “setup” de mi clase
enemigos(float posX_,float posY_){
  posX=posX_;
  posY=posY_;
tamano =20;
velocidad = 1.5;
/*for (int i = 0;i < numFrames; i++) {
      jugador[i] = loadImage("NOMBREARCHIVO”+ i + ".png");
    }*/
}
//MÉTODOS (funciones)
void dibujar(){
 //image(this.jugador[frameCount%numFrames], this.posX, this.posY);
 pushStyle();
 fill(255,0,0);
 circle(this.posX,this.posY,100);
 popStyle();
}
void actualizar(){this.posY-=2.5;
if( this.posY<10){this.posY=600;}
if( this.posX>450){this.posX=450;}
if( this.posX<50){this.posX=50;}}
//HACER ALGO QUE EMULE EL COMPORTAMIENTO DE "JUGADOR" ASI ESTE PUEDE DERJARLO ATRAS

}
