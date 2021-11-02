class Escenario {
  //CAMPOS (variables)
  int m;
  float posX; 
  float posY;
  int tamanoX;
  int tamanoY;
  float velocidad=1;
  PImage fondo;
  //CONSTRUCTOR “setup” de mi clase
  Escenario(float posX_, float posY_, int tamanoX_, int tamanoY_) {
    this.posX = posX_;
    this.posY = posY_;
    tamanoX = tamanoX_;
    tamanoY = tamanoY_;
    fondo = loadImage("calle1.png");
    m=0;
  }

  //MÉTODOS (funciones)
  void dibujar() {
    image(this.fondo, this.posX, this.posY);
    fondo.resize(tamanoX, tamanoY);
    m=millis();
    float a=map(m, 0, 1500, 0, 10); //1500 total, 5 velocidad ¿se divide? ¿porcentaje?. ¿COMO FUNCIONA? a y m no estan unidos, a solo es la version mapeada
    //a=Largo de la barra ¿como calculo el tiempo de nivel?
    rect(100, 10, a, 10);
    if (a>=300) { 
      println("ganaste");
    }
  }
  void actualizar() {
    //VER!
    this.posY+=this.velocidad;
    if (posY>=-50) {
      posY=-500;
    }
  }
}
