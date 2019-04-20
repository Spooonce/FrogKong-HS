void barrelMove() {
  if (start == true) {
    fill(#672F09);

    ellipse(b1X, b1Y, 30, 30);

    if (down == true) {//down
      b1Y = b1Y + 5;
    }
    if (rightB == true) {//right
      b1X = b1X + 5;
    }
    if (leftB == true) {//left
      b1X = b1X -5;
    }
    if (b1Y == 175) {//down then right
      down = false;
      rightB = true;
    }
    if (b1X == 585) {//down
      rightB = false; 
      down = true;
    }
    if (b1Y == 255) {//left
      down = false; 
      leftB = true;
    }
    if (b1X == 15) {//down
      leftB = false; 
      down = true;
    }
    if (b1Y == 335) {//right
      down = false;
      rightB = true;
    }
    if (b1X == 585 && b1Y == 335) {//down
      rightB = false;
      down = true;
    }
    if (b1Y == 415) {//left
      down = false;
      leftB = true;
    } 
    if (b1X == 15 && b1Y == 415) {//down
      leftB = false;
      down = true;
    }
    if (b1Y == 495) {//right
      down = false; 
      rightB = true;
    }
    if (b1X == 585 && b1Y == 495) {//down
      rightB = false; 
      down = true;
    }
    if (rightB == false && b1Y == 575) {//left
      down = false;
      leftB = true;
    }
    if (b1X < 0) {
      b1X = 20;
      b1Y = 55;
      leftB = false;
      down = true;
    }




    ellipse(b2X, b2Y, 30, 30);

    if (down2 == true) {//down2
      b2Y = b2Y + 5;
    }
    if (rightB2 == true) {//right
      b2X = b2X + 5;
    }
    if (leftB2 == true) {//left
      b2X = b2X -5;
    }
    if (b2Y == 175) {//down2 then right
      down2 = false;
      rightB2 = true;
    }
    if (b2X == 585) {//down2
      rightB2 = false; 
      down2 = true;
    }
    if (b2Y == 255) {//left
      down2 = false; 
      leftB2 = true;
    }
    if (b2X == 15) {//down2
      leftB2 = false; 
      down2 = true;
    }
    if (b2Y == 335) {//right
      down2 = false;
      rightB2 = true;
    }
    if (b2X == 585 && b2Y == 335) {//down2
      rightB2 = false;
      down2 = true;
    }
    if (b2Y == 415) {//left
      down2 = false;
      leftB2 = true;
    } 
    if (b2X == 15 && b2Y == 415) {//down2
      leftB2 = false;
      down2 = true;
    }
    if (b2Y == 495) {//right
      down2 = false; 
      rightB2 = true;
    }
    if (b2X == 585 && b2Y == 495) {//down2
      rightB2 = false; 
      down2 = true;
    }
    if (rightB2 == false && b2Y == 575) {//left
      down2 = false;
      leftB2 = true;
    }
    if (b2X < 0) {
      b2X = 20;
      b2Y = 55;
      leftB2 = false;
      down2 = true;
    }




    ellipse(b3X, b3Y, 30, 30);

    if (down3 == true) {//down3
      b3Y = b3Y + 5;
    }
    if (rightB3 == true) {//right
      b3X = b3X + 5;
    }
    if (leftB3 == true) {//left
      b3X = b3X -5;
    }
    if (b3Y == 175) {//down3 then right
      down3 = false;
      rightB3 = true;
    }
    if (b3X == 585) {//down3
      rightB3 = false; 
      down3 = true;
    }
    if (b3Y == 255) {//left
      down3 = false; 
      leftB3 = true;
    }
    if (b3X == 15) {//down3
      leftB3 = false; 
      down3 = true;
    }
    if (b3Y == 335) {//right
      down3 = false;
      rightB3 = true;
    }
    if (b3X == 585 && b3Y == 335) {//down3
      rightB3 = false;
      down3 = true;
    }
    if (b3Y == 415) {//left
      down3 = false;
      leftB3 = true;
    } 
    if (b3X == 15 && b3Y == 415) {//down3
      leftB3 = false;
      down3 = true;
    }
    if (b3Y == 495) {//right
      down3 = false; 
      rightB3 = true;
    }
    if (b3X == 585 && b3Y == 495) {//down3
      rightB3 = false; 
      down3 = true;
    }
    if (rightB3 == false && b3Y == 575) {//left
      down3 = false;
      leftB3 = true;
    }
    if (b3X < 0) {
      b3X = 20;
      b3Y = 55;
      leftB3 = false;
      down3 = true;
    }





    ellipse(b4X, b4Y, 30, 30);

    if (down4 == true) {//down4
      b4Y = b4Y + 5;
    }
    if (rightB4 == true) {//right
      b4X = b4X + 5;
    }
    if (leftB4 == true) {//left
      b4X = b4X -5;
    }
    if (b4Y == 175) {//down4 then right
      down4 = false;
      rightB4 = true;
    }
    if (b4X == 585) {//down4
      rightB4 = false; 
      down4 = true;
    }
    if (b4Y == 255) {//left
      down4 = false; 
      leftB4 = true;
    }
    if (b4X == 15) {//down4
      leftB4 = false; 
      down4 = true;
    }
    if (b4Y == 335) {//right
      down4 = false;
      rightB4 = true;
    }
    if (b4X == 585 && b4Y == 335) {//down4
      rightB4 = false;
      down4 = true;
    }
    if (b4Y == 415) {//left
      down4 = false;
      leftB4 = true;
    } 
    if (b4X == 15 && b4Y == 415) {//down4
      leftB4 = false;
      down4 = true;
    }
    if (b4Y == 495) {//right
      down4 = false; 
      rightB4 = true;
    }
    if (b4X == 585 && b4Y == 495) {//down4
      rightB4 = false; 
      down4 = true;
    }
    if (rightB4 == false && b4Y == 575) {//left
      down4 = false;
      leftB4 = true;
    }
    if (b4X < 0) {
      b4X = 20;
      b4Y = 55;
      leftB4 = false;
      down4 = true;
    }




    ellipse(b5X, b5Y, 30, 30);

    if (down5 == true) {//down5
      b5Y = b5Y + 5;
    }
    if (rightB5 == true) {//right
      b5X = b5X + 5;
    }
    if (leftB5 == true) {//left
      b5X = b5X -5;
    }
    if (b5Y == 175) {//down5 then right
      down5 = false;
      rightB5 = true;
    }
    if (b5X == 585) {//down5
      rightB5 = false; 
      down5 = true;
    }
    if (b5Y == 255) {//left
      down5 = false; 
      leftB5 = true;
    }
    if (b5X == 15) {//down5
      leftB5 = false; 
      down5 = true;
    }
    if (b5Y == 335) {//right
      down5 = false;
      rightB5 = true;
    }
    if (b5X == 585 && b5Y == 335) {//down5
      rightB5 = false;
      down5 = true;
    }
    if (b5Y == 415) {//left
      down5 = false;
      leftB5 = true;
    } 
    if (b5X == 15 && b5Y == 415) {//down5
      leftB5 = false;
      down5 = true;
    }
    if (b5Y == 495) {//right
      down5 = false; 
      rightB5 = true;
    }
    if (b5X == 585 && b5Y == 495) {//down5
      rightB5 = false; 
      down5 = true;
    }
    if (rightB5 == false && b5Y == 575) {//left
      down5 = false;
      leftB5 = true;
    }
    if (b5X < 0) {
      b5X = 20;
      b5Y = 55;
      leftB5 = false;
      down5 = true;
    }





    ellipse(b6X, b6Y, 30, 30);

    if (down6 == true) {//down6
      b6Y = b6Y + 5;
    }
    if (rightB6 == true) {//right
      b6X = b6X + 5;
    }
    if (leftB6 == true) {//left
      b6X = b6X -5;
    }
    if (b6Y == 175) {//down6 then right
      down6 = false;
      rightB6 = true;
    }
    if (b6X == 585) {//down6
      rightB6 = false; 
      down6 = true;
    }
    if (b6Y == 255) {//left
      down6 = false; 
      leftB6 = true;
    }
    if (b6X == 15) {//down6
      leftB6 = false; 
      down6 = true;
    }
    if (b6Y == 335) {//right
      down6 = false;
      rightB6 = true;
    }
    if (b6X == 585 && b6Y == 335) {//down6
      rightB6 = false;
      down6 = true;
    }
    if (b6Y == 415) {//left
      down6 = false;
      leftB6 = true;
    } 
    if (b6X == 15 && b6Y == 415) {//down6
      leftB6 = false;
      down6 = true;
    }
    if (b6Y == 495) {//right
      down6 = false; 
      rightB6 = true;
    }
    if (b6X == 585 && b6Y == 495) {//down6
      rightB6 = false; 
      down6 = true;
    }
    if (rightB6 == false && b6Y == 575) {//left
      down6 = false;
      leftB6 = true;
    }
    if (b6X < 0) {
      b6X = 20;
      b6Y = 55;
      leftB6 = false;
      down6 = true;
    }
  }

  //--------------------------------------------------------------------\\


  if (keyPressed) {//starts game
    if (key == ' ') {
      start = true;
      soundtrack.play();
    }
  }
  if (winner == true) {//frog gets to princess
    fill(#1AEA00);
    textSize(50);
    text("You Win", width/2, height/2);
    textSize(25);
    text("Press R to restart", width/2, 500);
    wintrack.play();
    soundtrack.pause();
  } else if (start == false) {//title screen
    fill(0);
    rect(0, 0, 600, 600);
    textFont(title);
    textSize(50);
    fill(#E8003A);
    textAlign(CENTER, CENTER);
    text("FrogKong", width/2, height/2);
    textSize(25);
    text("Press SPACE to begin", width/2, 500);
  }
}
