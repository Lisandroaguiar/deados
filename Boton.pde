class Boton {

  //VARIABLES (propiedades)
  float posX, posY;
  float tamX, tamY;
  color rell1, rell2, rell3;
  PFont miFuenteBoton;
  String estado;
  boolean botonInicioPresioando;
  boolean botonPresionado=false;
  int contador=0;
  //CONSTRUCTOR ("setup" de mi clase)
  Boton() {
  }
  //METODOS (funciones)

  void botonInicio(float posX, float posY, float tamX, float tamY ) {
    pushStyle();

    if (mouseX > posX && mouseX < posX +tamX && mouseY > posY && mouseY < posY + tamY ) {
      fill(255);
      if (mousePressed) {
        pantalla.actualizar();
        botonPresionado=true;
      }
    } else {
      fill(0);
      botonPresionado=false;
    }

    rect(posX, posY, tamX, tamY);

    popStyle();
  }
  void botonContinuar(float posX, float posY, float tamX, float tamY) {  pushStyle();

    if (mouseX > posX && mouseX < posX +tamX && mouseY > posY && mouseY < posY + tamY ) {
      fill(255);
      if (mousePressed) {
        pantalla.actualizar();
      }
    } else {
      fill(0);
    }

    rect(posX, posY, tamX, tamY);

    popStyle();
  }
  

  void botonReiniciar(float posX, float posY, float tamX, float tamY) {  pushStyle();

    if (mouseX > posX && mouseX < posX +tamX && mouseY > posY && mouseY < posY + tamY ) {
      fill(255);
      if (mousePressed) {
        pantalla.actualizar();
      }
    } else {
      fill(0);
    }

    rect(posX, posY, tamX, tamY);

    popStyle();
  }
  

  void botonCreditos(float posX, float posY, float tamX, float tamY) {  pushStyle();

    if (mouseX > posX && mouseX < posX +tamX && mouseY > posY && mouseY < posY + tamY ) {
      fill(255);
      if (mousePressed) {
        pantalla.actualizar();
      }
    } else {
      fill(0);
    }

    rect(posX, posY, tamX, tamY);

    popStyle();
  }
  

  void botonDoble(float posX, float posY, float posX2, float posY2,float tamX, float tamY) {  pushStyle();

    if (mouseX > posX && mouseX < posX +tamX && mouseY > posY && mouseY < posY + tamY ) {
      fill(255);
       contador=0;
      if (mousePressed) {
        pantalla.actualizar();
        contador++;
      }
    } else {
      fill(0);
    }
 rect(posX, posY, tamX, tamY);
   

    if (mouseX > posX2 && mouseX < posX2 +tamX && mouseY > posY2 && mouseY < posY2 + tamY ) {
      fill(255);
      contador=0;
      if (mousePressed) {
        pantalla.actualizar();
        contador--;
      }
    } else {
      fill(0);
    }

    rect(posX2, posY2, tamX, tamY);
    popStyle();
  }
  boolean getA(){
  return(botonPresionado);
  
  }
    int getC(){
  return(contador);
  
  }
  }
