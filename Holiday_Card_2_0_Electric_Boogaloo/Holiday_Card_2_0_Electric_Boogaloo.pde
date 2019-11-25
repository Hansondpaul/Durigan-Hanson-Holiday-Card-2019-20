public SnowStorm test;

void setup(){
  test = new SnowStorm(5,5);
  size(400,400);
}

void draw(){
  background(0);
  test.move();
  test.show();
}
