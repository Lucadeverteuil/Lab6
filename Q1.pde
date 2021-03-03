float x1, y1, x2, y2;
float r,g,b,counter;

//attributes of the two circles - change to get differnt outputs
float r1 = 120, r2=160;
float theta1 = 0, theta2 = PI/4;
float speedTh1 = PI/35, speedTh2 = PI/57.5;  

void setup(){
  size(400,400);
  background(0);
  stroke(255,255,0,50);  // line color
  fill(255);             // text color
  text("INNER Radius = " + r1 + "  Speed Theta 1 =  PI / " + PI/speedTh1, 10,15);
  text("OUTER Radius = " + r2 + "  Speed Theta 2:  PI / " + PI/speedTh2, 10,30);
}
void draw(){
  //[+2] move the origin to the center of the sketch
 translate(width/2, height/2);
  

  stroke(r,g,b);
  x1= (r1*cos(theta1));
  x2= (r2*cos(theta2));
  y1=(r1*sin(theta1));
  y2=(r2*sin(theta2));
   
  line(x1,y1,x2,y2);
 
   theta1 += speedTh1;
    theta2+= speedTh2;
  
  if(r ==255)
  {
    counter ++;
    r= 254;
  }else if(g ==255)
  {
    counter ++;
    g= 254;
  }else if (b ==255)
  {
    counter ++;
    b= 254;
  }
  
  
 if(counter == 0)
 {
   r = r+5;
 }else if(counter == 1)
 {
   g = g +5;
 }else if(counter ==2)
 {
   b = b+5;
 }else if(counter ==3)
 {
   r =0;
   g =0;
   b =0;
   counter =0;
 }
  
  
}
