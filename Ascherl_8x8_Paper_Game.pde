//8x8 Square Paper Game
//By Pierre-Christof Ascherl

int player;  //variable to detect who's turn it is 

void setup() {

  //setting player to 1 (player one's turn)
  player = 1; 

  size(1200, 1200);
  //background(255);

  //Create Player 1 turn dot
  fill(239, 0, 38);
  ellipse(1100, 200, 10, 10);

  //Create player 2 turn dot
  fill(0);
  ellipse(1100, 300, 10, 10);

  //dot one on grid
  //fill(0);
  //ellipse(100, 100, 10, 10);

  //Divisor lines (Vertical)
  line(200, 0, 200, 1200);
  line(400, 0, 400, 1200);
  line(600, 0, 600, 1200);

  //Divisor lines (Horizontal)
  line(0, 200, 1200, 200);
  line(0, 400, 1200, 400);
  line(0, 600, 1200, 600);
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
    fill(0);
    ellipse(1100, 300, 10, 10);

    //make it player 2's turn 
    player = 2;
  } else if (player == 2) {

    //Set player 2's dot blue
    fill(0, 0, 255);
    ellipse(1100, 300, 10, 10);

    //Reset player 1's dot
    fill(0);
    ellipse(1100, 200, 10, 10);

    //make it player 1's turn and turn his dot red
    player = 1;
  }
  //if the x value of the mouse is less than a but more than b and the y value of the mouse is greater than c but less than d draw a circle at point (e, f)

  //Row 1
  if (mouseX < 200&& mouseY < 200) {
    ellipse(100, 100, 10, 10);
  }
  if (mouseX > 200&& mouseX <400&& mouseY < 200) {
    ellipse(300, 100, 10, 10);
  }
  if (mouseX > 400&& mouseX < 600&& mouseY <200) {
    ellipse(500, 100, 10, 10);
  }
  //Row 2
  if (mouseX < 200&& mouseY > 200&& mouseY < 400) {
    ellipse(100, 300, 10, 10);
  }
  if (mouseX > 200&& mouseX < 400&& mouseY > 200&& mouseY < 400) {
    ellipse(300, 300, 10, 10);
  }
  if (mouseX > 400&& mouseX < 600&& mouseY > 200&& mouseY < 400) {
    ellipse(500, 300, 10, 10);
  }
  //Row 3
  if (mouseX < 200&& mouseY > 400&& mouseY < 600) {
    ellipse(100, 500, 10, 10);
  }
  if (mouseX > 200&& mouseX < 400&& mouseY > 400&& mouseY < 600) {
    ellipse(300, 500, 10, 10);
  }
  if (mouseX > 400&& mouseX < 600&& mouseY > 400&& mouseY < 600) {
    ellipse(500, 500, 10, 10);
  }
}