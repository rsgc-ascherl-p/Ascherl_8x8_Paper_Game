//4x4 Square Paper Game //<>// //<>// //<>//
//By Pierre-Christof Ascherl

int player;  //variable to detect who's turn it is 
int scoreP1; //The score value for player 1
int scoreP2; //The score value for player 2
color CPC;  //Variable for colour
color p1;  //Red colour for player 1
color p2;  //Blue colour for player 2
int[][] dots = new int[5][5];
boolean[][] boxes = new boolean[3][3];

void setup() {

  //setting player value to 1 (player one's turn) and each players score to 0
  player = 1;
  scoreP1 = 0;
  scoreP2 = 0;

  //set up colours
  p1 = color(255, 0, 0);
  p2 = color(0, 0, 255);

  size(1200, 1200);

  //Create Player 1 turn dot
  fill(239, 0, 38);
  ellipse(1100, 200, 10, 10);

  //Create player 2 turn dot
  fill(0);
  ellipse(1100, 300, 10, 10);

  //dots on 4x4 grid
  fill(0);
  ellipse(100, 100, 10, 10);
  ellipse(300, 100, 10, 10);
  ellipse(500, 100, 10, 10);
  ellipse(700, 100, 10, 10);
  ellipse(100, 300, 10, 10);
  ellipse(100, 500, 10, 10);
  ellipse(100, 700, 10, 10);
  ellipse(300, 300, 10, 10);
  ellipse(300, 500, 10, 10);
  ellipse(300, 700, 10, 10);
  ellipse(500, 300, 10, 10);
  ellipse(500, 500, 10, 10);
  ellipse(500, 700, 10, 10);
  ellipse(700, 300, 10, 10);
  ellipse(700, 500, 10, 10);
  ellipse(700, 700, 10, 10);

  //Click guidelines
  fill(170);
  rect(90, 110, 20, 180);
  rect(90, 310, 20, 180);
  rect(110, 490, 180, 20);
  rect(310, 490, 180, 20);
  rect(490, 310, 20, 180);
  rect(490, 110, 20, 180);
  rect(110, 90, 180, 20);
  rect(310, 90, 180, 20);
  rect(290, 110, 20, 180);
  rect(290, 310, 20, 180);
  rect(310, 290, 180, 20);
  rect(110, 290, 180, 20);
  rect(90, 510, 20, 180);
  rect(290, 510, 20, 180);
  rect(490, 510, 20, 180);
  rect(690, 110, 20, 180);
  rect(690, 310, 20, 180);
  rect(690, 510, 20, 180);
  rect(510, 90, 180, 20);
  rect(510, 290, 180, 20);
  rect(510, 490, 180, 20);
  rect(110, 690, 180, 20);
  rect(310, 690, 180, 20);
  rect(510, 690, 180, 20);

  //Text for the scores of both players
  fill(0);
  textSize(20);
  text("Player 1 Points = ", 900, 200);
  text("Player 2 Points = ", 900, 300);

  //Presetting dot values to 0 using arrays
  dots[0][0] = 0;
  dots[1][0] = 0;
  dots[2][0] = 0;
  dots[0][1] = 0;
  dots[0][2] = 0;
  dots[1][1] = 0;
  dots[2][1] = 0;
  dots[1][2] = 0;
  dots[2][2] = 0;
}

void draw() {

  if (player == 1) {
    CPC = p1;
    player = 1;
  } else if (player == 2) {
    CPC = p2 ;
    player = 2;
  }
}

