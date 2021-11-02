
class Enemigos {
  //CAMPOS (variables)
  float posX, posY;
  float tamano;
  float velocidad;
  int numFrames =12  ;
  PImage [] enemigo = new PImage [numFrames];
  //CONSTRUCTOR “setup” de mi clase
  Enemigos(float posX_, float posY_ ) {
    posX=posX_;
    posY=posY_;
    velocidad = 1;
    for (int i = 0; i < numFrames; i++) {
      enemigo[i] = loadImage("enemigo"+ nf(i, 2) + ".png");
    }
  }
  //MÉTODOS (funciones)
  void dibujar() {
    image(this.enemigo[frameCount%numFrames], this.posX, this.posY);
    pushStyle();
  }
  void actualizar() {

    this.posY-=this.velocidad;
    if ( this.posX>400) {
      this.posX=400;
    } else  if ( this.posX<50) {
      this.posX=50;
    }

    if ( this.posX>450) {
      this.posX=450;
    }
    if ( this.posX<50) {
      this.posX=50;
    }
  }
  float getX() {
    return this.posX;
  }
  float getY() {
    return this.posY;
  }
  void seguirJugador(Jugador jugador) {
    float y_J= jugador.getY();
    float x_J=jugador.getX();
    this.posX=x_J;
    if (y_J<10) {
      // this.posY=y_J+dist(x_J,y_J,this.posX,this.posY);
      this.posY=600;
    }
  }
}
