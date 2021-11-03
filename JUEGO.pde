class Juego {
  int c=3;
  int a=3;
  Obstaculos tacho;
  Obstaculos[] lata = new Obstaculos [c];
  Obstaculos[] botella = new Obstaculos [a];
  Escenario fondo;
  Jugador jugador;
  Enemigos enemigos;
  Progreso progreso;
  //constructor
  Juego() {
    size(500, 500);


    progreso=new Progreso();
    tacho = new Obstaculos(random(width), -200);  
    jugador=new Jugador(250, 500);
    enemigos=new Enemigos(250, 800);
    fondo= new Escenario(0, -500, 500, 2000);
    for (int i=0; i<botella.length; i++) {
      botella[i]= new Obstaculos(random(width), 10);
    }
    for (int e=0; e<lata.length; e++) {
      lata[e]= new Obstaculos(random(width), 50);
    }
  }
  void dibujarJuego () { 
 
    fondo.dibujar();
    

    tacho.dibujarTacho();  
    for (int i=0; i<botella.length; i++) {
      botella[i].dibujarBotella();
    }
    for (int e=0; e<lata.length; e++) {
      lata[e].dibujarLata();
    }


    jugador.dibujar();


    enemigos.dibujar();
   progreso.dibujarBarra();
  
  }
   
  void actualizarJuego() {String getE=progreso.getEstado(); if(getE=="dos"){ println(getE);
    fondo.actualizar();
    jugador.actualizar();
    enemigos.actualizar();
    tacho.actualizar(); 
    for (int e=0; e<lata.length; e++) {
      lata[e].actualizar();
    }
    for (int i=0; i<botella.length; i++) {
      botella[i].actualizar();
    }

    enemigos.seguirJugador(jugador);
    for (int i=0; i<botella.length; i++) {
      jugador.colision(botella[i]);
    }
    for (int e=0; e<lata.length; e++) {
      jugador.colision(lata[e]);
    }

    jugador.colisionTacho(tacho);
    jugador.colisionEnemigo(enemigos);
  }}
  void move() { 
    jugador.mover();
progreso.arrancarJuego();  
}
  
  void reiniciar() {
  }
}
