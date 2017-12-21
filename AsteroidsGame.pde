Stars[] sky = new Stars[200];
Spaceship spaceship;
ArrayList<Asteroid> ast = new ArrayList<Asteroid>();
int down = 0;
ArrayList<Bullet> shot = new ArrayList<Bullet>();
int hitCount = 0;
public void setup() 
{
  size(500, 500);
  for (int i = 0; i<sky.length; i++)
  {
   sky[i] = new Stars(); 
  }
  spaceship = new Spaceship();

  for (int i = 0; i<5; i++)
  {
   ast.add(new Asteroid()); 
     
  }
  
}
public void draw() 
{
  background(0);
  //ship
  for (int i = 0; i<sky.length; i++)
  {
   sky[i].show(); 
  }
  spaceship.show();
  spaceship.move();

  
  //shoot rel ast
  for (int i = 0; i<ast.size(); i++)
  {
    for(int j = 0; j<shot.size(); j++)
    if(shot.size()>0){
      if(dist(ast.get(i).getX(),ast.get(i).getY(),shot.get(j).getX(),shot.get(j).getY())<10){ 
        ast.remove(i);
        shot.remove(j);
        //ast.add(new Small(ast.get(i).getX(), ast.get(i).getX()));
        break;
      }
    
     }
      
    }
  
  //ast show
    for (int i = 0; i<ast.size(); i++)
  {
    ast.get(i).show();
    ast.get(i).move();
  }
    
  //shot show
  for (int i = 0; i<shot.size(); i++)
  {
    
    shot.get(i).move();
    shot.get(i).show();
  }
 //ship hit
for(int i = 0; i<ast.size(); i++){
if(down==0&&dist(ast.get(i).getX(),ast.get(i).getY(),spaceship.getX(),spaceship.getY())<15){    
  //spaceship = null;
  fill(0);
  rect(0, 0, 500, 0, 500, 500, 0, 500);
  hitCount++;
  down = 50;
  break;
}
}
//etc text
fill(255);
text("Hit Count: "+hitCount, 100, 100);
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
 if(key=='p')
 {
   shot.add(new Bullet(spaceship));
 }
}