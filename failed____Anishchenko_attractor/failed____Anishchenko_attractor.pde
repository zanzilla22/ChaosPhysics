float x = 1;
float y = 1;
float z = 1;
float dx;
float dy;
float dz;

float a = 10;
float b = 28;
//float c = 8/3;

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
  
  float I;
  if(x >= 0)
  {
    I = x;
  } else
  {
    I = 1;
  }
  dx = (a * x + y - x * z) * t;
  dy = (x * -1) * t;
  dz = (b * z + b * I * pow(x, 2)) * t;
  float offset = random(-2, 2);
  x += dx;
  y += dy;
  z += dz;
  //translate(width/2, height/2);
  //stroke(colour * random(-3, 3), colour * random(-3, 3), colour * random(-3, 3));
  //scale(5);
  //line(px, py, pz, x, y, z);

  ////println(x, y, z, " - ", px, py, pz);
  ////lights();
  scale(1);
  stroke(200);
  point(x, y, z);
  
  //colour += 1 * colMultiplier;
  //if ((colour > 255) || (colour < 0))
  //{
  //  colMultiplier = colMultiplier * -1;
  //}
}
//made by Zane Copyright hahaha ur stinky
