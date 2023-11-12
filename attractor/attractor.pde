float x = 1;
float y = 1;
float z = 1;
float dx;
float dy;
float dz;

float a = 10;
float b = 28;
float c = 20/3;

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
  dx = (a * (y - x)) * t;
  dy = (x * (b - z) - y) * t;
  dz = (x * y - c * z) * t;
  float offset = random(-2, 2);
  x += dx;
  y += dy;
  z += dz;
  translate(width/2, height/2);
  //stroke(colour * random(-3, 3), colour * random(-3, 3), colour * random(-3, 3));
  //scale(5);
  //stroke(255, 0, 0);
  //strokeWeight(0.5);
  //line(px, py, pz, x, y, z);
  //stroke(0, 255, 0);
  //strokeWeight(1);
  //line(px, py, pz, x, y, z);
  //stroke(0, 0, 255);
  //strokeWeight(1.5);
  //line(px, py, pz, x, y, z);

  //println(x, y, z, " - ", px, py, pz);
  //lights();

  float angle = 0;
  //stroke(colour * random(-3, 3), colour * random(-3, 3), colour * random(-3, 3));
  //rotate(angle);
  scale(5);
  stroke(255, 0, 0);
  strokeWeight(1.5);
  point(x, y, z);
  stroke(0, 255, 0);
  strokeWeight(1);
  point(x, y, z);
  stroke(0, 0, 255);
  strokeWeight(0.5);
  point(x, y, z);
  angle += 1;
  if (angle > 360)
  {
    angle = 0;
  }


  colour += 1 * colMultiplier;
  if ((colour > 255) || (colour < 0))
  {
    colMultiplier = colMultiplier * -1;
  }
}
//made by Zane Copyright hahaha ur stinky
