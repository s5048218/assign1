/*
author:s5048218@gmail.com
update:2016/07/16
*/
PImage bg1,bg2,treasure,hp,fighter,enemy;
int x,y,z; 
float a,b,c;
void setup () {
  size(640,480) ;
  x=0;  //bg1
  y=-640;  //bg2
  z=0;  //speed
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  treasure=loadImage("img/treasure.png");
  hp=loadImage("img/hp.png");
  fighter=loadImage("img/fighter.png");
  enemy=loadImage("img/enemy.png");
  a=random(30,600);
  b=random(10,440);
  c=random(10,200);
}

void draw() {
  image(bg1,y,0);
  image(bg2,x,0);
  
  // hp
  fill(256,0,0);
  rect(20,10,c,25);
  image(hp,10,10);
  
  image(treasure,a,b);
  image(enemy,(z%640),320);
  image(fighter,590,240);
  
  x+=2;
  y+=2;
  z+=5;
  x=x-(int(x/640)*1280);
  y=y-(int(y/640)*1280);
}
