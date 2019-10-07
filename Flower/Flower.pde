int r=60;
float ballX;
float ballY;
PVector pos;
PVector vel;

void setup()
{
  size(600,400);
  //background(#43AF76);
  pos = new PVector(width/2, height/2);
  vel = new PVector(2.2,1.6);
}

void draw()
{
  // Refresh background (wipe the slate clean):
  background(#43AF76);
  
  // Move flower:
  pos.add(vel);
  
  // --------- Collision:
  
  float rr = r/2; // Because of the current ellipse mode, the 'r' value is really the diameter of the circles.
  float wl = r*cos(4*PI/5) - rr; // Left width (halved)
  float wr = r + rr; // Right width (halved)
  float h = r*sin(2*PI/5) + rr; // Height (halved)
  // Collide with horizontal walls:
  if(pos.x+wl < 0 || pos.x+wr > width)
  {
    pos.x = constrain(pos.x, -wl, width-wr); // Constrain X to window area.
    vel.x *= -1; // Bounce horizontally.
  }
  
  // Collide with vertical walls:
  if(pos.y-h < 0 || pos.y+h > height)
  {
    pos.y = constrain(pos.y, h, height-h); // Constrain Y to window area.
    vel.y *= -1; // Bounce vertical.
  }
  
  // Draw flower:
  fill(#FFA005);
  for (float i = 0 ; i < PI*2; i += 2*PI/5)
  {
    ballX = pos.x + r*cos(i);
    ballY = pos.y + r*sin(i);
    ellipse(ballX, ballY, r, r); 
  }
  
  fill(20, 0, 100);
  ellipse(pos.x, pos.y, r*1.2, r*1.2);
}  
 
