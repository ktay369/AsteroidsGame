class Asteroid extends Floater
{
  private int rSpeed;
  public Asteroid(){
    corners = 4;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 0;
      yCorners[0] = -4;
      xCorners[1] = 4;
      yCorners[1] = 0;
      xCorners[2] = 0;
      yCorners[2] = 4;
      xCorners[3] = -4;
      yCorners[3] = 0;
      myColor = 255;
      myCenterX = ((int)(Math.random()*480)+11);
      myCenterY = ((int)(Math.random()*480)+11);
      
      myDirectionX = (int)(Math.random()*7)-3;
      myDirectionY = (int)(Math.random()*7)-3;
      myPointDirection = 90;
      if(Math.random()<.5){rSpeed = 5;}
      else{rSpeed = -5;}
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
   public void move()
{
   turn(rSpeed);
   super.move();
}

}