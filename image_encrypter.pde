PImage original;
int x,y;
float R,G,B;

void setup()
{
  size(800,600);
  original = loadImage("pic_01.jpg");
  x = original.width;
  y = original.height;
  surface.setResizable(true);
  surface.setSize(x,y);
}

void draw()
{
  for(int i=1;i<x*y;i++)
  {
    R = red(original.pixels[i]) + red(original.pixels[i-1]);
    G = green(original.pixels[i]) + green(original.pixels[i-1]);
    B = blue(original.pixels[i]) + blue(original.pixels[i-1]);
    if(R>255)  R-=255;
    if(G>255)  G-=255;
    if(B>255)  B-=255;
    original.pixels[i] = color(R,G,B);
  }
  
  background(original);
  noLoop();
}