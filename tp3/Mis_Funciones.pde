void marco(int cant, float x_, float y_, float cuadMax_) {
  push();
  translate(x_, y_);
  for (int i=0; i<cant; i++) {
    if (espar(i)) {
      fill (blanco);
    } else {
      fill(negro);
    }
    scale(0.9, 0.9);
    rotate(0.01);
    rectMode(CENTER);
    rect (0, 0, cuadMax_, cuadMax_);
  }
  pop();
}
void grilla() {
  translate (35, 35);
  for (int i=0; i<columnas; i++) {
    for (int o=0; o<filas; o++) {
      float a = 400/columnas;
      float b = 400/filas;
      marco(100, i*a, o*b, a);
    }
  }
}
boolean espar(int num) {
  if (num % 2 == 0) {
    return true;
  } else {
    return false;
  }
}
