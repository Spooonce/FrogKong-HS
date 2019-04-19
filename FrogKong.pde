
boolean start = false;
PFont title;
PImage kong, 
  frog, 
  princess, 
  ladder;
float fX = 15.00, //frogs X
  fY = 575.00, //frogs y
  floating = 18, 
  climbing = 18;
boolean jump = true, 
  left = false, //frog movement variables
  right = false, 
  canJump = true, 
  jumping = false, 
  down = true, //variable controls for barrels VVVVVV
  leftB = false, 
  rightB = false, 
  down2, 
  leftB2, 
  rightB2, 
  down3, 
  leftB3, 
  rightB3, 
  down4, 
  leftB4, 
  rightB4, 
  down5, 
  leftB5, 
  rightB5, 
  down6, 
  leftB6, 
  rightB6, //variable controls for barrels ^^^^^^
  canClimb = true, 
  death = false,
  winner = false;

int ground = 575, //y axis of wherever the frog is walking
  rightLadderX = 580, 
  leftLadderX = 15, 
  b1X = 20, //barrel 1,2,3,4, etc...
  b1Y = 55, 
  b2X = 585, 
  b2Y = 175, 
  b3X = 15, 
  b3Y = 255, 
  b4X = 585, 
  b4Y = 365, 
  b5X = 15, 
  b5Y = 445, 
  b6X = 585, 
  b6Y = 535;



//--------------------------------------------------------------------\\

import processing.sound.*;
SoundFile file;

void setup() {
  title = loadFont("BerlinSansFB-Bold-48.vlw");
  kong = loadImage("KONG.png");
  frog = loadImage("frog.png");
  princess = loadImage("Princess.jpg");
  ladder = loadImage("ladder.png");
  frameRate(30);
  

}

//--------------------------------------------------------------------\\

public void settings() {
  size(600, 600);
}

//--------------------------------------------------------------------\\

