public class House{
  private int x;
  private int y;
  
  public House(int hx, int hy){
x = hx;
y = hy;
  }

public void show(){
  stroke(0, 0, 0);
    fill(225, 0, 0);
    rect(x, y, 200, 200);
    fill(#91bfff);
    rect(x+20, y+20, 50, 50);
    fill(150,110, 110);
    rect(x+80, y+100, 50, 100);
    fill(0);
    ellipse(x+90, y+150, 5, 5);
    fill(0);
    triangle(x-25, y, x+100, y-100, x+225, y);
    
    
    
}
}

  House test;
  void setup(){
    test = new House(200, 200);
    size(500, 500);
    
  }
  void draw(){
test.show();
  }
