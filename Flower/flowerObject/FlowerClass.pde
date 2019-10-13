class Flower {
  
 // Variables
 
 float r;       // radius of the flower petal
 int n_petals;  // number of petals 
 float x;       // x-position of the center of the flower
 float y;       // y-position of the center of the flower
 float xVel;    // x-velocity of the flower
 float yVel;    // y-velocity of the flower
 int petalColor;// hexadecimal number for the color of petals
 
  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, float temp_xVel, float temp_yVel, int temp_petalColor) {
    r=temp_r;
    n_petals = temp_n_petals;
    x=temp_x;
    y=temp_y;
    xVel = temp_xVel;
    yVel = temp_yVel;
    petalColor=temp_petalColor;
  }
  
  void display () {
    
    float ballX;
    float ballY;
    
    fill(petalColor);
    for (float i=0;i<PI*2;i+=2*PI/n_petals) {
      //ballX=width/2 + r*cos(i);
      //ballY=height/2 + r*sin(i);
      ballX=x + r*cos(i);
      ballY=y + r*sin(i);
      ellipse(ballX,ballY,r,r);
      // Correctly ndenting your code makes it easier to tell where you are and what blocks you're in.
    }
    fill(200,0,0);
    ellipse(x,y,r*1.2,r*1.2);
  }
  
  void move()
  {
    x += xVel;
    y += yVel;
  }
  
  void collide()
  {
    if(x - r/2 < 0 || x + r/2 > width) xVel *= -1;
    if(y - r/2 < 0 || y + r/2 > height) yVel *= -1;
  }
  
}
