class Spaceship extends Floater  
{   
  int myX, myY;
  double myDirectionX, myDirectionY, myPointDir;
  //int [] xCorners = {-8, 16, -8};
  //int [] yCorners = {-8, 0, 8};

    //your code here
    public Spaceship(){
      corners = 3;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      myColor = 255;
      myCenterX = 250;
      myCenterY = 250;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 90;
    }
     public void setX(int x){myCenterX = x;}
     public double getX(){return myCenterX;}
     public void setY(int y){myY = y;}
     public int getY(){return myY;}
      public void setDirectionX(double x){myDirectionX = x;} 
   public double getDirectionX(){return myDirectionX;}  
   public void setDirectionY(double y){myDirectionY = y;}   
   public double getDirectionY(){return myDirectionY;}   
   public void setPointDirection(int degrees){myPointDirection = degrees;}   
   public double getPointDirection(){return myPointDirection; }
}