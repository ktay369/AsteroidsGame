class Spaceship extends Floater  
{   
  int myX, myY;
  double myDirX, myDirY, myPtDir;
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
      myColor = 0;
      myCenterX = 0;
      myCenterY = 0;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 90;
    }
     public void setX(int x){myX = x;}
     public int getX(){return myX;}
     public void setY(int y){myY = y;}
     public int getY(){return myY;}
      public void setDirectionX(double x){myDirX = x;} 
   public double getDirectionX(){return myDirX;}  
   public void setDirectionY(double y){myDirY = y;}   
   public double getDirectionY(){return myDirY;}   
   public void setPointDirection(int degrees){myPtDir = degrees;}   
   public double getPointDirection(){return myPtDir; }
}