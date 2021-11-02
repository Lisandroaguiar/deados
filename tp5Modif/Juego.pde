class Juego {
  // CAMPOS (variables)
  int cantLata = 3;
  int cantBotella = 4;
  Obstaculos tacho;
  Obstaculos [] lata = new Obstaculos [cantLata];
  Obstaculos [] botella = new Obstaculos [cantBotella];
  Escenario fondo;
  Jugador jugador;
  Enemigo enemigo;
  //CONSTRUCTOR ("setup" de mi programa)
  Juego() {
    for (int i = 0; i < lata.length; i++) {
      lata[i]= new Obstaculos(random(width), 10);
    }
    for (int a = 0; a < botella.length; a++) {
      botella[a] = new Obstaculos(random(width), 10);
    }
    this.tacho = new Obstaculos(random(width), -200);
    this.jugador = new Jugador(width/2, height);
    this.enemigo = new Enemigo (width/2, height+300);
    this.fondo = new Escenario(0, -500, width, height*2);
  }
  //METODOS (funciones)
  void dibujarJuego() {
    //Escenario
    fondo.dibujarEscenario();
    //Obstaculos
    tacho.dibujarTacho();
    for (int i = 0; i < botella.length; i++) {
      botella[i].dibujarBotella();
    }
    for (int a=0; a < lata.length; a++) {
      lata[a].dibujarLata();
    }
    // Jugador y enemigo
    jugador.dibujarJugador();
    enemigo.dibujarEnemigo();
  }
  void actualizarJuego() {
    fondo.actualizarEscenario(); 
    jugador.actualizarJugador();
    enemigo.actualizarEnemigo();
    tacho.actualizarObstaculos();
    for (int i=0; i<botella.length; i++) {
      botella[i].actualizarObstaculos();
    }
    for (int a=0; a<lata.length; a++) {
      lata[a].actualizarObstaculos();
    }

    enemigo.seguirJugador(jugador);

    for (int i=0; i<botella.length; i++) { ////////Consultar
      jugador.colisionObstaculosMov(botella[i]);
    }
    for (int a=0; a<lata.length; a++) {
      jugador.colisionObstaculosMov(lata[a]);
    }
    jugador.colisionTacho(tacho);
    jugador.colisionEnemigo(enemigo);
  }
  void move() { 
    jugador.moverJugador();
  }
  void reiniciar() {
  }
}
