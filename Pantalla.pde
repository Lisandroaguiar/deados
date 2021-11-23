//BORRAR C=0

class Pantalla {
  Texto texto;
  Boton boton;
  Juego juego;
  //VARIABLES (propiedades)
  float m;
  float posX, posY;
  float mov;
  int tamX, tamY;
  int numFotos = 18;
  String estado="inicio";
    String [] textos;
  PImage[] fotos = new PImage [numFotos];
  //CONSTRUCTOR ("setup" de mi clase)
  Pantalla(float posX_, float posY_) {
    boton=new Boton();
    juego= new Juego();
    texto= new Texto();
    posX = posX_;
    posY = posY_;
    tamX = 300; ///////////////////////Ver!
    tamY = 300;
    textos = loadStrings("textosAventura.txt"); //SE CARGA ACA??
    m=millis();
    mov=0;
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
      boton.botonInicio();
      boton.botonCreditos(100, 200, 300, 50);
      println(estado);
     
    }

    if ( estado=="boliche" ) {
      image(fotos[0], 100, 40, 300, 300);
      boton.botonContinuar(150, 450, 200, 25);
      println(estado);
      for(int i=0; i<3; i++){
   texto.dibujarTexto(textos[i],250,360+(i)*30);  }
  }
    

    if ( estado=="sustancia" ) {
      image(fotos[1], 100, 40, 300, 300);
      boton.botonDoble("Tomar", "No tomar", 260, 450, 40, 450, 200, 25);
      println(estado);
    } 

    if ( estado=="ambulancia" ) {
      image(fotos[2], 100, 40, 300, 300);
      boton.botonContinuar(150, 450, 200, 25);
      println(estado);
    }  
    if (estado=="ambulancia2") {
      image(fotos[3], 100, 40, 300, 300);
      boton.botonContinuar(150, 450, 200, 25);
      println(estado);
    }  
    if (estado=="ganaste") { 
      image(fotos[17], 100, 40, 300, 300);
      boton.botonDoble("Inicio", "Créditos", 40, 450, 260, 450, 200, 25);
      println(estado);
    }  
    if ( estado=="creditos" ) {
      image(fotos[16], 100, 40, 300, 300);
      boton.botonContinuar(150, 450, 200, 25);
      println(estado);
    }  
    if ( estado=="perdiste" ) {
      image(fotos[15], 100, 40, 300, 300);
      boton.botonDoble("Inicio", "Créditos", 40, 450, 260, 450, 200, 25);

      println(estado);
    }  
    if ( estado=="caminar" ) {
      image(fotos[13], 100, 40, 300, 300);
      boton.botonContinuar(150, 450, 200, 25);
      println(estado);
    }  
    if ( estado=="grupotaxi" ) {
      image(fotos[4], 100, 40, 300, 300);
      boton.botonDoble("Parar el taxi", "Encarar el grupo", 260, 450, 40, 450, 200, 25);
      println(estado);
    }   
    if ( estado=="grupo" ) {
      image(fotos[5], 100, 40, 300, 300);
      boton.botonDoble("Seguir", "Cruzar", 260, 450, 40, 450, 200, 25);
      println(estado);
    }  
    if ( estado=="taxi" ) {
      image(fotos[6], 100, 40, 300, 300);
      println(estado);

      boton.botonCustom("Pagadios");
    }    
    if ( estado=="preso" ) {
      image(fotos[7], 100, 40, 300, 300);
      boton.botonContinuar(150, 450, 200, 25);
    }    
    if ( estado=="preso2" ) {
      image(fotos[8], 100, 40, 300, 300);
      println(estado);
      boton.botonContinuar(150, 450, 200, 25);
    }  
    if ( estado=="correr" ) {
      image(fotos[10], 100, 40, 300, 300);
      println(estado);
      boton.botonContinuar(150, 450, 200, 25);
    }  
    if (estado=="robado") {
      image(fotos[11], 100, 40, 300, 300);
      println(estado);
      boton.botonContinuar(150, 450, 200, 25);
    }   
    if ( estado=="minijuego" ) {
      juego.dibujarJuego(); 
      juego.actualizarJuego();
      juego.mover();

      juego.ganaste(pantalla);
      juego.perdiste(pantalla);
      juego.reiniciar();
    }    
    if (estado=="callejon") {
      image(fotos[12], 100, 40, 300, 300);
      boton.botonContinuar(150, 450, 200, 25);
      println(estado);
    }  
    if (estado=="amigos") {
      image(fotos[14], 100, 40, 300, 300);
      println(estado);
      boton.botonContinuar(150, 450, 200, 25);
    }
    if ( estado=="creditos" ) {
      background(200);

      text("Guion:Lisandro Aguiar", 250, 500-mov);
      text("Montaje:Lisandro Aguiar", 250, 600-mov);
      text("Imagenes:Lisandro Aguiar", 250, 700-mov);
      text("Programacion:Lisandro Aguiar", 250, 800-mov);
      text("Programacion:Tatiana Segundo", 250, 900-mov);
      text("Patente pendiente", 250, 1100-mov);
      mov+=5;
      if (m>500) {
        boton.botonInicio();
      }
    }
    println("m: ", m);
  }
  void cambiarEstado(String e) {

    estado=e;
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
    if ( estado=="grupotaxi" && C==-1 && m>10) {
      m=0; 
      estado="grupo";
    }
    if ( estado=="grupotaxi" && C==1 && m>10) {
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
      estado="minijuego";
    }  
    if (estado=="robado"&& A==true && m>10) { 
      m=0; 
      A=false;
      estado="perdiste";
    }   
    if ( estado=="minijuego" && C==1 && m>10) {
      m=0; 
      estado="callejon";
    }    
    if ( estado=="minijuego" && C==-1 && m>10) {
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
  String getE() {
    return (estado);
  }
}
