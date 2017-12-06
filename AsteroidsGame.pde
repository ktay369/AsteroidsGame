Stars[] sky = new Stars[200];
Spaceship spaceship;
ArrayList<Asteroid> ast = new ArrayList<Asteroid>();

ArrayList<Bullet> shot = new ArrayList<Bullet>();
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
  for (int i = 0; i<sky.length; i++)
  {
   sky[i].show(); 
  }
  spaceship.show();
  spaceship.move();


  for (int i = 0; i<ast.size(); i++)
  {
    if(shot.size()>0){
      if(dist(ast.get(i).getX(),ast.get(i).getY(),shot.get(i).getX(),shot.get(i).getY())>10){    
    break;
     }
      else{
       //ast.set(i, new Small());
      //ast.add(i+1, new Small());
      ast.remove(i);
      
    break;
      }
    }
  }
  for (int i = 0; i<shot.size(); i++)
  {
    if(shot.size()>0){
      if(dist(ast.get(i).getX(),ast.get(i).getY(),shot.get(i).getX(),shot.get(i).getY())>10){    
    break;
     }
      else{
       //ast.set(i, new Small());
      //ast.add(i+1, new Small());
      shot.remove(i);
    break;
      }
    }
  }
    for (int i = 0; i<ast.size(); i++)
  {
    ast.get(i).show();
    ast.get(i).move();
  }
    
  
  for (int i = 0; i<shot.size(); i++)
  {
    
    shot.get(i).move();
    shot.get(i).show();
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
 if(key=='p')
 {
   shot.add(new Bullet(spaceship));
 }
}