void draw() {
  background(0);
  image(kong, 560, 80,70, 70);
  image(princess, 500, 95, 30, 40);
  fill(#D61128);

  image(ladder, rightLadderX, 555, 20, 80);//ladders VVV
  image(ladder, leftLadderX, 475, 20, 80);
  image(ladder, rightLadderX, 395, 20, 80);
  image(ladder, leftLadderX, 315, 20, 80);
  image(ladder, rightLadderX, 235, 20, 80);
  image(ladder, leftLadderX, 155, 20, 80);// ladders ^^^

  rect(0, 590, 600, 10);//platforms VVV
  rect(0, 510, 600, 10);
  rect(0, 430, 600, 10);
  rect(0, 350, 600, 10);
  rect(0, 270, 600, 10);
  rect(0, 190, 600, 10);
  rect(0, 110, 600, 10);//platforms ^^^

  println(mouseX, mouseY);

  if (dist(fX, fY, b1X, b1Y) < 30) {//hits barrel vvv
    fX = 15;
    ground = 575;
    canClimb = false;
    death = true;
  } else if (dist(fX, fY, b2X, b2Y) < 30) {
    fX = 15;
    ground = 575;
    canClimb = false;
    death = true;
  } else if (dist(fX, fY, b3X, b3Y) < 30) {
    fX = 15;
    ground = 575;
    canClimb = false;
    death = true;
  } else if (dist(fX, fY, b4X, b4Y) < 30) {
    fX = 15;
    ground = 575;
    canClimb = false;
    death = true;
  } else if (dist(fX, fY, b5X, b5Y) < 30) {
    fX = 15;
    ground = 575;
    canClimb = false;
    death = true;
  } else if (dist(fX, fY, b6X, b6Y) < 30) {//hits barrel ^^^
    fX = 15;
    ground = 575;
    canClimb = false;
    death = true;
  }
  if (fY == 575) {//prevents frog from climbing ladders after they are hit by a barrel
    canClimb = true;
  } else if (canClimb == false) {
    canJump = false;
  }
  
 if(fX > 490 && fY < 110){
  winner = true; 
 }



  frogMove();
  frogDraw();
  barrelMove();
}

//--------------------------------------------------------------------\\

void frogDraw() {
  imageMode(CENTER);
  image(frog, fX, fY, 30, 30);
}

//--------------------------------------------------------------------\\

void frogMove() {
  float speed = 5.0;//speed of frog
  if (right == true && death == false) {//moves right
    fX+= speed;
  }

  if (fY == 575) {
    death = false;
  }
  if (left == true  && death == false) {//moves left
    fX-= speed;
  }
  if (fY >= ground) {//gravity constantly affecting frog
    fY = ground;
    canJump = true;
  } else {
    fY=fY+5;
  }
  if (jumping == true) {//frog jumps
    fY = fY - floating;
    floating = floating - 2.5;
    canJump = false;
  }
  if (floating < 0) {//resets frogs jump
    floating = 18;
    jumping = false;
  }
  if (fX > 560 && fY > 570) {//prevents the frog from jumping after climbing up a ladder vvv
    canJump = false;
  } else if (fX < 40 && fY > 470 && fY < 570) {
    canJump = false;
  } else if (fX > 560 && fY > 390 && fY < 470) {
    canJump = false;
  } else if (fX < 40 && fY > 315 && fY < 390) {
    canJump = false;
  } else if (fX > 560 && fY > 235 && fY < 315) {
    canJump = false;
  } else if (fX < 40 && fY > 150 && fY < 235) {
    canJump = false;
  } else if (jumping == true) {
    canJump = false;//prevents frog from jumping after climbing up a ladder ^^^
  }
  if (fX > 600) {//borders
    fX = 600;
  } else if (fX < 0) {//borders
    fX = 0;
  }
}

//--------------------------------------------------------------------\\

void setMovement (boolean tF) {//smoothes out moving / jumping
  if (keyCode == LEFT) {
    left = tF;//changes left to true
  }
  if (keyCode == RIGHT) {
    right = tF;//changes right to true
  }
}

//--------------------------------------------------------------------\\

void keyPressed() {
  setMovement(true); //setMovement becomes true ^^^^^^
  if (keyCode == UP && canJump == true && canClimb == true) {
    fY=fY-5;//JUMP
    jumping = true;
  }

  if (canClimb == true && keyCode == UP && fX > 560 && fY > 510) {//ladder 1 up
    ground = 500;
  } else if (canClimb == true && keyCode == DOWN && fX > 560 && fY > 430) {//ladder 1 down
    ground = 575;
  }
  if (canClimb == true && keyCode == UP && fX < 35 && fY > 430 && fY < 510) {//ladder 2 up
    ground = 415;
  } else if (canClimb == true && keyCode == DOWN && fX < 35 && fY > 350 && fY < 430) {//ladder 2 down
    ground = 500;
  }
  if (canClimb == true && keyCode == UP && fX > 560 && fY > 350 && fY < 430) {//ladder 3 up
    ground = 335;
  } else if (canClimb == true && keyCode == DOWN && fX > 560 && fY > 270 && fY < 350) {//ladder 3 down
    ground = 415;
  }
  if (canClimb == true && keyCode == UP && fX < 35 && fY > 270 && fY < 350) {//ladder 4 up
    ground = 255;
  } else if (canClimb == true && keyCode == DOWN && fX < 35 && fY > 190 && fY < 270) {//ladder 4 down
    ground = 340;
  }
  if (canClimb == true && keyCode == UP && fX > 560 && fY > 190 && fY < 270) {//ladder 5 up
    ground = 175;
  } else if (canClimb == true && keyCode == DOWN && fX > 560 && fY > 110 && fY < 190) {//ladder 5 down
    ground = 265;
  }
  if (canClimb == true && keyCode == UP && fX < 35 && fY > 110 && fY < 190) {//ladder 6 up
    ground = 95;
  } else if (canClimb == true && keyCode == DOWN && fX < 35 && fY > 30 && fY < 110) {//ladder 6 down
    ground = 175;
  }
  canJump =false;
}

//--------------------------------------------------------------------\\

void keyReleased() {
  setMovement(false);//frog stops moving
}

//--------------------------------------------------------------------\\

void timer() {
  float timer;
  if (death==true) {
    timer=millis();
    if (millis()-5000>=timer);
    death = false;
  }
}
