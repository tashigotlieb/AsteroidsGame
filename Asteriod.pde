public class Asteriod extends Floater {
  private double rotationSpeed = (Math.random()*1)+1;
  public Asteriod() {
  corners =6;  //the number of corners, a triangular floater has 3   
xCorners = new int[corners];
yCorners = new int[corners];  
xCorners[0] = -11;
yCorners[0] = -8;
xCorners[1] = 7;
yCorners[1] = -8;
xCorners[2] = 13;
yCorners[2] = 0;
xCorners[3] = 6;
yCorners[3] = 10;
xCorners[4] = -11;
yCorners[4] = 8;
xCorners[5] = -5;
yCorners[5] = 0;
myColor = 0;   
myCenterX  = (Math.random()*500)+1;
myCenterY =  (Math.random()*500)+1;
myXspeed = 0;
myYspeed = 0;   
myPointDirection = 1; 
  }
 public void move() {
turn(rotationSpeed);
super.move();
 }
public double getCenterX() {
  return myCenterX;
}
 public double getCenterY() {
  return myCenterY;
} 
 
}
