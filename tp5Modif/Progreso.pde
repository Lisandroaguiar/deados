class Progreso {
  int marcaDeTiempo = 0;  //marca de tiempo para que no cuente el tiempo que paso el jugador en el menu
  int tiempo = 15 * 1000;  //cantidad de segundos
  String estado;
  int x=150;
  int y=150;

  //Constructor
  Progreso() {
    estado="uno";
  }

  void dibujarBarra() {

    //logica de estados ---ESTADO 1
    if ( estado.equals("uno") ) {
      println("uno");
      //   background(0,0,0,1);
      fill(255);
      text("PRESIONAR LA BARRA PARA INICIAR", 250, 250);
    }
    //logica de estados

    if ( estado.equals("dos") ) {
      if ( millis() > marcaDeTiempo+tiempo ) {  
        estado = "tres";
      }
      float t = map( millis(), marcaDeTiempo, marcaDeTiempo+tiempo, 0, 400);  //tamaño del cuadrado rojo
      fill( 255, 0, 0 );
      rect( 50, 0, t, 10 );
      println("2");
    } else if ( estado.equals("tres") ) {
      println("3");
    }

    if ( estado.equals("tres") ) { //aca se carga el 3
      println("tres");
      background(0);
      fill(255);
      text("fin", 250, 250);
    }
  }



  String getEstado() { 
    return estado;
  }
  void arrancarJuego() {
    if (key==' ') {
      estado = "dos";
      marcaDeTiempo = millis();
    }
    if (key=='r') {
      estado = "1";
    }
  }
}
