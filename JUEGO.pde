class Juego {
int posX;
int posY;




  Obstaculos [] botella = new Obstaculos  [24];
  Fondo fondo;
  Jugador jugador;
  enemigos enemigos;


  //constructor

  Juego (int posX_, int posY_) {
    
    posX=posX_;
    posY=posY_;

    for ( int i = 0; i<24; i++ ) {

      botella [i] = new Obstaculos (100, 10, 12);
    }
    fondo= new Fondo(0, -500, 500, 2000);
    jugador=new Jugador(250, 500);
    enemigos=new enemigos(250, 600);
  }

  void dibujarJuego() {
    for ( int i = 0; i<24; i++ ) {
      fondo.dibujar();
      fondo.actualizar();
      botella[i].dibujarBotella();

      botella[i].actualizar();
      jugador.dibujar();
      jugador.actualizar();
      jugador.mover();
    }
    enemigos.dibujar();
    enemigos.actualizar();
    for ( int i = 0; i<24; i++ ) {
      jugador.colision(botella[i]);
    }
  }
}
