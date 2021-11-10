class Pantalla {
  Boton boton;
  //VARIABLES (propiedades)
  float posX, posY;
  int tamX, tamY;
  int numFotos = 17;
  String estado="Inicio";
  PImage[] fotos = new PImage [numFotos];
  //CONSTRUCTOR ("setup" de mi clase)
  Pantalla(float posX_, float posY_) {
    boton=new Boton(100, 100, 100, 100);
    posX = posX_;
    posY = posY_;
    tamX = 300; ///////////////////////Ver!
    tamY = 300;
    for (int i = 0; i < fotos.length; i++) {
      fotos[i] = loadImage("foto"+ nf(i, 2) + ".jpg");
    }
  }  
  //METODOS (funciones)


  void andarBoton(String e, float x, float y, float tx, float ty) {  
    if (mouseX > x && y < x +tx && mouseY > y && mouseY < y + ty ) {
      fill(245, 190, 247);

      if (mousePressed) { 
        println("si");
        estado=e;
        fill(230, 133, 232);
      }
    }}

    void andarBotonDoble(String e, String e2, float x, float y, float tx, float ty, float x2, float y2) {  
      if (mouseX > x && x < x +tx && mouseY > y && mouseY < y + ty ) {
        fill(245, 190, 247);

        if (mousePressed) { 
          println("si");
          estado=e;
          fill(230, 133, 232);
        }
      }
      if (mouseX > x2 && x2 < x2 +tx && mouseY > y2 && mouseY < y2 + ty ) {
        fill(245, 190, 247);

        if (mousePressed) { 
          println("si");
          estado=e2;
          fill(230, 133, 232);
        }
      }}
    
    ////////////////Consultar tamaño primera imagen(no es 300,300 , es width y height)
    void dibujar() {
      background(0);
      for (int i = 0; i < fotos.length; i++) {
        image(fotos[i], this.posX, posY);
        fotos[i].resize(this.tamX, this.tamY);
      }
      if (estado=="Inicio") {
        image(fotos[16], 0, 0);
        tamX=width;
        tamY=height;
        boton.boton(100, 100, 100, 100);
        pantalla.andarBoton("boliche", 100, 100, 100, 100);
        println(estado);
      }

      if ( estado=="boliche" ) {
        background(0);
        boton.boton(100, 100, 100, 100);
        pantalla.andarBoton("sustancia", 100, 100, 100, 100);
      }

      if ( estado=="sustancia" ) {
        background(0);
        boton.botonDoble(100, 100, 100, 100, 300, 300);
        pantalla.andarBotonDoble("ambulancia", "caminar",100, 100, 100, 100, 300, 300);
      } 
      if (estado=="ganaste") { 
        boton.boton(100, 100, 100, 100);
        pantalla.andarBoton("sustancia", 100, 100, 100, 100);
      }   
      if ( estado=="ambulancia" ) {
        background(0);
        boton.boton(100, 100, 100, 100);
        pantalla.andarBoton("ambulancia2", 100, 100, 100, 100);
      }  
      if (estado=="ambulancia2") {
        background(0);
        boton.boton(100, 100, 100, 100);
        pantalla.andarBoton("ganaste", 100, 100, 100, 100);
      }  
      if ( estado=="creditos" ) {
        background(0);
        boton.boton(100, 100, 100, 100);
        pantalla.andarBoton("inicio", 100, 100, 100, 100);
      }  
      if ( estado=="perdiste" ) {
        background(0);
        boton.boton(100, 100, 100, 100);
        pantalla.andarBoton("inicio", 100, 100, 100, 100);
      }  
      if ( estado=="caminar" ) {
        background(0);
        boton.boton(100, 100, 100, 100);
        pantalla.andarBoton("grupotaxi", 100, 100, 100, 100);
      }  
      if ( estado=="grupotaxi" ) {
        background(0);
        boton.botonDoble(100, 100, 100, 100, 300, 300);
        pantalla.andarBotonDoble("grupo","taxi",100, 100, 100, 100, 300, 300);
      }   
      if ( estado=="grupo" ) {
        background(0);
        boton.botonDoble(100, 100, 100, 100, 300, 300);
        pantalla.andarBotonDoble("correr","robado",100, 100, 100, 100, 300, 300);
      }  
      if ( estado=="taxi" ) {
        background(0);
        boton.botonDoble(100, 100, 100, 100, 300, 300);
        pantalla.andarBoton("preso",100, 100, 100, 100);
      }    
      if ( estado=="preso" ) {
        background(0);
        boton.boton(100, 100, 100, 100);
        pantalla.andarBoton("preso2", 100, 100, 100, 100);
      }    
      if ( estado=="preso2" ) {
        background(0);
        boton.boton(100, 100, 100, 100);
        pantalla.andarBoton("perdiste", 100, 100, 100, 100);
      }  
      if ( estado=="correr" ) {
        background(0);
        boton.boton(100, 100, 100, 100);
        pantalla.andarBoton("derechaIzquierda", 100, 100, 100, 100);
      }  
      if (estado=="robado") {
        background(0);
        boton.boton(100, 100, 100, 100);
        pantalla.andarBoton("perdiste", 100, 100, 100, 100);
      }   
      if ( estado=="derechaIzquierda" ) {
        background(0);
        boton.botonDoble(100, 100, 100, 100, 300, 300);
        pantalla.andarBotonDoble("amigos","callejon",100, 100, 100, 100, 300, 300);
      }    
      if (estado=="callejon") {
        background(0);
        boton.boton(100, 100, 100, 100);
        pantalla.andarBoton("robado", 100, 100, 100, 100);
      }  
      if (estado=="amigos") {
        background(0);
        boton.boton(100, 100, 100, 100);
        pantalla.andarBoton("ganaste", 100, 100, 100, 100);
      }
      println(estado);
    }
    void actualizarPantalla() {
    }
    String getE() {
      return (estado);
    }
  }
