
Pantalla pantalla;
void setup() {
  size(500, 500);
  pantalla= new Pantalla(0,0);
}
void draw() {
  pantalla.dibujar(pantalla);
}

void mouseClicked() {
  pantalla.actualizar();
}
