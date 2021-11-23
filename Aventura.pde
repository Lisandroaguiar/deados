
class Aventura {
  Pantalla pantalla;
  //VARIABLES (propiedades)

  //CONSTRUCTOR ("setup" de mi clase)
  Aventura() { 
    pantalla=new Pantalla(0,0);
  }
  //METODOS (funciones)
  void dibujar() {
    pantalla.dibujar(pantalla);
  }

  void actualizar() {
    pantalla.actualizar();
   

 
 }
  }
