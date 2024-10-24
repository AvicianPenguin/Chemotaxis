class Bacteria{
  int myX, myY, myColor;
  Bacteria(){
    myX = width/2;
    myY = height/2;
    myColor = color(255,255,255);
  }
  Bacteria(int x, int y){
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void show(){
    ellipse(myX,myY,30,30);
    fill(myColor);
  }
  void move(){
    if(mouseX-myX>=10)
      myX = myX + (int)(Math.random()*3)+1; // -1, 0, 1
    else if(mouseX-myX<=10)
      myX = myX + (int)(Math.random()*3)-3;
    else
      myX = myX + (int)(Math.random()*3)+1; 
      
    if(mouseY-myY>=10)
      myY = myY + (int)(Math.random()*3)+1; // -1, 0, 1
    else if(mouseY-myY<=10)
      myY = myY + (int)(Math.random()*3)-3;
    else
      myY = myY + (int)(Math.random()*3)+1; 
  }
}
Bacteria [] colony = new Bacteria[10];
void setup(){
   size(500,500);
   background(0);
   for(int i = 0; i < colony.length; i++){
     colony[i] = new Bacteria((int)(Math.random()*250),(int)(Math.random()*250));
   }
}

void draw(){
  background(0);
   for(int i = 0; i < colony.length;i++){
     colony[i].move();
     colony[i].show();
   }
}
