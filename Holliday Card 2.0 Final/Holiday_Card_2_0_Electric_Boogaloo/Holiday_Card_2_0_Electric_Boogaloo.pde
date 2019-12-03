public SnowStorm snow;
public SnowMan man;
public House home;
public Light[] homeLights;
public Tree[] forest;
public Tree[] backWoods;
public PFont font;
public int moon;

void setup(){
  moon = (int)random(-25,0);
  man = new SnowMan(200,397);
  home = new House(300,198);
  snow = new SnowStorm(100,4,7);
  homeLights = new Light[10];
  font = createFont("Aspire-DemiBold.ttf", 30);
  forest = new Tree[4];
  backWoods = new Tree[6];
  
  for(int i = 0; i < homeLights.length; i++){
    homeLights[i] = new Light(305+(10*i), 200);
  }
  
  for(int i = 0; i < forest.length; i++){
    forest[i] = new Tree(80+(96*i),400);
  }
  for(int i = 0; i < backWoods.length; i++){
    backWoods[i] = new Tree(20+(96*i),400, #213600);
  }
  
  size(400,400);
  background(#082957);
  
  ellipseMode(CORNER);
  rectMode(CORNER);
}

void draw(){
  background(#082957);
  
  drawMoon();
  
  for(int i = 0; i < backWoods.length; i++){
    backWoods[i].show();
  }
  
  for(int i = 0; i < forest.length; i++){
    forest[i].show();
  }
  
  fill(#00FF00);
  rect(0,395,400,395);
  
  man.show();
  home.show();
  
  for(int i = 0; i < homeLights.length; i++){
    homeLights[i].show();
  } 
  snow.move();
  snow.show();
  drawCloud();
  fill(#00FFFF);
  textFont(font, 32);
  text("Happy Hollidays!",120, 50);
}

void drawCloud(){
  noStroke();
  fill(100);
  ellipse(0,-25,280,50); 
  fill(140);
  ellipse(100,-25,310,50);
}

void drawMoon(){
  noStroke();
  fill(#f7f3da);
  ellipse(100,100,50,50);
  fill(#082957);
  ellipse(100+moon, 75, 50,100);
  
}
