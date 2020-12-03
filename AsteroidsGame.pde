//your variable declarations here
Spaceship joe = new Spaceship();
Star[] stars = new Star[200];
Floater floaters = new Floater();
Asteriod[] asteriods = new Asteriod[20];
//ArrayList <Asteriod> AsteroidList = new ArrayList<Asteriod>();
//Asteriod a1 = new Asteriod();
//AsteroidList.add(a1); Why does this now work???
 
public void setup() 
{
 size(500,500);
  for(int i = 0; i < 200; i++) {
     stars[i] = new Star();
     
  }
  for(int i = 0; i < 20; i++) {
     asteriods[i] = new Asteriod();
     
  }
}
public void draw() 
{
   background(255);
  for(int i = 0; i < 100; i++) {
     stars[i].show();
  }
   
   for(int i = 0; i < 20; i++) {
     asteriods[i].show();
     asteriods[i].move();
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
