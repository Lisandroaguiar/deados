class Texto {
  //VARIABLES (propiedades)
  float posX, posY;
  float tam;
  PFont miFuente;
  String [] textos;
  //CONSTRUCTOR ("setup" de mi clase)
  Texto(float posX_, 
    float posY_, 
    float tam_) {
    posX = posX_;
    posY = posY_;
    tam = tam_;

    miFuente=loadFont("miFuente.vlw");
    textos = loadStrings("textosAventura.txt");
  }  
  //METODOS (funciones)
  void dibujar() { 
    pushStyle();
    textFont(miFuente); 
    text("kjuigt", 60, 60); 
    popStyle();
  }

  void actualizar() {
  }
}
