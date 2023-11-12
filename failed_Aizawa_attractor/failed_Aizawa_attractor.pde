float x = 1;
float y = 1;
float z = 1;
float dx;
float dy;
float dz;

float a = 0.7;
float b = 3.5;
float c = 0.6;
float d = 0.95;
float e = 0.25;
float f = 0.1;

float colour = 0;
float colMultiplier = 1;

void setup()
{
  background(0);
  size(500, 700, P3D);
}
void draw()
{
  float px = x;
  float py = y;
  float pz = z;
  float t = 0.01;
  dx = ((z - a) * x - (x - dx) * y) * t;
  dy = (b * x + (z - a) * y) * t;
  dz = (c + d * z - pow(x, 3)/3 - (pow(x, 2) + pow(y, 2)) * (1 + e * z) + f * z * pow(x, 3)) * t;
  float offset = random(-2, 2);
  x += dx;
  y += dy;
  z += dz;
  //translate(width/2, height/2);
  ////stroke(colour * random(-3, 3), colour * random(-3, 3), colour * random(-3, 3));
  //scale(5);
  //line(px, py, pz, x, y, z);

  println(x, y, z, " - ", px, py, pz);
  //lights();

  scale(1);
  translate(width/2, height/2);
  stroke(255);
  point(x, y, z);

  //colour += 1 * colMultiplier;
  //if ((colour > 255) || (colour < 0))
  //{
  //  colMultiplier = colMultiplier * -1;
  //}
}
//made by Zane Copyright hahaha ur stinky
