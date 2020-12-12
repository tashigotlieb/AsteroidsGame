//your variable declarations here
Floater floaters = new Floater();
Spaceship joe = new Spaceship();
Star[] stars = new Star[200];
ArrayList <Asteriod> AL = new ArrayList <Asteriod>();
Bullet tom = new Bullet(joe);
ArrayList <Bullet> bulletList = new ArrayList();

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
   for(int j =0; j< bulletList.size(); j++) {
      bulletList.get(j).move();
     bulletList.get(j).show();
   }

  for(int z =0; z< AL.size(); z++) {  
    for(int j =0; j< bulletList.size(); j++) {
   if((dist((float)(bulletList.get(j).getCenterX()), (float)(bulletList.get(j).getCenterY()), (float)(AL.get(z).getCenterX()), (float)(AL.get(z).getCenterY())) < 20)) {
     AL.remove(z);
     bulletList.remove(j);
 break;
}
  }
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
if(key == 'b') {
bulletList.add(new Bullet(joe)); 

}

  

}
