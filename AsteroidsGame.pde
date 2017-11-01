Stars[] sky = new Stars[200];
Spaceship spaceship;
public void setup() 
{
  size(500, 500);
  for (int i = 0; i<sky.length; i++)
  {
   sky[i] = new Stars(); 
  }
  spaceship = new Spaceship();
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