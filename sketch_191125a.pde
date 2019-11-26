public class SnowMan{
  private int x;
  private int y;
  
 public SnowMan(){
    stroke(0, 0, 0);
    fill(255, 255, 255);
    ellipse(400, 350, 100, 100);
    fill(255, 255, 255);
    ellipse(400, 285, 80, 80);
    fill(255, 255, 255);
    ellipse(400, 230, 60, 60);
    fill(74, 78, 84);
    rect(370, 196, 60, 10);
  }
  void drawHat(){
    noStroke();
    fill(74, 78, 84);
    rect(382, 165, 35, 35);
    fill(0, 0, 0);
    ellipse(390, 220, 8, 8);
    ellipse(408, 220, 8, 8);
    ellipse(386, 235, 7, 7);
    ellipse(393, 243, 7, 7);
    ellipse(401, 245, 7, 7);
    ellipse(409, 243, 7, 7);
    ellipse(416, 235, 7, 7);
  }
  void drawArms(){
}
}
 SnowMan test;
void setup(){
  test = new SnowMan();
  size(500,500);
}

void draw(){
  test.drawHat();
}
