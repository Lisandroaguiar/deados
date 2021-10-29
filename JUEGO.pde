cositas[] botella = new cositas [24];
Fondo fondo;
Jugador jugador;
enemigos enemigos;
float r=random(250, 450);
void setup(){size(500,500);


 for ( int i = 0; i<24; i++ ) {
   
botella [i] = new cositas(r,10,12);}
fondo= new Fondo(0,-500,500,2000);
jugador=new Jugador(250,500);
enemigos=new enemigos(250, 600);
}
void draw(){ background(0);
 for ( int i = 0; i<24; i++ ) {
fondo.dibujar();
   fondo.actualizar();
botella[i].dibujarBotella();

botella[i].actualizar();
jugador.dibujar();
jugador.actualizar();
jugador.mover();}
enemigos.dibujar();
enemigos.actualizar();
}
