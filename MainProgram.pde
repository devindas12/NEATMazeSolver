/*
 * Program that handles the creation of the maze.
 * @author Devin Das
 * @author Taylor Siegel
 * @author Lisa Hall
 */

Population pop;
PVector goal  = new PVector(400, 10);


void setup() {
  size(810, 810); //Size of the window
  frameRate(100); //Increase this to make the dots go faster
  pop = new Population(2000); //Create a new population with 2000 members
}


void draw() { 
  background(255); //White background

  //Draw the end of the maze (goal).
  fill(255, 0, 0);
  ellipse(goal.x, goal.y, 10, 10);

  //Draw reward gates for the dots
  //Currently white, undo comment below to see where they are
  fill(#ffffff); //fill(#00ff00);
  rect(480, 640, 10, 160);
  rect(640, 640, 10, 160);
  rect(640, 640, 160, 10);
  rect(640, 480, 160, 10);
  rect(640, 320, 160, 10);
  rect(640, 160, 10, 160);
  rect(480, 320, 160, 10);
  rect(480, 480, 160, 10);
  rect(480, 480, 10, 160);
  rect(320, 480, 160, 10);
  rect(320, 320, 160, 10);
  rect(320, 160, 10, 160);
  rect(160, 320, 160, 10);
  rect(160, 320, 10, 160);
  rect(0, 320, 160, 10);
  rect(0, 160, 160, 10);
  rect(160, 0, 10, 160);
  rect(320, 0, 10, 160);
  rect(320, 0, 160, 10);

  //Draw maze walls
  fill(0, 0, 255);
  rect(0, 800, 330, 10);
  rect(480, 800, 330, 10);
  rect(160, 640, 490, 10);
  rect(0, 480, 170, 10);
  rect(160, 160, 650, 10);
  rect(0, 0, 330, 10);
  rect(480, 0, 330, 10);
  rect(800, 0, 10, 800);
  rect(640, 320, 10, 320);
  rect(480, 160, 10, 330);
  rect(320, 320, 10, 480);
  rect(160, 160, 10, 170);
  rect(0, 0, 10, 800);
  noStroke();


  //if (pop.allDotsDead()) {
  //  //NEAT Genetic Algorithm
  //  pop.calculateFitness();
  //  pop.naturalSelection();
  //  pop.mutateDemBabies();
  //} else {
  //  //If any of the dots are still alive then update and then show them
  //  pop.update();
  //  pop.show();
  //}
}
