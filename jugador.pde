class Jugador {
  //CAMPOS (variables)
  float posX, posY;
  float tamano;
  float velocidad;
  int numFrames = 6;
  String estado;
  PImage [] jugador = new PImage [numFrames];
  //CONSTRUCTOR “setup” de mi clase
  Jugador(float posX_, float posY_) {
    posX=posX_;
    posY=posY_;
    tamano =100;
    velocidad =1.75;
    for (int i = 0; i < numFrames; i++) {
      jugador[i] = loadImage("jugador"+ nf(i, 2)+ ".png");
    }
  }
  //MÉTODOS (funciones)
  void dibujar() {
    image(this.jugador[frameCount%numFrames], this.posX, this.posY);
  
  }
  void terminarJuego(){
   if(estado=="cuatro"){
   background(0);
    fill(255);
      text("te agarro", 250, 250);
   
   }
  
  }
  void actualizar() {
    posY-=velocidad;
    if ( this.posY<0) {
      this.posY=501;
    }
    if ( this.posX>400) {
      this.posX=400;
    } else if ( this.posX<50) {
      this.posX=50;
    }
  }
  void mover() {
    if (keyPressed && key=='d' || keyPressed && keyCode==RIGHT ) {
      posX +=10;
    }
    if (keyPressed && key=='a' || keyPressed && keyCode==LEFT ) {
      posX -=10;
    }
  }
  void colision(Obstaculos obstaculo) {
    float x_obstaculo= obstaculo.getX();
    float y_obstaculo= obstaculo.getY();

    float d_colision= dist(x_obstaculo, y_obstaculo, posX, posY);
    if (d_colision<tamano/2) { 
      velocidad-=0.25; 
      println("colision");
      obstaculo.reciclar();
    }
  }
  void colisionTacho(Obstaculos obstaculo) {
    float x_obstaculo= obstaculo.getX();
    float y_obstaculo= obstaculo.getY();

    float d_colision= dist(x_obstaculo, y_obstaculo, posX, posY);
    if (d_colision<tamano/1.85) { 
      velocidad-=0.25; 
      println("colision");
      obstaculo.reciclarTacho();
    }
  }
  void colisionEnemigo(Enemigos enemigo) {
    float x_enemigo= enemigo.getX();
    float y_enemigo= enemigo.getY();

    float d_colision= dist(x_enemigo, y_enemigo, posX, posY);
    if (d_colision<tamano/2) { 
      velocidad-=0.25; 
      println("colision");
      println("perdiste");
      estado="cuatro"; 
  }
 

}
  
  float getY() {
    return this.posY;
  }
  float getX() {
    return this.posX;
  }
  
}
