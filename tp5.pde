Juego juego;
void setup(){
  imageMode( CENTER );
  textAlign( CENTER );
  size( 800,600 );
  juego = new Juego();
}

void draw(){
  juego.actualizarJuego();
  juego.dibujarJuego();
  juego.puntos();
}

void keyPressed(){
  juego.tecleoJuego();
}
