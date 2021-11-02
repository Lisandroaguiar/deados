class Juego {

  Obstaculos[] obstaculo = new Obstaculos [3];
  Fondo fondo;
  Jugador jugador;
  Enemigos enemigos;
  Juego() {
    size(500, 500);



    obstaculo [0] = new Obstaculos(250, -200);  
    obstaculo [1] = new Obstaculos(350, -70);
    obstaculo [2] = new Obstaculos(60, -50);

    fondo= new Fondo(0, -500, 500, 2000);
    jugador=new Jugador(250, 500);
    enemigos=new Enemigos(250, 800);
  }
  void dibujarJuego () {
    fondo.dibujar();


    obstaculo[0].dibujarTacho();   
    obstaculo[1].dibujarBotella();
    obstaculo[2].dibujarLata();

    jugador.dibujar();

   
    enemigos.dibujar();
  }

  void actualizarJuego() {
    fondo.actualizar();
    jugador.actualizar();
    enemigos.actualizar();
    obstaculo[0].actualizar(); 
    obstaculo[1].actualizar();
    obstaculo[2].actualizar();
enemigos.seguirJugador(jugador);
    jugador.colision(obstaculo[1]);
    jugador.colision(obstaculo[2]);
    jugador.colisionTacho(obstaculo[0]);
    jugador.colisionEnemigo(enemigos);
  }
  void move(){ 
  jugador.mover();}
}
