class FireBall {

  Minim minim;
  AudioPlayer tFire;

  Hades hades;
  PImage bola;
  float x, y;
  boolean disparo;
  int trigger;

  FireBall(PApplet a) {

    minim = new Minim(a);
    tFire = minim.loadFile("throwfireball.mp3", 2000);

    y = 0+50;
    bola = loadImage( "Bola.png" );
    bola.resize( 35, 90);
    disparo = false;
    trigger = 1;
  }

  void dibujar() {
    if ( disparo == true ) {

      image( bola, x, y );
      y += 25;
    }
    if ( y > height + random( 90, 900 ) ) {
      reciclar();
      tFire.play();
      tFire.rewind();
    }
  }

  void disparar() {
    if ( trigger > 0 ) {
      disparo = true;
    }
  }

  void reciclar() {
    y = 0+50;
    disparo = false;
  }

  void posX( Hades hades ) {
    x = hades.getX1();
  }

  float fx() {
    return x;
  }
  float fy() {
    return y;
  }
}
