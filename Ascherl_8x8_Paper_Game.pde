//8x8 Square Paper Game
//By Pierre-Christof Ascherl

int player;  //variable to detect who's turn it is 
float mouseX;  //tracks x position of the mouse
float mouseY;  //tracks y position of the mouse

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
  fill(0);
  ellipse(100, 100, 10, 10);
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
  
  if (mouseX < 200) {
    
    ellipse(100, 300, 10, 10);
  }
}