//DIAPOSITIVAS
int numPantalla, contadorTiempo;

//IMAGENES
PImage img0, img1, img2, img3;
String text0, text01, text1, text2, text3;

//FUENTES
PFont fuente, fuenteN; //negrita

//ANIMACIONES

float movX, movY, Aum, fade;

void setup() {
  size(640, 480);
  frameRate(30);

  //ASIGNACIÓN
  numPantalla = 0;
  contadorTiempo = 0;
  //DIBUJO
  fuente = createFont("data/Typewriter.otf", 30);
  fuenteN = createFont("data/Typewriter N.otf", 30);
  img0 = loadImage("imagine Van Gogh 0.jpg");
  text0 = "IMAGINE VAN GOGH" ;
  text01 = "Fué concebida por Annabelle Mauger \n y desarrollada por Julien Baron,\n Inicialmente se estrenó en Francia\n y luego se expandió a Canadá,\n Estados Unidos y Argentina.";
  img1 = loadImage("imagine Van Gogh 1.jpg");
  text1 = "Imagine Van Gogh es la exposición inmersiva\n del genio de la pintura Holandesa y mundial,\n Vincet Van Gogh. La muestra cuenta\n con tecnología de avanzada,\n denominada “imagen total”, \nmisma que aporta una dimensión\n totalmente nueva al concepto de exposición\n de arte y revoluciona el encuentro entre\n artistas, obras de arte y público.\n La exhibición se sumerge en 200 obras \n de Vincent Van Gogh, en formato de gran tamaño,\n proyectadas a su alrededor en los suelos,\n las paredes y en velas móviles monumentales.";
  img2 = loadImage("imagine Van Gogh 2.jpg");
  text2 = "Hoy en día, una exposición así\n simplemente no podría celebrarse,\n el valor astronómico de las obras\n repercutiría directamente ya que\n en los costes de seguro\n y transporte. Los 200 cuadros proyectados\n en nuestra\n muestra forman parte de prestigiosas\n colecciones de museos.\nUna impresionante\n selección que, sencillamente,\n no puede coincidir físicamente\n en el mismo lugar\n y al mismo tiempo.";
  img3 = loadImage("imagine Van Gogh 3.jpg");
  text3 = "Cada pintura se amplía y se\n proyecta en múltiples\n pantallas táctiles\n de video que van del piso al techo,\n y la exposición está acompañada\n de música clásica:\n una experiencia sensorial que\n permite a los visitantes\n casi sentir las pinceladas en su piel. ";
  //ANIMIACIÓN
  movX = 0;
  movY = 0;
  Aum = 0;
  fade = 0;
}
void draw () {
  background(255);
  textFont( fuente );
  textFont( fuenteN );
tint (255, 210); // aclarar un poco imagenes para que se lea mejor
  if (numPantalla == 1) {
    //pantalla 0
    movX=movX+3;
    if (movX > 320) {
      movX = 320;
    }
    image(img0, 0, 0, width, height);
    fill(0);
    textSize(1);
    textAlign(CENTER, CENTER);
    //título
    textFont( fuenteN );
    text(text0, movX, 180);
    //cuerpo
    textFont( fuente );
    text(text01, movX, movX);
  } else if ( numPantalla == 2 ) {
    //pantalla 1
    Aum ++;
    if ( Aum > 22) {
     Aum = 22; 
    }
    image(img1, 0, 0, width, height);
    fill(0);
    textAlign(CENTER, CENTER);
    textFont ( fuente );
    textSize ( Aum );
    text(text1, width/2, height/2);
  } else if ( numPantalla == 3 ) {
    image(img2, 0, 0, width, height);
    fade = fade + 5;
        if ( fade == 255 ){
            fade = 255;
        }
    fill(0, fade);
    textFont ( fuente );
    textAlign(CENTER, CENTER);
    textSize ( 23 );
    text(text2, width/2, height/2);      
  }else if ( numPantalla == 4) {
    image(img3, 0, 0, width, height);
    movY = movY + 5;
    if ( movY > 240) {
      movY = 240;
    }
    fill(0);
    textSize ( 1 );
    textFont ( fuente );
    textAlign(CENTER, CENTER);
    text(text3, width/2, movY);
  }
  //BOTON DIBUJO INICIO
  if (numPantalla == 0) {
    background(255);
    if ( dist(320, 240, mouseX, mouseY) < 100) {
      fill (0, 255, 0);
    } else {
      fill(255, 0, 0);
    }
    ellipse(320, 240, 200, 200);
    fill(255);
    textAlign(CENTER, CENTER);
    textFont(fuenteN);
    text("INICIAR", 320, 240);
  }
  //BOTON DIBUJO REINICIAR
  if (numPantalla > 4) {
    background(255);
    if ( dist(320, 240, mouseX, mouseY) < 100) {
      fill (0, 255, 0);
    } else {
      fill(255, 0, 0);
    }
    ellipse(320, 240, 200, 200);
    fill(255);
    textAlign(CENTER, CENTER);
    textFont(fuenteN);
    text("REINICIAR", 320, 240);
  }

  //contador
  if (numPantalla >= 1) {
    contadorTiempo++;
    if (contadorTiempo > 30 * 13) {
      contadorTiempo = 0;
      numPantalla++;
    }
  }
}
void mousePressed() {
  //BOTON DE INCIO
  if (numPantalla == 0) {
    if ( dist (320, 240, mouseX, mouseY) < 100) {
      numPantalla = 1;
    }
  }
  //BOTON DE REINCIO
  if (numPantalla > 3) {
    if ( dist (320, 240, mouseX, mouseY) < 100) {
      //reiniciar todos los contadores y variables
      numPantalla = 1;
      contadorTiempo = 0;
      movX = 0;
      Aum = 0;
      fade = 0;
    }
  }
}
