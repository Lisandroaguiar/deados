class Boton {

  //VARIABLES (propiedades)
  float posX, posY;
  float tamX, tamY;
  color rell1, rell2, rell3;
  PFont miFuenteBoton;
  PFont miFuenteTemporal;
  String estado;
  
  boolean botonPresionado=false;
  int contador;
  //CONSTRUCTOR ("setup" de mi clase)
  Boton() {
   miFuenteBoton=loadFont("miFuenteBoton.vlw");
    miFuenteTemporal = loadFont("SegoePrint-Bold-15.vlw");
    contador = 0;
  }
  //METODOS (funciones)

  void botonInicio() {
    pushStyle();

    if (mouseX > 100 && mouseX < 100 +300 && mouseY > 100 && mouseY < 100 + 50 ) {
      fill(245, 190, 247);
      if (mousePressed) {
        botonPresionado=true;
        pantalla.actualizar();
        fill(230, 133, 232);
      }
    } else {
      fill(100, 200, 200);
      botonPresionado=false;
    }

    rect(100, 100, 300, 50, 45);    
    fill(255, 0, 0);
    textAlign(CENTER,CENTER);
     textFont(miFuenteBoton);
    textSize(15);
    
   
    text("Inicio", 100, 100);
    popStyle();
  }
  void botonCustom(String textoB) {
    pushStyle();

    if (mouseX > 150 && mouseX < 150 +200 && mouseY > 450 && mouseY < 450 + 25 ) {
      fill(245, 190, 247);
      if (mousePressed) {
        botonPresionado=true;
        pantalla.actualizar();
        fill(230, 133, 232);
      }
    } else {
      fill(100, 200, 200);
      botonPresionado=false;
    }

    rect(150, 450, 200, 25, 45);
    fill(255, 0, 0);
    
    textFont(miFuenteBoton);
    text(textoB, 150, 450);
    popStyle();
  }
  void botonContinuar(float posX, float posY, float tamX, float tamY) {  
    pushStyle();

    if (mouseX > posX && mouseX < posX +tamX && mouseY > posY && mouseY < posY + tamY ) {
      fill(245, 190, 247);
      if (mousePressed) {
        pantalla.actualizar();
        botonPresionado=true;
        fill(230, 133, 232);
      }
    } else {
      fill(100, 200, 200);
      botonPresionado=false;
    }

    rect(posX, posY, tamX, tamY, 45);
    //textSize(15);
    fill(255, 0, 0);
    textFont(miFuenteTemporal);
    text("Continuar", posX, posY);
    popStyle();
  }


  void botonCreditos(float posX, float posY, float tamX, float tamY) {  
    pushStyle();

    if (mouseX > posX && mouseX < posX +tamX && mouseY > posY && mouseY < posY + tamY ) {
      fill(245, 190, 247);
      if (mousePressed) {
        pantalla.actualizar();
        botonPresionado=true;
        fill(230, 133, 232);
      }
    } else {
      fill(100, 200, 200);
      botonPresionado=false;
    }

    rect(posX, posY, tamX, tamY, 45);
    fill(255, 0, 0);
    textFont(miFuenteTemporal);
    text("Créditos", posX, posY);
    popStyle();
  }


  void botonDoble(String textoB1, String textoB2, float posX, float posY, float posX2, float posY2, float tamX, float tamY) {  
    pushStyle();

    if (mouseX > posX && mouseX < posX +tamX && mouseY > posY && mouseY < posY + tamY ) {
      fill(245, 190, 247);
      contador=0;
      if (mousePressed) {
        pantalla.actualizar();
        contador++;
        fill(230, 133, 232);
      }
    } else {
      fill(100, 200, 200);
    }
    rect(posX, posY, tamX, tamY, 45);


    if (mouseX > posX2 && mouseX < posX2 +tamX && mouseY > posY2 && mouseY < posY2 + tamY ) {
      fill(0);
      contador=0;
      if (mousePressed) {
        pantalla.actualizar();
        contador--;
        fill(230, 133, 232);
      }
    } else {
      fill(100, 200, 200);
    }

    rect(posX2, posY2, tamX, tamY, 45);
    fill(255, 0, 0);
    textFont(miFuenteTemporal);
    text(textoB1, posX, posY);
    text(textoB2, posX2, posY2);
    popStyle();
  }
  boolean getA() {
    return(botonPresionado);
  }
  int getC() {
    return(contador);
  }
}
