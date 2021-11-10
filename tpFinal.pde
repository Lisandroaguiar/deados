Boton boton;
Texto text;
Pantalla pantalla;
Aventura aventura;
void setup() {size(500,500);
  boton=new Boton(10,10,10,10);
  text=new Texto(10,10,10);
  pantalla= new Pantalla(10,10);
  aventura=new Aventura();
}

void draw() {
  
  text.dibujar();
 aventura.actualizar(pantalla);
}
