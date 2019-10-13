//Flower myFlower1;  // the first instance of the Flower class
//Flower myFlower2;
//Flower myFlower3;
Flower flowerList[]; // Making an object list so it is easier to add new flowers and to update/draw them all.

void setup() {
  size(1600,1200);
  background(#43AF76);
  
  int _r1= 60;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  flowerList = new Flower[6];
  flowerList[0] = new Flower(_r1, _petals, _x, _y, 1, 4, _pc); // Spaced out the arguments for the three flowers, so it's easier to differentiate them from one another.
  flowerList[1] = new Flower(_r1, _petals, _x+random(-100,100), _y, 4, 2, _pc);
  flowerList[2] = new Flower(_r1, _petals, _x+50, _y, -2, -2, _pc);

  flowerList[3] = new Flower(32, 4, _x+50, _y, -8, 4, #33FF66);
  flowerList[4] = new Flower(128, 5, _x+50, _y, 1, 0.5, #123456);
  flowerList[5] = new Flower(16, 10, _x+50, _y, -10, 5, #FEDCBA);
  
//  myFlower2 = new Flower();
//   myFlower3 = new Flower();
}

void draw(){
  background(#43AF76); // Refresh background so we don't create trails.
  
  for(int i = 0; i < flowerList.length; i++)
  {
    flowerList[i].move(); // Move flowers:
    flowerList[i].collide(); // Collide flowers with screen edges:
    flowerList[i].display(); // Draw flowers:
  }
  //noLoop(); // Remove this since we DO want to animate the flowers.
}
