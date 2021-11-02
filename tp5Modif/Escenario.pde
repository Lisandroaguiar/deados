class Escenario {

  // CAMPOS (variables)
  float posX, posY;
  float velocidad;
  int tamX, tamY;
  int m; /////////////////////////////////?
  PImage fondo;

  //CONSTRUCTOR ("setup" de mi programa)
  Escenario(float posX_, float posY_, int tamX_, int tamY_) {
    this.posX = posX_;
    this.posY = posY_;
    this.tamX = tamX_;
    this.tamY = tamY_;
    velocidad = 1;  //----Acá había doble asignación de velocidad, estaba con valor 1 y con valor 0.5
    fondo = loadImage("calle.png");
  }

  //METODOS (funciones)
  void dibujarEscenario() {
    image(this.fondo, this.posX, this.posY); 
    fondo.resize(tamX, tamY);
    ////////////////////////////////////////COPIADO IGUAL
    m = millis();
    float a=map(m, 0, 1500, 0, 10); //1500 total, 5 velocidad ¿se divide? ¿porcentaje?. ¿COMO FUNCIONA? a y m no estan unidos, a solo es la version mapeada
    //a=Largo de la barra ¿como calculo el tiempo de nivel?
    rect(100, 10, a, 10);
    if (a>=300) { 
      println("ganaste");
    }
  }

  void actualizarEscenario() {
    this.posY +=  this.velocidad;
    if (posY >= (-50) ) {
      posY = -500;
    }
  }
}
