class Stars //note that this class does NOT extend Floater
{
  private int x, y, col1, col2, col3;
  public Stars(){
     x = (int)(Math.random()*500)+1;
    y = (int)(Math.random()*500)+1;
    col1 = (int)(Math.random()*256);
    col2 = (int)(Math.random()*256);
    col3 = (int)(Math.random()*256);
  }
  
public void show(){
  noStroke();
  fill(col1, col2, col3);
  ellipse(x, y, 2, 2);
}
}