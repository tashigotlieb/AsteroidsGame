//your variable declarations here
Spaceship joe = new Spaceship();
Star[] stars = new Star[200];
Floater floaters = new Floater();

public void setup() 
{
 size(500,500);
  for(int i = 0; i < 200; i++) {
     stars[i] = new Star();
     
  }
}
public void draw() 
{
   background(255);
  for(int i = 0; i < 100; i++) {
     stars[i].show();
  }
 
    joe.show();
  joe.move();
}
public void keyPressed() {
//turn left
  if(key == 'a') {
  joe.turn(-20);
  }
//turn right
  if(key == 'd') {
  joe.turn(20);
  }
  //accelerate
  if(key == ' ') {
  joe.accelerate(1);
  }
   //hyperspace
  if(key == 'h') {
  joe.hyperspace();
  joe.setSpeed(1);
  }
}
