Juego juego; //<>//
void setup() {
  size(500, 500);
  juego= new Juego ();
}

void draw() {
  juego.dibujarJuego();
  juego.actualizarJuego();
}
void keyPressed() {
  juego.move();
}

/*FALTA;
 -ESTADOS: INICIO, GANAR(SE LLENA LA BARRA), PERDER(TE AGARRA EL MALITO)
 -BOTON REINICIO
 -¿MULTIJUGADOR?
 -PREGUNTAR BARRA PREGUNTAR PREGUNTAR PREGUNTAR
 -REINICIAR
 -marca del tiempo
 -reiniciar los constructores
 */
