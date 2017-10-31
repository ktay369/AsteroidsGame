Spaceship spaceship;
public void setup() 
{
  size(500, 500);
  spaceship = new Spaceship();
}
public void draw() 
{
  background(0);
  spaceship.show();
  spaceship.move();
}
public void keyPressed(){
  if(key=='w')
  spaceship.accelerate(1.0);
  if(key=='s')
  spaceship.accelerate(-1.0);
  if(key=='k')
  spaceship.turn(3);
  if(key=='l')
  spaceship.turn(-3);
 if(key=='o') 
 {
   spaceship.setDirectionX(0);
   spaceship.setDirectionY(0);
   spaceship.setX((int)(Math.random()*480)+11);
   spaceship.setY((int)(Math.random()*480)+11);
   spaceship.setPointDirection((int)Math.random()*360+1);
 }
}