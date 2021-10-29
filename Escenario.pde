class Fondo {
  //CAMPOS (variables)
  float posX; 
  float posY;
 int tamanoX;
  int tamanoY;
  float velocidad=0.5;
  PImage fondo;
  //CONSTRUCTOR “setup” de mi clase
  Fondo(float posX_, float posY_, int tamanoX_, int tamanoY_) {
    this.posX = posX_;
    this.posY = posY_;
    tamanoX = tamanoX_;
    tamanoY = tamanoY_;
    velocidad = 1;
    fondo = loadImage("calle1.png");
  }

  //MÉTODOS (funciones)
  void dibujar() {
    image(this.fondo, this.posX, this.posY);
    fondo.resize(tamanoX,tamanoY);
  }
  void actualizar() {
    //VER!
    this.posY+=this.velocidad;
    if (posY>=-50) {
      posY=-500;
    }
  }
}
