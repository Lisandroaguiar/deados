//BORRAR C=0
Juego juego;
class Pantalla {
  Boton boton;
  //VARIABLES (propiedades)
  float m;
  float posX, posY;
  int tamX, tamY;
  int numFotos = 18;
  String estado="inicio";
  PImage[] fotos = new PImage [numFotos];
  //CONSTRUCTOR ("setup" de mi clase)
  Pantalla(float posX_, float posY_) {
    boton=new Boton();
    juego= new Juego();
    posX = posX_;
    posY = posY_;
    tamX = 300; ///////////////////////Ver!
    tamY = 300;
    m=millis();
    for (int i = 0; i < fotos.length; i++) {
      fotos[i] = loadImage("fondos/foto"+ nf(i, 2) + ".jpg");
    }
  }  
  //METODOS (funciones)



  ////////////////Consultar tamaño primera imagen(no es 300,300 , es width y height)
  void dibujar() {
    background(0);

    if (estado=="inicio") {
      image(fotos[16], 0, 0);
      fotos[16].resize(tamX, tamY);
      tamX=width;
      tamY=height;
      boton.botonInicio(100, 10, 100, 100);
      println(estado);
    }

    if ( estado=="boliche" ) {
      image(fotos[0], 100, 40);
      fotos[0].resize(300, 300);
      boton.botonContinuar(250, 250, 100, 100);
      println(estado);
    }

    if ( estado=="sustancia" ) {
      image(fotos[1], 100, 40);
      fotos[1].resize(300, 300);
      boton.botonDoble(150, 150, 300, 300, 100, 100);
      println(estado);
    } 
    if (estado=="ganaste") { 
      image(fotos[17], 100, 40);
      fotos[17].resize(300, 300);
      boton.botonContinuar(250, 250, 100, 100);
      println(estado);
    }   
    if ( estado=="ambulancia" ) {
      image(fotos[2], 100, 40);

      fotos[2].resize(300, 300);
      boton.botonContinuar(250, 250, 100, 100);
      println(estado);
    }  
    if (estado=="ambulancia2") {
      image(fotos[3], 100, 40);
      fotos[3].resize(300, 300);
      boton.botonContinuar(250, 250, 100, 100);
      println(estado);
    }  
    if ( estado=="creditos" ) {
      image(fotos[16], 100, 40);
      fotos[16].resize(300, 300);
      boton.botonContinuar(250, 250, 100, 100);
      println(estado);
    }  
    if ( estado=="perdiste" ) {
      image(fotos[15], 100, 40);
      ;
      fotos[15].resize(300, 300);
      boton.botonContinuar(250, 250, 100, 100);
      println(estado);
    }  
    if ( estado=="caminar" ) {
      image(fotos[13], 100, 40);
      fotos[13].resize(300, 300);
      boton.botonContinuar(250, 250, 100, 100);
      println(estado);
    }  
    if ( estado=="grupotaxi" ) {
      image(fotos[4], 100, 40);
      fotos[4].resize(300, 300);
      boton.botonDoble(150, 150, 300, 300, 100, 100);
      println(estado);
    }   
    if ( estado=="grupo" ) {
      image(fotos[5], 100, 40);
      fotos[5].resize(300, 300);
      boton.botonDoble(150, 150, 300, 300, 100, 100);
      println(estado);
    }  
    if ( estado=="taxi" ) {
      image(fotos[6], 100, 40);
      ;
      println(estado);
      fotos[6].resize(300, 300);
      boton.botonContinuar(250, 250, 100, 100);
    }    
    if ( estado=="preso" ) {
      image(fotos[7], 100, 40);
      fotos[7].resize(300, 300);
      boton.botonContinuar(250, 250, 100, 100);
    }    
    if ( estado=="preso2" ) {
      image(fotos[8], 100, 40);
      fotos[8].resize(300, 300);
      println(estado);
      boton.botonContinuar(250, 250, 100, 100);
    }  
    if ( estado=="correr" ) {
      image(fotos[10], 100, 40);
      println(estado);
      fotos[10].resize(300, 300);
      boton.botonContinuar(250, 250, 100, 100);
    }  
    if (estado=="robado") {
      image(fotos[11], 100, 40);
      fotos[11].resize(300, 300);
      println(estado);
      boton.botonContinuar(250, 250, 100, 100);
    }   
    if ( estado=="derechaIzquierda" ) {
      juego.dibujarJuego(); 
      juego.actualizarJuego();
      juego.mover();
      juego.reiniciar();
    }    
    if (estado=="callejon") {
      image(fotos[12], 100, 40);
      fotos[12].resize(300, 300);
      boton.botonContinuar(250, 250, 100, 100);
      println(estado);
    }  
    if (estado=="amigos") {
      image(fotos[14], 100, 40);
      fotos[14].resize(300, 300);
      println(estado);

      boton.botonContinuar(250, 250, 100, 100);
    }
  }
  void actualizar() {

    m++;
    boolean A=boton.getA();
    int C=boton.getC();

    println(C);

    if (estado=="inicio" && A==true ) { 
      estado="boliche";
      m=0; 
      A=false;
    }

    if ( estado=="boliche" && A==true && m>10) { 
      m=0;   
      A=false;
      estado="sustancia";
    }

    if ( estado=="sustancia" && C==1 && m>10) {
      m=0;

      estado="ambulancia";
    } 
    if ( estado=="sustancia" && C==-1 && m>10) {
      m=0;

      estado="caminar";
    } 
    if (estado=="ganaste" && A==true && m>10) { 
      m=0; 
      estado="inicio";
      A=false;
    }   
    if ( estado=="ambulancia" && A==true && m>10) { 
      m=0; 
      A=false;
      estado="ambulancia2";
    }  
    if (estado=="ambulancia2"&& A==true && m>10) { 

      m=0; 
      A=false;
      estado="ganaste";
    }  
    if ( estado=="creditos" && A==true && m>10) { 
      m=0; 
      A=false;
      estado="inicio";
    }  
    if ( estado=="perdiste" && A==true && m>10) {
      m=0; 
      A=false;
      estado="inicio";
    }  
    if ( estado=="caminar" && A==true && m>10) { 
      m=0; 
      A=false;
      estado="grupotaxi";
    }  
    if ( estado=="grupotaxi" && C==1 && m>10) {
      m=0; 
      estado="grupo";
    }
    if ( estado=="grupotaxi" && C==-1 && m>10) {
      m=0; 
      estado="taxi";
    }
    if ( estado=="grupo"  && C==1 && m>10) { 
      m=0;
      estado="robado";
    } 
    if ( estado=="grupo"  && C==-1 && m>10) {
      m=0; 
      estado="correr";
    }
    if ( estado=="taxi"&& A==true && m>10 ) { 
      m=0; 
      A=false;
      estado="preso";
    }    
    if ( estado=="preso"&& A==true && m>10 ) { 
      m=0; 
      A=false;
      estado="preso2";
    }    
    if ( estado=="preso2"&& A==true && m>10 ) {
      m=0;  
      A=false;
      estado="perdiste";
    }  
    if ( estado=="correr" && A==true && m>10) { 
      m=0; 
      A=false;
      estado="derechaIzquierda";
    }  
    if (estado=="robado"&& A==true && m>10) { 
      m=0; 
      A=false;
      estado="perdiste";
    }   
    if ( estado=="derechaIzquierda" && C==1 && m>10) {
      m=0; 
      estado="callejon";
    }    
    if ( estado=="derechaIzquierda" && C==-1 && m>10) {
      m=0; 
      estado="amigos";
    }   
    if (estado=="callejon"&& A==true && m>10) { 
      m=0; 
      A=false;
      estado="perdiste";
    }  
    if (estado=="amigos"&& A==true && m>10) { 
      m=0; 
      A=false;
      estado="ganaste";
    }
  }
}
