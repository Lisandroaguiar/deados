
class Obstaculos {
  //campos
  PImage [] lata = new PImage [23];
  PImage [] botella = new PImage [13];
  PImage tacho;
  float posY;
  float posX;
  int Vel=1;
  //constructor
  Obstaculos (float _posX, float _posY ) {
    for (int i = 0; i <23; i++) {
      lata[i] = loadImage("lata"+ nf(i, 2) + ".png");
    }

    for (int a = 0; a <13; a++) {
      botella[a] = loadImage("botella"+ nf(a, 2) + ".png");
    }

    tacho=loadImage("tacho.png");
    tacho.resize(50, 50);
    posY=_posY;
    posX=_posX;
  }
  //metodos

  void actualizar() {
    posY+=Vel;
    if (this.posY>=500) {
      this.posY=10;
    }
    if ( this.posX>400) {
      this.posX=400;
    } else  if ( this.posX<50) {
      this.posX=50;
    }
  }
  void  dibujarLata() {
    image(this.lata[frameCount%23], this.posX, this.posY);
  }
  void dibujarBotella() {
    image(this.botella[frameCount%13], this.posX, this.posY);
  }
  void dibujarTacho() {
    image(this.tacho, this.posX, this.posY);
  }

  float getX() {
    return this.posX;
  }
  float getY() {
    return this.posY;
  }

  void reciclar() {
    this.posX=random(50, 350);
    this.posY=10;
  }
  void reciclarTacho() {
    this.posX=300;

    this.posY=-200;
  }
}
