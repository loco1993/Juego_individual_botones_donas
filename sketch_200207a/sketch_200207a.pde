import processing.serial.*;

Serial port;

int leer;

void setup ()

{

  size (200, 200);

  println(Serial.list());

  port =new Serial (this, Serial.list()[2 ], 9600);
}

void draw() {
  background(0);
  if (0<port.available()) {
    leer= port.read();
  }

  println(leer);
  
  fill (255);
  
  if (leer==1)
  {
  rect (50,50,100,100);
  }
}
