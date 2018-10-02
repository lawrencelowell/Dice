String s = "Cool things";
int sum = 0;
void setup()
{
  noLoop();
  size(300, 350);
  stroke(1);
  background(210, 210, 210);
}
void draw()
{
  background((int)(Math.random()*55+30), (int)(Math.random()*55+30), (int)(Math.random()*55+30));
  fill(0);
  rect(0, 0, 300, 50);
  fill((int)(Math.random()*155)+100, (int)(Math.random()*155)+100, (int)(Math.random()*155)+100);
  textSize(24);
  text(s, 90, 30);

  for (int y = 55; y<=300-45; y = y + 45)
  {
    for (int x = 45; x <=300-45; x= x +45)
    {
      Die kek = new Die(x, y);
      kek.roll();
      kek.show();
      kek.sum();
    }

  }
     fill(0);
    rect(0, 280, 300, 70);
    fill((int)(Math.random()*155)+100, (int)(Math.random()*155)+100, (int)(Math.random()*155)+100);
    textSize(24);
    text("Total Rolls ", 60, 320);
    fill((int)(Math.random()*205+50), (int)(Math.random()*205+50), (int)(Math.random()*205+50));
    text("= ", 190, 320);
    fill((int)(Math.random()*155+100), (int)(Math.random()*155+100), (int)(Math.random()*155+100));
    text(sum, 220, 320);
}
void mousePressed()
{
  redraw();
  sum = 0;
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
    if (dot == 1)
    {
      fill(190, 0, 0);
      rect(posx, posy, 30, 30, 7);
      fill(255);
      ellipse(posx + 15, posy +15, 5, 5);
    }
    if (dot == 2)
    {
      fill(0, 255, 255);
      rect(posx, posy, 30, 30, 7);
      fill(255);
      ellipse(posx + 8, posy +22, 5, 5);
      ellipse(posx + 22, posy +8, 5, 5);
    }
    if (dot == 3)
    {    
      fill(235, 0, 235);
      rect(posx, posy, 30, 30, 7);
      fill(255);
      ellipse(posx + 8, posy +22, 5, 5);
      ellipse(posx + 15, posy +15, 5, 5);
      ellipse(posx + 22, posy +8, 5, 5);
    }
    if (dot == 4)
    {      
      fill(255, 235, 0);
      rect(posx, posy, 30, 30, 7);
      fill(255);
      ellipse(posx + 10, posy + 10, 5, 5);
      ellipse(posx + 10, posy + 20, 5, 5);
      ellipse(posx + 20, posy + 10, 5, 5);
      ellipse(posx + 20, posy + 20, 5, 5);
    }
    if (dot == 5)
    {
      fill(240, 128, 114);
      rect(posx, posy, 30, 30, 7);
      fill(255);
      ellipse(posx + 8, posy +22, 5, 5);
      ellipse(posx + 15, posy +15, 5, 5);
      ellipse(posx + 22, posy +8, 5, 5);
      ellipse(posx + 22, posy +22, 5, 5);
      ellipse(posx + 8, posy +8, 5, 5);
    }
    if (dot == 6)
    {
      fill(255, 140, 0);
      rect(posx, posy, 30, 30, 7);
      fill(255);
      ellipse(posx + 10, posy + 8, 5, 5);
      ellipse(posx + 10, posy + 16, 5, 5);
      ellipse(posx + 10, posy + 24, 5, 5);
      ellipse(posx + 20, posy + 8, 5, 5);
      ellipse(posx + 20, posy + 16, 5, 5);
      ellipse(posx + 20, posy + 24, 5, 5);
    }
  }
  void sum() {
    sum = sum + dot;
    if (sum >= 100){
      background(0);
    fill(255,255,155);
    ellipse(150,170,200,200);
  fill(0);
ellipse(110,205,40,40);
ellipse(190,205,40,40);
noFill();
ellipse(150,125,60,60);
  rect(0, 0, 300, 50);
 fill((int)(Math.random()*155)+100, (int)(Math.random()*155)+100, (int)(Math.random()*155)+100);
 textSize(24);
 text("You died 100+.", 70, 30);}
  }
}
