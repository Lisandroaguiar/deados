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
  Progreso progreso;
  //CONSTRUCTOR ("setup" de mi programa)
  Juego() {
    for (int i = 0; i < lata.length; i++) {
      lata[i]= new Obstaculos(random(width), 10);
    }
    for (int a = 0; a < botella.length; a++) {
      botella[a] = new Obstaculos(random(width), 10);
    }
    progreso=new Progreso();
    tacho = new Obstaculos(random(width), -200);
    jugador = new Jugador(width/2, height);
    enemigo = new Enemigo (width/2, height+300);
    fondo = new Escenario(0, -500, width, height*2);
  }
  //METODOS (funciones)
  void dibujarJuego() {
    //Escenario
    fondo.dibujar();
    //Obstaculos
    tacho.dibujarTacho();
    for (int i = 0; i < botella.length; i++) {
      botella[i].dibujarBotella();
    }
    for (int a=0; a < lata.length; a++) {
      lata[a].dibujarLata();
    }
    // Jugador y enemigo
    jugador.dibujar();
    enemigo.dibujar();
    //Barra
    progreso.dibujarBarra();
  }
  void actualizar() {
    fondo.actualizar(); 
    jugador.actualizar();
    enemigo.actualizar();
    tacho.actualizar();

    for (int i=0; i<botella.length; i++) {
      botella[i].actualizar();
    }
    for (int a=0; a<lata.length; a++) {
      lata[a].actualizar();
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
  void actualizarJuego() {
    String getE=progreso.getEstado(); 
    if (getE=="dos") { 
      println(getE);
      fondo.actualizar();
      jugador.actualizar();
      enemigo.actualizar();
      tacho.actualizar(); 
      for (int e=0; e<lata.length; e++) {
        lata[e].actualizar();
      }
      for (int i=0; i<botella.length; i++) {
        botella[i].actualizar();
      }

      enemigo.seguirJugador(jugador);
      for (int i=0; i<botella.length; i++) {
        jugador.colisionObstaculosMov(botella[i]);
      }
      for (int e=0; e<lata.length; e++) {
        jugador.colisionObstaculosMov(lata[e]);
      }

      jugador.colisionTacho(tacho);
      jugador.colisionEnemigo(enemigo);
    }
  }
  void mover() { 
    jugador.mover();
    progreso.arrancarJuego();
  }
  void reiniciar() {
  }
}
