//hola
class Obstaculos {
  //campos
  PImage [] lata = new PImage [24];
  PImage [] botella = new PImage [14];
  PImage tacho;
  float posY;
  float posX;
  int Vel=1;
  //constructor
  Obstaculos (float _posX, float _posY ) {
    for (int i = 0; i <24; i++) {
      lata[i] = loadImage("lata0"+ i + ".gif");
      lata[i].resize(70, 70);
    }

    for (int a = 0; a <14; a++) {
      botella[a] = loadImage("botella 0"+ a + ".png");
      botella[a].resize(70, 70);
    }

    tacho=loadImage("tacho.png");
    tacho.resize(100, 100);
    posY=_posY;
    posX=_posX;
  }
  //metodos

  void actualizar() {
    posY+=Vel;
    if (this.posY>=500) {
      this.posY=10;
    }
  }
  void  dibujarLata() {
    image(this.lata[frameCount%23], this.posX, this.posY);
  }
  void dibujarBotella() {
    image(this.botella[frameCount%14], this.posX, this.posY);
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
    this.posX=250;

    this.posY=-200;
  }
}
