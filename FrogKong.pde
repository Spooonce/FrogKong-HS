PImage kong,
       frog,
       princess,
       ladder;

float fX = 15.00,//frogs X
      fY = 575.00,//frogs Y
      gravity = 5;

boolean jump = true,
        left = false,
        right = false,
        canJump = true,
        down = true,
        leftB = false,
        rightB = false;

int lEdge = 0,
    rEdge = 600,
    ground = 575,
    b1X = 20,
    b1Y = 55,
    b2X,
    b2Y,
    b3X,
    b3Y;



void setup() {
  size(600, 600);
  kong = loadImage("KONG.png");
  frog = loadImage("frog.png");
  princess = loadImage("Princess.jpg");
  ladder = loadImage("ladder.png");
  frameRate(25);

 
}





void draw() {
  background(0);
  image(kong, 40, 40, 70, 70);
  image(princess, 90, 55, 30, 40);
  fill(#D61128);
  image(ladder,580,555,20,80);//ladders VVV
  image(ladder,15,475,20,80);
  image(ladder,580,395,20,80);
  image(ladder,15,315,20,80);
  image(ladder,580,235,20,80);
  image(ladder,15,155,20,80);// ladders ^^^
  
  rect(0,590,600,10);//platforms VVV
  rect(0,510,600,10);
  rect(0,430,600,10);
  rect(0,350,600,10);
  rect(0,270,600,10);
  rect(0,190,600,10);
  rect(0,110,600,10);
  rect(0,70,600,10);//platforms ^^^

println(mouseX,mouseY);

frogMove();
frogDraw();
barrelMove();
}

void frogDraw(){
  imageMode(CENTER);
  image(frog, fX, fY, 30, 30); 
}

void barrelMove(){
  fill(#672F09);
 
  ellipse(b1X,b1Y,30,30);
  
  if(down == true){
    b1Y = b1Y + 5;
  }
  if(rightB == true){
   b1X = b1X + 5; 
  }
  if(leftB == true){
    b1X = b1X -5;
  }
  if(b1Y == 175){
    down = false;
  }
  if(down == false && b1X < 300){
    rightB = true;
  }
  if(b1X == 585){
   rightB = false; 
  }
  if(rightB == false && b1X > 300){
   down = true; 
  }
 
}

void frogMove(){
  float speed = 5.0;//speed of frog
   if(right == true){//moves right
     fX+= speed;
   }
   if(left == true){//moves left
    fX-= speed; 
   }
   if(fY >= ground){//gravity constantly affecting frog
     fY = ground;
     canJump = true;
   } else {
     fY=fY+5;
   }
   
   if(fX > 600){
    fX = 600; 
   } else if(fX < 0){
    fX = 0; 
   }
   
}

void setMovement (boolean tF){//smoothes out moving / jumping 
  if(keyCode == LEFT){
    left = tF;//changes left to true
  }
  if(keyCode == RIGHT){
   right = tF;//changes right to true
  }
}


void keyPressed(){
 setMovement(true); //setMovement becomes true ^^^^^^
 if(keyCode == UP && canJump == true){
   fY=fY-50;//JUMP
 }
 
 if(keyCode == UP && fX > 560 && fY > 510){//ladder 1 up
  ground = 495; 
 } else if(keyCode == DOWN && fX > 560 && fY > 430){//ladder 1 down
  ground = 575; 
 }
 
  if(keyCode == UP && fX < 35 && fY > 430 && fY < 510){//ladder 2 up
  ground = 415; 
 } else if(keyCode == DOWN && fX < 35 && fY > 350 && fY < 430){//ladder 2 down
  ground = 500; 
 }
 
  if(keyCode == UP && fX > 560 && fY > 350 && fY < 430){//ladder 3 up
  ground = 335; 
 } else if(keyCode == DOWN && fX > 560 && fY > 270 && fY < 350){//ladder 3 down
  ground = 415; 
 }
 
 if(keyCode == UP && fX < 35 && fY > 270 && fY < 350){//ladder 4 up
  ground = 255; 
 } else if(keyCode == DOWN && fX < 35 && fY > 190 && fY < 270){//ladder 4 down
  ground = 340; 
 }
 
  if(keyCode == UP && fX > 560 && fY > 190 && fY < 270){//ladder 5 up
  ground = 175; 
 } else if(keyCode == DOWN && fX > 560 && fY > 110 && fY < 190){//ladder 5 down
  ground = 265; 
 }
 
  if(keyCode == UP && fX < 35 && fY > 110 && fY < 190){//ladder 6 up
  ground = 95; 
 } else if(keyCode == DOWN && fX < 35 && fY > 30 && fY < 110){//ladder 6 down
  ground = 175; 
 }
 
 
 canJump =false;
}

void keyReleased(){
  setMovement(false);//frog stops moving
}
