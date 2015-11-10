//8x8 Square Paper Game
//By Pierre-Christof Ascherl

float player;

void setup() {

  player = 1; 

  size(1200, 1200);
  background(255);

  fill(0);
  ellipse(100, 100, 10, 10);
}

void mouseClicked() {

  if (player = 1)
  { 

    fill(100);
    ellipse(300, 400, 10, 10);

    fill(255);
    noStroke();
    rect(650, 200, 50, 50);

    player = 2;
  }

  if (player = 2) {

    fill(200);
    ellipse(700, 400, 10, 10);

    fill(255);
    noStroke();
    rect(250, 350, 50, 50);
  }
}