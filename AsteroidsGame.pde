Stars[] sky = new Stars[200];
Spaceship spaceship;
Asteroid[] ast = new Asteroid[5];
public void setup() 
{
  size(500, 500);
  for (int i = 0; i<sky.length; i++)
  {
   sky[i] = new Stars(); 
  }
  spaceship = new Spaceship();
  for (int i = 0; i<ast.length; i++)
  {
   ast[i] = new Asteroid(); 
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i<sky.length; i++)
  {
   sky[i].show(); 
  }
  spaceship.show();
  spaceship.move();
  for (int i = 0; i<ast.length; i++)
  {
  ast[i].show();
  ast[i].move();
  }
 
}
public void keyPressed(){
  if(key=='w')
  spaceship.accelerate(1.0);
  if(key=='s')
  spaceship.accelerate(-1.0);
  if(key=='d')
  spaceship.turn(5);
  if(key=='a')
  spaceship.turn(-5);
 if(key=='o') 
 {
   spaceship.setDirectionX(0);
   spaceship.setDirectionY(0);
   spaceship.setX((int)(Math.random()*480)+11);
   spaceship.setY((int)(Math.random()*480)+11);
   spaceship.setPointDirection((int)(Math.random()*360)+1);
 }
}