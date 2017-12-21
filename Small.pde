class Small extends Asteroid
{
  public Small(){
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
  public Small(int x, int y)
  {
    myCenterX = x;
    myCenterY = y;
  }
}