class Brain {
  PVector[] directions; //Series of vectors which get the dot to the goal (hopefully)
  int step = 0;


  Brain(int size) {
    directions = new PVector[size];
    randomize();
  }

  //--------------------------------------------------------------------------------------------------------------------------------
  //Sets all the vectors in directions array to a random vector with length 1
  void randomize() {
    for (int i = 0; i< directions.length; i++) {
      float randomAngle = random(2*PI);
      directions[i] = PVector.fromAngle(randomAngle);
    }
  }

  //--------------------------------------------------------------------------------------------------------------------------------
  //Returns a perfect copy of this brain object
  Brain clone() {
    Brain clone = new Brain(directions.length);
    for (int i = 0; i < directions.length; i++) {
      clone.directions[i] = directions[i].copy();
    }
    return clone;
  }

  //--------------------------------------------------------------------------------------------------------------------------------
  //Mutates the brain by setting some of the directions to random vectors
  void mutate() {
    float mutationRate = 0.01; //Chance that any vector in directions gets changed
    for (int i =0; i< directions.length; i++) {
      float rand = random(1);
      if (rand < mutationRate) {
        //Set this direction as a random direction 
        float randomAngle = random(2*PI);
        directions[i] = PVector.fromAngle(randomAngle);
      }
    }
  }
}
