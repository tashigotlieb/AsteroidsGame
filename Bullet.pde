public class Bullet extends Floater {
  double dRadians;

public Bullet(Spaceship joe) {
myCenterX = joe.getCenterX();
myCenterY = joe.getCenterY();
myPointDirection = joe.getmyPointDirection();
accelerate(0.3);
    dRadians =myPointDirection*(Math.PI/180);     
}
public void show() {
ellipse((float)myCenterX,(float)myCenterY,15,10);
}
public void move() {
  myCenterX += ((0.5) * Math.cos(dRadians));    ;
  myCenterY += ((0.5) * Math.sin(dRadians));
  
}
public float getCenterX() {
  return (float)myCenterX;
}
 public float getCenterY() {
  return (float)myCenterY;
} 
  
  
  
  
  
}
