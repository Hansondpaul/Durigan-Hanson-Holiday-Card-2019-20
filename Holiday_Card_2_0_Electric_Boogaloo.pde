public SnowStorm snow;
public SnowMan man;
public Light test;
public House home;

void setup(){
  snow = new SnowStorm(100,2);
  man = new SnowMan(200,400);
  test = new Light(100,100);
  home = new House(300,200);
  size(400,400);
  background(#082957);
  
  ellipseMode(CORNER);
  rectMode(CORNER);
}

void draw(){
  background(#082957);
  snow.move();
  snow.show();
  man.show();
  test.show();
  home.show();
}
