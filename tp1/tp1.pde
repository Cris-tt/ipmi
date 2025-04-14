void setup(){
  size(800,400);
  //fondo------------------------------------------------------------------------
background(55,155,40);
noStroke();
fill(133,200,88);
tint(255, 128);
rect(400,200,400,200);

 //tierra
stroke(0);
fill(118,85,11);
rect(400,327,100,700);

 //hojas
noStroke();
fill(31,118,35);
rect(400,124,40,40);
rect(500,104,90,50);
rect(600,12,70,70);
rect(700,4,60,60);
rect(400,0,100,100);
rect(700,170,90,90);
fill(187,260,64);
rect(400,237,90,90);
fill(187,245,64);
quad(686,95, 784,94, 784,175, 685,175);
quad(421,56, 537,56, 537,150, 421,150);



stroke(0);
//formas fondo 
strokeWeight(7);
strokeCap(SQUARE);
stroke(110,118,42);
    //árboles izq
line(445,76,482,307);       
line(481,377,428,187);
    //árbol der
strokeWeight(15);
line(724,92,718,320);
strokeWeight(7);


//PELO---------------------------------------------------------------------------------------
noStroke();
fill(10);
ellipse(580,140,240,240);
//mechones fondo-----------------------------------------------------------------------------
arc(475,221,70,80,0,PI/4);
fill(0);
arc(665,224,40,90,0,PI+HALF_PI,PIE);
arc(548,41,80,50,0,2*PI);
arc(621,37,80,50,0,2*PI);
arc(527,254,80,50,0,2*PI);
arc(618,251,80,50,0,2*PI);


//silueta CUERPO ----------------------------------------------------------------------------
stroke(1);
strokeWeight(3);
beginShape();
fill(174,178,129);
vertex(407,398);
vertex(434,349);
vertex(462,318);
vertex(506,300);
vertex(521,291);
vertex(550,322);
vertex(613,328);
vertex(648,265);
vertex(800,331);
vertex(800,400);
endShape();


//silueta CABEZA-----------------------------------------------------------------------------


fill(211,188,130);
beginShape();
//cuello de remeera
vertex(533,274);
vertex(521,291);
vertex(550,322);
vertex(613,328);
vertex(648,265);
vertex(637,272);
vertex(630,224);
endShape();

bezier(514,303 ,559,361  ,645,352,  660,273);


//rostro
beginShape();
vertex(631,222);
vertex(556,274);
vertex(526,273);
vertex(517,257);
vertex(499,199);
vertex(502,186);
vertex(486,169);
vertex(489,118);
vertex(515,99);
vertex(605,124);
vertex(636,198);
endShape();


//sombras------------------------------------------------------------------------------------
//rostro
fill(201,168,114);
noStroke();
triangle(548,280,634,272,629,227);
triangle(554,274, 631,221, 554,154);
triangle(526,190,641,215,642,132);

triangle(525,165, 516,97, 488,150);

triangle(529,210, 554,233, 554,200);

triangle(610,311, 654,289, 637,319);

triangle(557,334, 560,319, 608,340);

triangle(527,270, 535,255, 558,272);

//remera
fill(120,142,83);
triangle(457,344, 475,400, 440,400);
triangle(595,356, 658,340, 626,385);
triangle(721,374, 747,400, 708,400);
triangle(662,278, 680,279, 659,336);

//mechones__________________________________________________________________________________
noStroke();
strokeWeight(10);
fill(0);
arc(610,150,40,60,0,PI+HALF_PI,OPEN);
fill(0,230);   //transparente
arc(475,135,70,110,0,PI+PI/2,OPEN);  //izq
fill(0);
arc(615,210,70,80,0,PI/4);
arc(670,166,70,110,0,PI+PI/2,PIE);

arc(665,69,70,110,0,PI,PIE);
arc(515,45,70,110,0,PI,PIE);


//RAZGOS FACIALES-----------------------------------------------------------------------

//cejas
fill(30);
triangle(487,154,510,138,521,155);
triangle(555,155,574,141,600,154);
//ojos
fill(255);
ellipse(515,172,25,15);
fill(111,70,20);
circle(513,172,14);

fill(255);
ellipse(576,169,25,15);
fill(111,70,20);
circle(572,170,14);


//nariz
fill(211,181,119);
circle(537,202,25);

strokeWeight(2);
noStroke();
arc(545,200,20,20,0,PI);

stroke(1);
strokeWeight(2);
line (537,206,544,206);

stroke(211,181,119);
strokeWeight(15);
line(535,201,545,157);

//boca
fill(178,97,135);
noStroke();
triangle(517,237,530,229, 540,238);
triangle(533,237,542,230,563,236);

triangle(521,237,534,244, 554,237);

stroke(211,181,119);
strokeWeight(8);
line(231,227,240,217);

//mochila--------------------------------------------------------------------



//cosa negra(?
noStroke();
fill(0);
quad(523,291, 533,276, 603,400, 585,398);


//parte azul
stroke(0);
strokeWeight(5);
fill(129,124,221);
quad(703,286,755,311,704,400,616,400);
quad(463,315,510,300,545,400,493,398);
quad(535,368,549,363,568,400,543,398);

line(660,369,636,398);
fill(75,95,152);
noStroke();
quad(476,318, 507,378, 530,377, 501,308);
stroke(0);

//parte gris
fill(144,143,162);
strokeCap(ROUND);
quad(506,297,521,289,549,362,534,366);
quad(700,282,716,289,660,369,643,366);


//arquto
beginShape();
vertex(553,400);
vertex(554,385);
vertex(570,369);
vertex(613,375);
vertex(639,398);
vertex(609,400);
vertex(591,384);
vertex(580,388);
vertex(579,400);
endShape();


}



//imagen y coordenadas

void draw(){
  
  println("X");
  println(mouseX);
  println("Y");
  println(mouseY);
    //imagen referencia
    PImage autorretrato;
  autorretrato = loadImage("autorretrato.jpeg");
  tint(255);
image(autorretrato,0,0,400,400 );
}
