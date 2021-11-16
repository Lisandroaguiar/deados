
Aventura aventura;
void setup(){
 size(500,500);
aventura= new Aventura();
  
}
void draw(){
  aventura.dibujar();
 
}

void mouseClicked(){
aventura.actualizar();

}
