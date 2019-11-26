public class SnowStorm{
 private PVector[] flakes;
 private PVector vel; //pixels per frame
 private color white;
 private int size;
 private int buildup;
 
 public SnowStorm(int count, int startingSize){
   
   flakes = new PVector[count]; 
   vel = new PVector(0,1);
   white = (255);
   size = startingSize;
   buildup = 0;
   
   for(int i = 0; i < count; i++){
    flakes[i] = new PVector(random(0,400), random(-600,0));
   }
 }
  
  public void move(){
    for(int i = 0; i < flakes.length; i++){
       flakes[i].x += vel.x;
       flakes[i].y += vel.y;
       if(flakes[i].y >= 400){
         flakes[i].y = 0;
         buildup++;
       }
    }
  }
  public void show(){
    fill(white);
    noStroke();
    for(int i = 0; i < flakes.length; i++)
      ellipse(flakes[i].x,flakes[i].y,size,size);
    rect(0,500-buildup/16,500,buildup/16);
  }
  
}
