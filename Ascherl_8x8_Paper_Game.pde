//4x4 Square Paper Game
//By Pierre-Christof Ascherl

int player;  //variable to detect who's turn it is 
int scoreP1; //The score value for player 1
int scoreP2; //The score value for player 2
int[][] dots = new int[3][3];
int[][] boxes = new int[2][2];

void setup() {

  //setting player value to 1 (player one's turn) and each players score to 0
  player = 1;
  scoreP1 = 0;
  scoreP2 = 0;

  size(1200, 1200);
  //background(255); 

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
    fill(0);
    rect(tC*200 + 90, tR*200 + 110, 20, 180);
  } else if (xR > 20 && yR < 20) {
    //good click in dot row 1 and between column 1 and 2
    println("good click on a horizontal bar");
    fill(0);
    rect(tC*200 + 110, tR*200 + 90, 180, 20);
  } else {
    //bad click
  }
  
}