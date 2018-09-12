int x=0;
float y=PI/4;
int z=250;
void setup()
{
  size(500,500);
  frameRate(15);
}
void draw()
{
  background(0);
  Dot(z);
  pacMan(x,y);
  eye(x);
}
void pacMan(int a, float b)
{
 noStroke();
 fill(255,255,0);
 if (a%4>0)
 {
   b=0;
 }
 if (a%4==0)
 {
   b=(PI/4);
 }
 if (a>600)
 {
 a=0;
 }
 arc(a,250,200,200,PI/4-b,7*PI/4+b);
 a=a+10;
 x=a;
}
void eye(int c)
{
  fill(0);
  ellipse(c,200,20,20);
}
void Dot(int d)
{
 fill(255);
 ellipse(d,250,15,15);
 if (d==x)
 {
   d=700;
   z=d;
 }
 if (x==600)
 {
   d=250;
   z=d;
 }
}
