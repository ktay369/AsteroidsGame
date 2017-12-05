class Bullet extends Floater
{
  /*public Bullet(){
   corners = 3;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 0;
      yCorners[0] = -1;
      xCorners[1] = 1;
      yCorners[1] = 1;
      xCorners[2] = -1;
      yCorners[2] = 1;
      myColor = 255;
      myCenterX = spaceship.getX();
      myCenterY = spaceship.getY();
      
      myDirectionX = spaceship.getDirectionX();
      myDirectionY = spaceship.getDirectionY();
      myPointDirection = spaceship.getPointDirection();
  }*/
  Bullet(Spaceship spaceship){
    myCenterX = spaceship.getX();
    myCenterY = spaceship.getY();
    myPointDirection = spaceship.getPointDirection();
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 5*Math.cos(dRadians)+getDirectionX();
    myDirectionY = 5*Math.sin(dRadians)+getDirectionY();
  }
  public void setX(int x){myCenterX = x;}
     public int getX(){return (int)myCenterX;}
     public void setY(int y){myCenterY = y;}
     public int getY(){return (int)myCenterY;}
      public void setDirectionX(double x){myDirectionX = x;} 
   public double getDirectionX(){return myDirectionX;}  
   public void setDirectionY(double y){myDirectionY = y;}   
   public double getDirectionY(){return myDirectionY;}   
   public void setPointDirection(int degrees){myPointDirection = degrees;}   
   public double getPointDirection(){return myPointDirection; }
   public void show(){
    fill(255);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    
    
    ellipse((float)myCenterX, (float)myCenterY, 15, 15);
   }
}