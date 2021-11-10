class Boton {

  //VARIABLES (propiedades)
  float posX, posY;
  float tamX, tamY;
  color rell1, rell2;
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
  void boton(float posX_, float posY_, float tamX_, float tamY_) { 
    pushStyle();
    posX=posX_;
    posY=posY_;
    tamX=tamX_;
    tamY=tamY_;
    fill(rell1);
    rect(posX_, posY_, tamX_, tamY_);


    popStyle();
  }

  void botonContinuar(float posX_, float posY, float tamX_, float tamY_) {
    pushStyle();


    popStyle();
  }


  void botonReinicio(float posX_, float posY, float tamX_, float tamY_) { 
    pushStyle();


    popStyle();
  }



  void botonCreditos(float posX_, float posY, float tamX_, float tamY_) {
    pushStyle();


    popStyle();
  }
  void botonDoble(float posX, float posY, float tamX, float tamY, float posX2, float posY2) {
pushStyle();
fill(rell1);
    rect(posX, posY, tamX, tamY);
    rect(posX2, posY2, tamX, tamY);
    
 popStyle(); 
}
  
}
