boolean grilla;
int blanco = 255;
int negro = 0;
int columnas = 5;
int filas = 5;
void mousePressed () {
  if ((blanco == 255)&&(negro==0)) {
    blanco = 0;
    negro = 255;
  } else {
    blanco = 255;
    negro = 0;
  }
}
void keyPressed () {
  println("apretar v para reinciar variables");
  println("apretar r para resetear el dibujo");
  println("apretar mouse para invertir colores");
  println("apretar g para activar grilla");
  println("apretar r para desactivar grilla");
  println("apretar c para colorea aleatorios");
  if (key =='g') {
    grilla = true;
  } else if (key =='r') {
    grilla = false;
  }
  if (key =='c') {
    blanco = color(random(255), random(255), random(255));
    negro  = color(random(255), random(255), random(255));
  }
  if (key== 'z') {
    columnas = 5+1;
  } else if (key == 'x') {
    filas = 5+1;
  }
  if (key=='v') {
    columnas = 5;
    filas = 5;
    blanco = 255;
    negro = 0;
  }
}
