class Star //note that this class does NOT extend Floater
{
 int size = 3;
 private int myX, myY;
 public Star() {
 myX = (int)(Math.random()*500);
 myY = (int)(Math.random()*500);

 }
 public void show() {
   fill(0);
 ellipse(myX,myY,size,size);
 }

}
