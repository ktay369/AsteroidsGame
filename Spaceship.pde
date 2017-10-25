class Spaceship extends Floater  
{   
  double myX, myY, myDirX, myDirY, myPtDir;
  xCorners[] xcorners;
  yCorners[] ycorners;

    //your code here
    public Spaceship(){
      corners = 3;
      int [] xcorners = {-8, 16, -8};
      int [] ycorners = {-8, 0, 8};
      myColor = 0;
      myCenterX = 0;
      myCenterY = 0;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 90;
    }
     public void setX(double x){myX = x;}
     public getY(){return myY;}
     public void setY(double y){myY = y;}
     public getY(){return myY;}
      public void setDirectionX(double x){myX = x;} 
   public double getDirectionX(){return myDirX;}  
   public void setDirectionY(double y){myDirY = y;}   
   public double getDirectionY(){return myDirY;}   
   public void setPointDirection(int degrees){myPtDir = degrees;}   
   public double getPointDirection(){return myPtDir; }
}