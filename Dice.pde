
void setup()
{
  noLoop();
  size(300, 300);
}
void draw()
{
  for (int y = 45; y<=300-45; y = y + 45)
  {
    for (int x = 45; x <=300-45; x= x +45)
    {
      Die kek = new Die(x, y);
      kek.roll();
      kek.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die 
{
  //variable declarations here
  int posx, posy, dot;
  Die(int x, int y) //constructor
  {
    posx = x;
    posy = y;
  }
  void roll()
  {
    dot = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(180, 0, 0);
    rect(posx, posy, 30, 30);
    if (dot == 1)
    {
      fill(255);
      ellipse(posx + 15, posy +15, 5, 5);
    }
    if (dot == 2)
    {
      fill(255);
      ellipse(posx + 8, posy +22, 5, 5);
      ellipse(posx + 22, posy +8, 5, 5);
    }
    if (dot == 3)
    {
      fill(255);
      ellipse(posx + 8, posy +22, 5, 5);
      ellipse(posx + 15, posy +15, 5, 5);
      ellipse(posx + 22, posy +8, 5, 5);
    }
    if (dot == 4)
    {
      fill(255);
      ellipse(posx + 10, posy + 10, 5, 5);
      ellipse(posx + 10, posy + 20, 5, 5);
      ellipse(posx + 20, posy + 10, 5, 5);
      ellipse(posx + 20, posy + 20, 5, 5);
    }
    if (dot == 5)
    {
      fill(255);
      ellipse(posx + 8, posy +22, 5, 5);
      ellipse(posx + 15, posy +15, 5, 5);
      ellipse(posx + 22, posy +8, 5, 5);
      ellipse(posx + 22, posy +22, 5, 5);
      ellipse(posx + 8, posy +8, 5, 5);
    }
    if (dot == 6)
    {
      fill(255);
      ellipse(posx + 10, posy + 8, 5, 5);
      ellipse(posx + 10, posy + 16, 5, 5);
      ellipse(posx + 10, posy + 24, 5, 5);
      ellipse(posx + 20, posy + 8, 5, 5);
      ellipse(posx + 20, posy + 16, 5, 5);
      ellipse(posx + 20, posy + 24, 5, 5);
    }
  }
}