void mouseClicked() {

  //If it is player 1's turn, turn player 2's dot black
  if (player == 1) { 

    //Set player 1's dot red
    fill(239, 0, 38);
    ellipse(1100, 200, 10, 10);

    //Reset player 2 dot
    fill(0, 0, 0);
    ellipse(1100, 300, 10, 10);  

    //make it player 2's turn 
    player = 2;

    //Set player 2's dot blue
    fill(0, 0, 255);
    ellipse(1100, 300, 10, 10);

    //Reset player 1's dot
    fill(0, 0, 0);
    ellipse(1100, 200, 10, 10);
  } else if (player == 2) {

    //Set player 2's dot blue
    fill(0, 0, 255);
    ellipse(1100, 300, 10, 10);

    //Reset player 1's dot
    fill(0, 0, 0);
    ellipse(1100, 200, 10, 10);

    //make it player 1's turn and turn his dot red
    player = 1;

    //Set player 1's dot red
    fill(239, 0, 38);
    ellipse(1100, 200, 10, 10);

    //Reset player 2 dot
    fill(0, 0, 0);
    ellipse(1100, 300, 10, 10);
  }
  // Trace where the player has clicked
  println("Raw mouseX: " + mouseX);
  println("Raw mouseY: " + mouseY);
  int tX = mouseX - 90;
  int tY = mouseY - 90;
  println("Translated mouseX: " + tX);
  println("Translated mouseY: " + tY);

  int xR = tX % 200; //This is the X remainder
  int tC = tX / 200; //Traversed column if 1, 1 dot column and 1 fill column is traversed

  int yR = tY % 200; //This is the Y remainder
  int tR = tY / 200; //Traversed row if 1, 1 dot row and 1 fill column is traversed

  println("xR : " + xR);
  println("tC : " + tC);

  println("yR : " + yR);
  println("tR : " + tR);

  //Check where the last click was a determine if it was a good click or a bad click
  if (xR < 20 && yR > 20) {
    //Good click in dot column 1 between rows 1 and 2 
    println("good click on a vertical bar");
    println("add 1 point value to row " + (tR + 1) + " and column " + tC + " and row " + tR + " and column " + tC + " of dots array"); 

    dots[tR][tC] += 1;  //Dot above the line clicked
    if (dots[tR][tC] > 2) {
      dots[tR][tC] = 2;
    }    

    dots[tR + 1][tC] += 1;  //Dot below the line clicked
    if (dots[tR + 1][tC] > 2) {
      dots[tR + 1][tC] = 2;
    }

    if (dots[tR][tC + 1] > 2) {
      dots[tR][tC + 1] = 2;
    }

    fill(0);
    rect(tC*200 + 90, tR*200 + 110, 20, 180);
    println("filled a vertical bar");

    // Check to see if square has been made
    if (tC < 4 && tC > 0 && dots[tR][tC] == 2 && dots[tR+1][tC] == 2 && dots[tR + 1][tC + 1] == 2 && dots[tR][tC + 1] == 2) {
      //boxes[tR][tC + 1] = true;
      fill(CPC);
      rect(110 + (tC + 1)*200, 110 + tR*200, 180, 180);
    }

    if (tC < 4 && tC > 0 && dots[tR][tC] == 2 && dots[tR + 1][tC] == 2 && dots[tR + 1][tC - 1] == 2 && dots[tR][tC - 1] == 2) {
      fill(CPC);
      rect(110 + (tC - 1)*200, 110 + tR*200, 180, 180);
    }

    if (tC == 0 && dots[tR][tC] == 2 && dots[tR + 1][tC] == 2 && dots[tR + 1][tC + 1] == 2 && dots[tR][tC + 1] == 2) {
      fill(CPC);
      rect(110 + tC*200, 110 + tR*200, 180, 180);
    }

    if (tC == 4 && dots[tR][tC] == 2 && dots[tR + 1][tC] == 2 && dots[tR + 1][tC - 1] == 2 && dots[tR][tC - 1] == 2) {
      fill(CPC);
      rect(110 + (tC + 1)*200, 110 + tR*200, 180, 180);
    }
  } else if (xR > 20 && yR < 20) {
    println("good click on a horizontal bar");
    println("add 1 point value to row " + tR + " and column " + tC + " and row " + tR + " and column " + (tC + 1) + " of dots array"); 

    dots[tR][tC] += 1;  //Dot to the left the line clicked
    if (dots[tR][tC] > 2) {
      dots[tR][tC] = 2;
    }    
    dots[tR][tC + 1] += 1;  //Dot to the right the line clicked
    if (dots[tR][tC + 1] > 2) {
      dots[tR][tC + 1] = 2;
    }

    if (dots[tR + 1][tC] > 2) {
      dots[tR + 1][tC] = 2;
    }

    if (tR < 4 && tR > 0 && dots[tR][tC] == 2 && dots[tR + 1][tC] == 2 && dots[tR + 1][tC + 1] == 2 && dots[tR][tC + 1] == 2) {
      fill(CPC);
      rect(110 + tC*200, 110 + tR*200, 180, 180);
    }

    if (tR < 4 && tR > 0 && dots[tR][tC] == 2 && dots[tR - 1][tC] == 2 && dots[tR - 1][tC + 1] == 2 && dots[tR][tC + 1] == 2) {

      fill(CPC);
      rect(110 + tC*200, 110 + (tR - 1)*200, 180, 180);
    }

    if (tR == 0 && dots[tR][tC] == 2 && dots[tR + 1][tC] == 2 && dots[tR + 1][tC + 1] == 2 && dots[tR][tC + 1] == 2) {
      fill(CPC);
      rect(110 + tC*200, 110 + tR*200, 180, 180);
    }
    if (tR == 4 && dots[tR][tC] == 2 && dots[tR - 1][tC] == 2 && dots[tR - 1][tC + 1] == 2 && dots[tR][tC + 1] == 2) {
      fill(CPC);
      rect(110 + tC*200, 110 + tR*200, 180, 180);
    }
    fill(0);
    rect(tC*200 + 110, tR*200 + 90, 180, 20);
    println("filled a horizontal bar");
  } else {
    println("bad click");
  }
}