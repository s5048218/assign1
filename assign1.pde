/* please implement your assign1 code in this file. */

/*
  draw a small house
  author:s5048218
  update:2016/07/14
*/
int x,y,w,h;
int r,g,b;

void setup(){
  size(640,480);

  x=80;
  y=50;
  w=40;
  h=30;
}

void draw(){
  background(0);
  r=floor(random(256));
  g=floor(random(256));
  b=floor(random(256));
  x=x+1;
  x%=300;
  
  //roff
  stroke(255);   //white
  fill(r,g,b);   //color
  triangle(x+w/2,y,x,y+h/2,x+w,y+h/2);
  
  rectMode(CORNERS);
  
  //wall
  fill(#ffff00);
  rect(x,y+h/2,x+w,y+h);
  
  //door
  stroke(0);
  fill(255);
  rect(x+w/2,y+4.0/6*h,x+5.0/6*w,y+h);
}
