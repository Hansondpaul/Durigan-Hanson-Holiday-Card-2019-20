public class Tree{
 private int x;
 private int y;
 private int layers;
 private color needles;
 
 public Tree(int hx, int hy){
  x = hx;
  y = hy;
  layers = (int)random(2,6);
  needles = #446e02;
 }
 
 public Tree(int hx, int hy, color c){
  x = hx;
  y = hy;
  layers = (int)random(3,6);
  needles = c;
 }
 
 public void show(){
   noStroke();
   fill(#3b260c);
   rect(x-10,y-40,20,80);
   
   fill(needles);
   for(int i = 0; i < layers; i++){
     triangle(x-40,y-35-(i*40),x,y-100-(i*40),x+40,y-35-(i*40));
   }
 }
}
