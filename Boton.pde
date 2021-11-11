class Boton {

  //VARIABLES (propiedades)
  float posX, posY;
  float tamX, tamY;
  color rell1, rell2, rell3;
  PFont miFuenteBoton;
  String estado;
  //CONSTRUCTOR ("setup" de mi clase)
  Boton(float posX_, float posY_, float tamX_, float tamY_) {
    posX = posX_;
    posY = posY_;
    tamX = tamX_;
    tamY = tamY_;
    rell1 = color(245, 190, 247);
    rell2 = color(230, 133, 232);
    miFuenteBoton = loadFont("miFuenteBoton.vlw");
    textFont(miFuenteBoton);
  }
  //METODOS (funciones)

  void boton(float posX, float posY, float tamX, float tamY ) {

    pushStyle();
    if (mouseX > this.posX && mouseX < this.posX + this.tamX && mouseY > this.posY && mouseY < this.posY + this.tamY ) {
      if (mousePressed) {
        fill(rell1);

      } else {
        fill(rell2);
      }
    } else {
      fill(rell3);
    }
    rect(posX, posY, tamX, tamY);
    popStyle();
  }

  void botonContinuar() {
  }

  void botonReiniciar() {
  }

  void botonCreditos() {
  }

  void botonDoble() {
  }
}
