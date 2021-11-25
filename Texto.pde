class Texto {
  //VARIABLES (propiedades)
  float posX, posY;
  float tam;
  PFont miFuente;
  String [] textos;
  //CONSTRUCTOR ("setup" de mi clase)
  Texto() {

    miFuente=loadFont("miFuente.vlw");//Mati, no nos anda la tipografia :(
    textos = loadStrings("textosAventura.txt"); //SE CARGA ACA??
    tam=15;
  }  
  //METODOS (funciones)
  void dibujarTexto ( int ID, float posX, float posY) { 
    
    pushStyle();
    fill(255);
    textAlign(CENTER, CENTER);
    textFont(miFuente); //mentirita si funciona, ERA EL ORDEN (otra vez)
    textSize(tam);
    text(textos[ID], posX, posY); 
    popStyle();
  }
}
