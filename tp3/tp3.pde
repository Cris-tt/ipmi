/*
Cristóbal Teruel      legajo: 122920/1
 link: https://youtu.be/USgHCdvm_vI
 
 */
int cantidad = 15;
PImage imgRef;
void setup () {
  size(800, 400);
  imgRef = loadImage("M_6.jpg");
}
void draw () {
  if ( grilla==true) {
    background(255);
    translate (400, 0);
    grilla();
    resetMatrix();
    image (imgRef, 0, 0, 400, 400);
  } else {
    translate(400, 0);
    marco(100, 55, 120, 400*2);
    resetMatrix();
    image (imgRef, 0, 0, 400, 400);
  }
}
