//your variable declarations here
Floater floaters = new Floater();
Spaceship joe = new Spaceship();
Star[] stars = new Star[200];
//Asteriod[] asteriods = new Asteriod[20];
ArrayList <Asteriod> AL = new ArrayList <Asteriod>();

public void setup() 
{
 size(500,500);
  AL.add(new Asteriod());
  AL.add(new Asteriod());
  AL.add(new Asteriod());
  AL.add(new Asteriod());
  AL.add(new Asteriod());
  AL.add(new Asteriod());
  AL.add(new Asteriod());
  AL.add(new Asteriod());
  AL.add(new Asteriod());
  AL.add(new Asteriod()); // more efficient method??
  AL.add(new Asteriod());
  AL.add(new Asteriod());
  AL.add(new Asteriod());
  AL.add(new Asteriod());
  AL.add(new Asteriod());
  for(int i = 0; i < 200; i++) {
     stars[i] = new Star();
     
  }
}
public void draw() 
{
   background(255);
     joe.show();
  joe.move();
  for(int i = 0; i < 100; i++) {
     stars[i].show();
  }
  for(int i = 0; i<AL.size(); i++) {
  AL.get(i).move();
  AL.get(i).show();
  float a = dist(joe.getCenterX(), joe.getCenterY(), AL.get(i).getCenterX(),AL.get(i).getCenterY());
  if(a < 20) {
  AL.remove(i);
  }
 
}



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
