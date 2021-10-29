class cositas{
//campos
PImage [] lata = new PImage [24];
PImage [] botella = new PImage [14];
PImage [] zapatilla = new PImage [62];
float posY;
float posX;
int Vel;
 //constructor
 cositas(float _posX, float _posY, int _Vel){
   for (int i = 0; i <24; i++) {
      lata[i] = loadImage("lata0"+ i + ".gif");
 lata[i].resize(30,30);  }

 for (int a = 0; a <14; a++) {
      botella[a] = loadImage("botella 0"+ a + ".png");
 botella[a].resize(30,30); 
 }
 
 for (int j = 0; j <62; j++) {
     zapatilla[j] = loadImage("zapatilla0"+ j + ".jpg");
 zapatilla[j].resize(30,30); }
   posY=_posY;
   posX=_posX;
   Vel=_Vel;
 
 }
//metodos

void actualizar(){posY+=Vel;
if (this.posY>=500){this.posY=10;}}
void  dibujarLata(){image(this.lata[frameCount%23], this.posX, this.posY);}
void dibujarBotella(){image(this.botella[frameCount%14], this.posX, this.posY);}
void dibujarZapatilla(){image(this.zapatilla[frameCount%62], this.posX, this.posY);}

}
