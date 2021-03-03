
Rect re1;
Rect re2;
Rect re3;
void setup() {
  size(800, 800);
  noStroke();
  fill(255);
  re1 = new Rect(50,50,0.1, 0.3,255);      //creating and object
  re2 = new Rect(100,100,0.1,0.3,255);    // creatung and object
}

void draw() {          // drawing method
  background(0); 
 re1.Rotate();
 re2.Rotate();

}





class Rect        // new class
{
  float x, y,r, speed, Tint; 
  
  Rect(float x1, float y1, float r1, float speed1, float Tint1)        // defining the variables in the class
  {
    r = r1;
    x= x1;
    y = y1;
    speed = speed1;
    Tint = Tint1;
  }
  
  void Rotate()                    // rotates the rectangle
  {
  r = r+ 0.01;
  translate(width/2, height/2);
  rotate(r);
  display();
    
  }
  
  void display()    //creates the rectangle
  {
  rectMode(CENTER);
  fill(0);
  stroke(255);
  strokeWeight(4);
  tint(255,tin());
  rect(0,0,sizeX(),sizeY());
  }
  
  float sizeX()    // chnages the x value of the rectangle
  {
    x=x+speed;
    return x;
    
  }
  float sizeY()    //chnages the y value of the rectangle
  {
    y=y+speed;
    return y; 
  }
  
  float tin()  // chnages the tint of the rectangles
  {
    Tint = Tint -20;
    return Tint;
  }
  
  
  
  
  
  
  
  
  
}
