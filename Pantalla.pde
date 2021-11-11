class Pantalla {

  //VARIABLES (propiedades)
  float posX, posY;
  int tamX, tamY;
  int numFotos = 17;
  String estado="Inicio";
  PImage[] fotos = new PImage [numFotos];
  //CONSTRUCTOR ("setup" de mi clase)
  Pantalla(float posX_, float posY_) {

    posX = posX_;
    posY = posY_;
    tamX = 300; ///////////////////////Ver!
    tamY = 300;
    for (int i = 0; i < fotos.length; i++) {
      fotos[i] = loadImage("foto"+ nf(i, 2) + ".jpg");
    }
  }  
  //METODOS (funciones)

  void dibujarPantalla() {
    for (int i = 0; i < fotos.length; i++) {
      image(fotos[i], this.posX, posY);
      fotos[i].resize(this.tamX, this.tamY);
      if (estado !="Inicio") {
        background(0);
        tamX = 300;
        tamY = 300;
      }
    }
  }

  void actualizarPantalla() {
    println(estado);
    if ( estado == "Inicio") {
      image(fotos[16], 0, 0); 
      this.tamX=width;
      this.tamY=height;

    } else if ( estado == "boliche") {
      image(fotos[00], 100, 10);
    }
  }
}
